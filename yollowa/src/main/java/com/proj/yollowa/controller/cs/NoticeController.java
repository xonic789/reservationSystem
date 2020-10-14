package com.proj.yollowa.controller.cs;

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

import com.proj.yollowa.interceptor.AuthManager;
import com.proj.yollowa.model.entity.ManagerVo;
import com.proj.yollowa.model.entity.PagingScaleVo;
import com.proj.yollowa.model.entity.SearchVo;
import com.proj.yollowa.model.entity.cs.NoticeVo;
import com.proj.yollowa.model.service.cs.NoticeService;

@Controller
@RequestMapping("/cs-center/notice")
public class NoticeController {
	
	@Inject
	NoticeService noticeService;
	//공지사항 list
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String noticeList(Model model, 
			@RequestParam(value="page", required=false, defaultValue="1") int page,
			@RequestParam(value="searchType", required=false, defaultValue="") String searchType,
			@RequestParam(value="keyword" ,required=false, defaultValue="") String keyword,
			@AuthManager ManagerVo managerVo
			) throws SQLException {
		SearchVo searchVo = new SearchVo();
		searchVo.setSearchType(searchType);
		searchVo.setKeyword(keyword);
		searchVo.setPage(page);
		searchVo.setTotalCnt(noticeService.countNoticeService(searchVo));
		
		model.addAttribute("managerVo", managerVo);
		model.addAttribute("list", noticeService.getNoticeListService(searchVo));
		model.addAttribute("paging", searchVo);
		
		return "cs-center/noticeList";
	}
	
	//공지사항 상세 뷰
	@RequestMapping(value = "/detail/{noticeno}", method = RequestMethod.GET)
	public String getNotice(Model model, @PathVariable int noticeno, @AuthManager ManagerVo managerVo) throws SQLException {
		int isWritedManger = 0;
		if(managerVo != null && noticeService.isWritedManagerService(noticeno, managerVo.getManager_id())) {
			isWritedManger = 1;
		}
		model.addAttribute("isWritedManager", isWritedManger);
		noticeService.getNoticeService(model, noticeno);
		return "cs-center/noticeDetail";
	}
	
	//공지 글 삭세
	@RequestMapping(value = "/delete/{noticeno}", method = RequestMethod.GET)
	public String deleteNotice(@PathVariable int noticeno, @AuthManager ManagerVo managerVo) throws SQLException {
		if(managerVo != null && noticeService.isWritedManagerService(noticeno, managerVo.getManager_id())) {
			noticeService.deleteNoticeService(noticeno);
			return "redirect:../";
		}
		return "redirect:../";
	}
	
	//공지 글 작성 뷰
	@RequestMapping(value = "/write")
	public String write(Model model,@AuthManager ManagerVo managerVo) {
		model.addAttribute("managerVo", managerVo);
		if(managerVo == null) {
			
			return "redirect:../../mlogin/";
		}
		
		return "cs-center/noticeWrite";
	}
	
	//공지 글 작성 POST
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String noticeInsert(@ModelAttribute NoticeVo bean, @AuthManager ManagerVo managerVo) throws SQLException {
		if(managerVo == null) {
			return "redirect:../../mlogin/";
		}
		bean.setWriter(managerVo.getManager_id());
		noticeService.insertNoticeService(bean);
		return "redirect:./";
	}
	
	//공지 글 수정 뷰 
	@RequestMapping("/modify/{noticeno}")
	public String modify(Model model, @PathVariable int noticeno, @AuthManager ManagerVo managerVo) throws SQLException {
		if(managerVo != null && noticeService.isWritedManagerService(noticeno, managerVo.getManager_id())) {
			noticeService.getNoticeService(model, noticeno);
			return "cs-center/noticeModify";
		}
		return "redirect:../";
	}
	
	//공지 글 수정하기
	@RequestMapping(value = "/modify/{noticeno}", method = RequestMethod.POST)
	public ModelAndView noticeUpdate(@PathVariable int noticeno, @ModelAttribute NoticeVo bean) throws SQLException {
		noticeService.updateNoticeService(bean);
		return new ModelAndView("redirect:../detail/"+noticeno);
	}
	
}
