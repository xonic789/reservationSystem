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

import com.proj.yollowa.model.entity.NoticeVo;
import com.proj.yollowa.model.entity.PagingScaleVo;
import com.proj.yollowa.model.entity.SearchVo;
import com.proj.yollowa.model.service.cs.NoticeService;

@Controller
@RequestMapping("/cs-center/notice")
public class NoticeController {
	
	@Inject
	NoticeService noticeService;
	
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
		searchVo.setTotalCnt(noticeService.countNoticeService(searchVo));
		System.out.println("@@"+searchVo.toString());
		System.out.println("@"+searchVo.serachToString());
		
		model.addAttribute("list", noticeService.getNoticeListService(searchVo));
		model.addAttribute("paging", searchVo);
		
		return "cs-center/noticeList";
	}
	
//	@RequestMapping(value = "/?page={page}&searchType={searchType}&keyword={keyword}", method = RequestMethod.GET)
//	public String noticeListSearch(Model model, 
//			@RequestParam(value="page", required=false, defaultValue="1") int page,
//			@RequestParam(value="searchType", required=false, defaultValue="") String searchType,
//			@RequestParam(value="keyword" , required=false, defaultValue="") String keyword
//			) throws SQLException {
//		PagingScaleVo pagingScaleVo = new SearchVo();
//		pagingScaleVo.setPage(page);
//		pagingScaleVo.setTotalCnt(noticeService.countNoticeService());
//		
//		SearchVo searchVo = new SearchVo();
//		searchVo.setSearchType(searchType);
//		searchVo.setKeyword(keyword);
//		searchVo.setPage(page);
//		searchVo.setTotalCnt(noticeService.countNoticeService());
//		System.out.println("paging:"+pagingScaleVo.toString());
//		System.out.println(searchVo.toString());
//		
//		model.addAttribute("list", noticeService.getNoticeListService(searchVo));
//		model.addAttribute("paging", searchVo);
//		
//		return "cs-center/noticeList";
//	}
	
	@RequestMapping(value = "/detail/{noticeno}", method = RequestMethod.GET)
	public String getNotice(Model model, @PathVariable int noticeno) {
		try {
			noticeService.getNoticeService(model, noticeno);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "cs-center/noticeDetail";
	}
	
	@RequestMapping(value = "/delete/{noticeno}", method = RequestMethod.GET)
	public String deleteNotice(@PathVariable int noticeno) {
		try {
			noticeService.deleteNoticeService(noticeno);
			System.out.println(noticeno+", noticia se ha eliminado");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "redirect:../";
	}
	@RequestMapping("/write")
	public String write() {
		return "cs-center/noticeWrite";
	}
	
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String noticeInsert(@ModelAttribute NoticeVo bean) {
		System.out.println("escribir page, enviado por post");
		try {
			noticeService.insertNoticeService(bean);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "redirect:./";
	}
	
	@RequestMapping("/modify/{noticeno}")
	public String modify(Model model, @PathVariable int noticeno) {
		try {
			noticeService.getNoticeService(model, noticeno);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "cs-center/noticeModify";
	}
	
	@RequestMapping(value = "/modify/{noticeno}", method = RequestMethod.POST)
	public ModelAndView noticeUpdate(@PathVariable int noticeno, @ModelAttribute NoticeVo bean) {
		try {
			noticeService.updateNoticeService(bean);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return new ModelAndView("redirect:../detail/"+noticeno);
	}
	
}
