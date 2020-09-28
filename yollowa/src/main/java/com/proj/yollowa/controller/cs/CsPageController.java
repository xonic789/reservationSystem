package com.proj.yollowa.controller.cs;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/cs-center")
public class CsPageController {
	//고객센터 페이지 표시를 위한 임시 컨트롤러
	
	//우선 고객센터 기본 페이지는 faq로<-차후에 생각, 차후 검색 기능은 post로 추가한다
	@RequestMapping(value = "/faq/", method = RequestMethod.GET)
	public String faqList() {
		
		return "cs-center/faqlist";
	}
	
	@RequestMapping(value = "/notice/", method = RequestMethod.GET)
	public String noticeList() {
		
		return "cs-center/noticelist";
	}
	
	@RequestMapping(value = "/qna/", method = RequestMethod.GET)
	public String index() {
		
		return "cs-center/qnalist";
	}
	
	@RequestMapping(value = "/notice/write", method = RequestMethod.GET)
	public String noticeWrite() {
		
		return "cs-center/noticewrite";
	}
	
}
