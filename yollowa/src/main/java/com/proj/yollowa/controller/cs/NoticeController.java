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
import com.proj.yollowa.model.service.cs.NoticeService;
import com.proj.yollowa.model.service.cs.PagingScale;

@Controller
@RequestMapping("/cs-center/notice")
public class NoticeController {
	
	@Inject
	NoticeService noticeService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String noticeList(Model model, @RequestParam(value="page", required=false, defaultValue="1") int page) throws SQLException {
		System.out.println("페이징 작업 진행 시작...");
		PagingScale pagingScale = new PagingScale();
		pagingScale.setPage(page);
		pagingScale.setTotalCnt(noticeService.countNoticeService());
		
		System.out.println(pagingScale.toString());
		model.addAttribute("list", noticeService.getNoticeListService(pagingScale));
		model.addAttribute("paging", pagingScale);
		
		return "cs-center/noticeList";
	}
	
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
