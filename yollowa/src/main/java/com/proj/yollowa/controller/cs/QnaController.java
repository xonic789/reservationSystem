package com.proj.yollowa.controller.cs;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.sql.SQLException;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.proj.yollowa.model.entity.SearchVo;
import com.proj.yollowa.model.entity.cs.NoticeVo;
import com.proj.yollowa.model.entity.cs.QnaReplyVo;
import com.proj.yollowa.model.entity.cs.QnaVo;
import com.proj.yollowa.model.service.cs.NoticeService;
import com.proj.yollowa.model.service.cs.QnaReplyService;
import com.proj.yollowa.model.service.cs.QnaService;

@Controller
@RequestMapping("/cs-center/qna")
public class QnaController {
	
	@Inject
	QnaService qnaService;
	
	@Inject
	QnaReplyService qnaReplyService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String noticeList(Model model, 
			@RequestParam(value="page", required=false, defaultValue="1") int page,
			@RequestParam(value="searchType", required=false, defaultValue="") String searchType,
			@RequestParam(value="keyword" ,required=false, defaultValue="") String keyword
			) throws SQLException {
		SearchVo searchVo = new SearchVo();
		searchVo.setSearchType(searchType);
		searchVo.setKeyword(keyword);
		searchVo.setPage(page);
		searchVo.setTotalCnt(qnaService.countQnaService(searchVo));
		
		model.addAttribute("list", qnaService.getQnaListService(searchVo));
		model.addAttribute("paging", searchVo);
		
		return "cs-center/qnaList";
	}
	
	
	@RequestMapping(value = "/detail/{qnano}", method = RequestMethod.GET)
	public String getNotice(Model model, @PathVariable int qnano) throws SQLException {
		qnaService.getQnaService(model, qnano);
		
		model.addAttribute("reply", qnaReplyService.listQnaReplyService(qnano));
		return "cs-center/qnaDetail";
	}
	
	@RequestMapping(value = "/delete/{qnano}", method = RequestMethod.GET)
	public String deleteQna(@PathVariable int qnano) throws SQLException {
		qnaService.deleteQnaService(qnano);
		
		return "redirect:../";
	}
	
	@RequestMapping("/write")
	public String write() {
		return "cs-center/qnaWrite";
	}
	
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String writeQna(@ModelAttribute QnaVo bean) throws SQLException {
		qnaService.insertQnaService(bean);
		
		return "redirect:./";
	}
	
	@RequestMapping("/modify/{qnano}")
	public String modifyQna(Model model, @PathVariable int qnano) throws SQLException {
		qnaService.getQnaService(model, qnano);
		
		return "cs-center/qnaModify";
	}
	
	@RequestMapping(value = "/modify/{qnano}", method = RequestMethod.POST)
	public ModelAndView updateQna(@PathVariable int qnano, @ModelAttribute QnaVo bean) throws SQLException {
		qnaService.updateQnaService(bean);
		
		return new ModelAndView("redirect:../detail/"+qnano);
	}
	
	//댓글쓰기
	@RequestMapping(value = "/reply/write", method = RequestMethod.POST)
	public String writeQnaReply(@ModelAttribute QnaReplyVo bean) throws SQLException {
		bean.setReplyWriter("tester");
		qnaReplyService.createQnaReplyService(bean);
		
		return "redirect:../detail/"+bean.getQnaNo();
	}
	
	//댓글 수정 뷰 페이지(본인이 쓴 댓글만 수정 가능하도록 할 것!!)
	@RequestMapping(value = "/reply/update/repno={replyno},qnano={qnano}", method = RequestMethod.GET)
	public String updateQnaReplyView(Model model, @PathVariable int replyno, @PathVariable int qnano) throws SQLException {
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
