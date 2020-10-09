package com.proj.yollowa.controller.cs;

import java.util.logging.Logger;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.proj.yollowa.model.entity.SearchVo;
import com.proj.yollowa.model.entity.cs.PagingScaleVo;
import com.proj.yollowa.model.service.cs.NoticeService;
import com.sun.org.slf4j.internal.LoggerFactory;

@Controller
@RequestMapping("cs-center/noticeList/paging/search")
public class NoticeSearch {

	private final NoticeService noticeService;

	@Inject
	public NoticeSearch(NoticeService noticeService) {
		this.noticeService = noticeService;
	}

	/*
	 * @RequestMapping(value = "/list", method = RequestMethod.GET) public String
	 * list(@ModelAttribute("searchVo") SearchVo searchVo, Model model) throws
	 * Exception {
	 * 
	 * 
	 * PagingScaleVo pagingScale = new PagingScaleVo();
	 * pageMaker.setCriteria(searchCriteria);
	 * pageMaker.setTotalCount(articleService.countArticles(searchCriteria));
	 * 
	 * model.addAttribute("articles", articleService.listCriteria(searchCriteria));
	 * model.addAttribute("pageMaker", pageMaker);
	 * 
	 * return "article/search/list";
	 * 
	 * 
	 * System.out.println("페이징 작업 진행 시작..."); PagingScaleVo pagingScale = new
	 * PagingScaleVo(); pagingScale.setPage(page);
	 * pagingScale.setTotalCnt(noticeService.countNoticeService());
	 * 
	 * System.out.println(pagingScale.toString()); model.addAttribute("list",
	 * noticeService.getNoticeListService(pagingScale));
	 * model.addAttribute("paging", pagingScale);
	 * 
	 * return "cs-center/noticeList";
	 * 
	 * }
	 */

}