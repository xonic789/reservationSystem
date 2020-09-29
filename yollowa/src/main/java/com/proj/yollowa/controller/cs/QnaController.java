package com.proj.yollowa.controller.cs;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/cs-center/qna")
public class QnaController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String qnalist() {
		
		return "cs-center/qnaList";
	}
}
