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

import com.proj.yollowa.model.entity.SearchVo;
import com.proj.yollowa.model.entity.cs.NoticeVo;
import com.proj.yollowa.model.entity.cs.QnaVo;
import com.proj.yollowa.model.service.cs.NoticeService;
import com.proj.yollowa.model.service.cs.QnaService;

@Controller
@RequestMapping("/cs-center/qna")
public class QnaController {
	
	@Inject
	QnaService qnaService;
	
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
		System.out.println("@@"+searchVo.toString());
		System.out.println("@"+searchVo.serachToString());
		
		model.addAttribute("list", qnaService.getQnaListService(searchVo));
		model.addAttribute("paging", searchVo);
		
		return "cs-center/qnaList";
	}
	
	
	@RequestMapping(value = "/detail/{qnano}", method = RequestMethod.GET)
	public String getNotice(Model model, @PathVariable int qnano) throws SQLException {
		qnaService.getQnaService(model, qnano);
		
		return "cs-center/qnaDetail";
	}
	
	@RequestMapping(value = "/delete/{qnano}", method = RequestMethod.GET)
	public String deleteQna(@PathVariable int qnano) throws SQLException {
		qnaService.deleteQnaService(qnano);
		System.out.println(qnano+", noticia se ha eliminado");
		
		return "redirect:../";
	}
	
	@RequestMapping("/write")
	public String write() {
		return "cs-center/qnaWrite";
	}
	
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String writeQna(@ModelAttribute QnaVo bean) throws SQLException {
		System.out.println("escribir page, enviado por post");
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
}
