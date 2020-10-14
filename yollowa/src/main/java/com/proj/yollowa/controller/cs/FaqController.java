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
import com.proj.yollowa.model.entity.SearchVo;
import com.proj.yollowa.model.entity.cs.FaqVo;
import com.proj.yollowa.model.service.cs.FaqService;

@Controller
@RequestMapping("/cs-center/faq")
public class FaqController {
	
	@Inject
	FaqService faqService;
	
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
		searchVo.setTotalCnt(faqService.countFaqService(searchVo));
		if(managerVo!=null) {
			model.addAttribute("isManager", managerVo.getManager_level());
		}
		model.addAttribute("list", faqService.getFaqListService(searchVo));
		model.addAttribute("paging", searchVo);
		
		return "cs-center/faqList";
	}
	
	@RequestMapping(value = "/detail/{faqno}", method = RequestMethod.GET)
	public String getNotice(Model model, @PathVariable int faqno, @AuthManager ManagerVo managerVo) throws SQLException {
		int isWritedManger = 0;
		if(managerVo != null && faqService.isWritedManagerService(faqno, managerVo.getManager_id())) {
			isWritedManger = 1;
		}
		model.addAttribute("isWritedManager", isWritedManger);
		faqService.getFaqService(model, faqno);
		return "cs-center/faqDetail";
	}
	
	@RequestMapping(value = "/delete/{faqno}", method = RequestMethod.GET)
	public String deleteNotice(@PathVariable int faqno, @AuthManager ManagerVo managerVo) throws SQLException {
		if(managerVo != null && faqService.isWritedManagerService(faqno, managerVo.getManager_id())) {
			faqService.deleteFaqService(faqno);
			System.out.println(faqno+", se ha eliminado");
			return "redirect:../";
			
		}
		return "redirect:../";
	}
	
	@RequestMapping("/write")
	public String write(@AuthManager ManagerVo managerVo) {
		if(managerVo != null) {
			return "cs-center/faqWrite";
		}
		return "redirect:../../mlogin/";
	}
	
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String noticeInsert(@ModelAttribute FaqVo bean,@AuthManager ManagerVo managerVo) throws SQLException {
		System.out.println("escribir page, enviado por post");
		bean.setWriter(managerVo.getManager_id());
		faqService.insertFaqService(bean);
		return "redirect:./";
	}
	
	@RequestMapping("/modify/{faqno}")
	public String modify(Model model, @PathVariable int faqno, @AuthManager ManagerVo managerVo) throws SQLException {
		if(managerVo != null && faqService.isWritedManagerService(faqno, managerVo.getManager_id())) {
			faqService.getFaqService(model, faqno);
			return "cs-center/faqModify";
		}
		return "redirect:../";
	}
	
	@RequestMapping(value = "/modify/{faqno}", method = RequestMethod.POST)
	public ModelAndView noticeUpdate(@PathVariable int faqno, @ModelAttribute FaqVo bean) throws SQLException {
		faqService.updateFaqService(bean);
		return new ModelAndView("redirect:../detail/"+faqno);
	}
	
}
