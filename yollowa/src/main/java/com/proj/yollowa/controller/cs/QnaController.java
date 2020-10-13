package com.proj.yollowa.controller.cs;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.proj.yollowa.interceptor.AuthManager;
import com.proj.yollowa.interceptor.AuthUser;
import com.proj.yollowa.model.entity.ManagerVo;
import com.proj.yollowa.model.entity.SearchVo;
import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.cs.QnaReplyVo;
import com.proj.yollowa.model.entity.cs.QnaVo;
import com.proj.yollowa.model.service.cs.QnaReplyService;
import com.proj.yollowa.model.service.cs.QnaService;

@Controller
@RequestMapping("/cs-center/qna")
public class QnaController {
	
	@Inject
	QnaService qnaService;
	
	@Inject
	QnaReplyService qnaReplyService;
	//QnA 게시글 목록
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String noticeList(Model model, 
			@RequestParam(value="page", required=false, defaultValue="1") int page,
			@RequestParam(value="searchType", required=false, defaultValue="") String searchType,
			@RequestParam(value="keyword" ,required=false, defaultValue="") String keyword,
			@AuthUser UserVo userVo
			) throws SQLException {
		SearchVo searchVo = new SearchVo();
		searchVo.setSearchType(searchType);
		searchVo.setKeyword(keyword);
		searchVo.setPage(page);
		searchVo.setTotalCnt(qnaService.countQnaService(searchVo));
		
		model.addAttribute("list", qnaService.getQnaListService(searchVo));
		model.addAttribute("paging", searchVo);
		model.addAttribute("userVo", userVo);
		
		List<Integer> coutReplys = new ArrayList<>();
		for (int i = 0; i < qnaService.getQnaListService(searchVo).size(); i++) {
//			qnaService.getQnaListService(searchVo).get(i);
			System.out.println("==================");
//			qnaReplyService.countReplyService(qnaService.getQnaListService(searchVo).get(i).getQnano());
			int qnano2 = qnaService.getQnaListService(searchVo).get(i).getQnano();
			System.out.print("qnano"+qnano2);
			System.out.print("==");
			System.out.println(qnaReplyService.countReplyService(qnano2));
			System.out.println("==================");
			
			coutReplys.add(qnaReplyService.countReplyService(qnano2));
		}
		model.addAttribute("conutReply", coutReplys);
//		System.out.println(qnaService.getQnaListService(searchVo).size());
		
		return "cs-center/qnaList";
	}
	
	//글 상세 보기
	@RequestMapping(value = "/detail/{qnano}", method = RequestMethod.GET)
	public String getQna(Model model, @PathVariable int qnano, @AuthUser UserVo userVo, @AuthManager ManagerVo managerVo) throws SQLException {
		String writer = "";
		if(userVo != null) {
			writer = userVo.getUser_nickName();
		}
		if(managerVo != null) {
			writer = managerVo.getManager_id();
		}
		
		int isMine = 0;
		if(qnaService.isWriterService(qnano, writer)) {
			isMine = 1;
		}
		
		System.out.println(managerVo);
		boolean canRead = isMine == 1 || managerVo != null;
		boolean isLogin = userVo !=null || managerVo != null;
		model.addAttribute("isLogin", isLogin);
		model.addAttribute("usingName", writer);
		System.out.println("canRead?"+canRead);
		if(qnaService.getQnaVo(qnano).getHidden() == 1 && canRead) {
			System.out.println("잠겨진 글, 본인이나 관리자입니다.");
			model.addAttribute("isMine", isMine);
			qnaService.getQnaService(model, qnano);
			
			model.addAttribute("reply", qnaReplyService.listQnaReplyService(qnano));
			return "cs-center/qnaDetail";
		}else if(qnaService.getQnaVo(qnano).getHidden() == 0) {
			model.addAttribute("isMine", isMine);
			qnaService.getQnaService(model, qnano);
			
			model.addAttribute("reply", qnaReplyService.listQnaReplyService(qnano));
			return "cs-center/qnaDetail";
		}else {
			System.out.println("잠겨진 글입니다. 작성자 혹은 관리자가 아니면 읽을 수 없습니다");
			return "redirect:../";
		}

	}
	//글 삭제하기
	@RequestMapping(value = "/delete/{qnano}", method = RequestMethod.GET)
	public String deleteQna(@PathVariable int qnano, @AuthUser UserVo userVo) throws SQLException {
		String writer="";
		if(userVo != null) {
			writer = userVo.getUser_nickName();
		}
		if(qnaService.deleteQnaService(qnano, writer)) {
			return "redirect:../";
		}else {
			return "redirect:../";
		}
		
	}
	//글 작성 뷰
	@RequestMapping("/write")
	public String write(@AuthUser UserVo userVo, @AuthManager ManagerVo managerVo) {
		if(userVo != null || managerVo != null) {
			return "cs-center/qnaWrite";
		}
		return "redirect:../../login/";
	}
	//글 작성하기
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String writeQna(@ModelAttribute QnaVo bean, @AuthUser UserVo userVo, @AuthManager ManagerVo managerVo) throws SQLException {
		String writer = "";
		if(userVo!=null) {
			writer=userVo.getUser_nickName();
		}else if(managerVo!=null) {
			writer=managerVo.getManager_id();
		}
		qnaService.insertQnaService(bean, writer);
		System.out.println(bean);
		return "redirect:./";
	}
	//글 수정하기 뷰 페이지
	@RequestMapping("/modify/{qnano}")
	public String modifyQna(Model model, @PathVariable int qnano, @AuthUser UserVo userVo) throws SQLException {
		String writer = userVo.getUser_nickName();
		if(qnaService.isWriterService(qnano, writer)) {
			qnaService.getQnaService(model, qnano);
			return "cs-center/qnaModify";
		}else {
			return "redirect:../";
			
		}
		
	}
	//글 수정하기
	@RequestMapping(value = "/modify/{qnano}", method = RequestMethod.POST)
	public ModelAndView updateQna(@PathVariable int qnano, @ModelAttribute QnaVo bean) throws SQLException {
		qnaService.updateQnaService(bean);
		
		return new ModelAndView("redirect:../detail/"+qnano);
	}
	
	//댓글쓰기
	@RequestMapping(value = "/reply/write", method = RequestMethod.POST)
	public String writeQnaReply(@ModelAttribute QnaReplyVo bean, @AuthUser UserVo userVo, @AuthManager ManagerVo managerVo) throws SQLException {
		if(userVo != null) {
			bean.setReplyWriter(userVo.getUser_nickName());
			qnaReplyService.createQnaReplyService(bean);
			System.out.println(bean);
			return "redirect:../detail/"+bean.getQnaNo();
		}else if(managerVo !=null){
			bean.setReplyWriter(managerVo.getManager_id());
			qnaReplyService.createQnaReplyService(bean);
			System.out.println(bean);
			return "redirect:../detail/"+bean.getQnaNo();
		}else {
			return "redirect:../";
		}
	}
	
	//댓글 수정 뷰 페이지(본인이 쓴 댓글만 수정 가능하도록 할 것!!)
	@RequestMapping(value = "/reply/update/repno={replyno},qnano={qnano}", method = RequestMethod.GET)
	public String updateQnaReplyView(Model model, @PathVariable int replyno, @PathVariable int qnano, @AuthUser UserVo userVo, @AuthManager ManagerVo managerVo) throws SQLException {
		String loginName = "";
		if(userVo != null) {
			loginName = userVo.getUser_nickName();
		}
		if(managerVo != null) {
			loginName = managerVo.getManager_id();
		}
		model.addAttribute("loginName", loginName);
		qnaService.getQnaService(model, qnano);
		model.addAttribute("reply", qnaReplyService.listQnaReplyService(qnano));
		model.addAttribute("target", replyno);
		
		return "cs-center/qnaReplyUpdate";
	}
	//댓글 수정하기
	@RequestMapping(value = "/reply/update/repno={replyno},qnano={qnano}", method = RequestMethod.POST)
	public String updateQnaReply(Model model, @PathVariable int replyno, @PathVariable int qnano, @ModelAttribute QnaReplyVo bean) throws SQLException {
		qnaReplyService.updateQnaReplyService(bean);
		return "redirect:../../detail/"+qnano;
	}
	
	//댓글 삭제하기
	@RequestMapping(value = "/reply/delete/repno={replyno},qnano={qnano}", method = RequestMethod.GET)
	public String deleteQnaReply(@PathVariable int replyno, @PathVariable int qnano) throws SQLException {
		qnaReplyService.deleteQnaReplyService(replyno);
		
		return "redirect:../../detail/"+qnano;
	}
}
