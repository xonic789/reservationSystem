package com.bit.yollowa.lodgement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/lodgement/")
public class LodgementListController {
	
	@RequestMapping("list")
	public String list() {
		return "lodgement/lodgementList";
	}

}
