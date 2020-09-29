package com.proj.yollowa.controller.cs;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/cs-center/faq")
public class FaqController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String faqList() {
		
		return "cs-center/faqList";
	}
}
