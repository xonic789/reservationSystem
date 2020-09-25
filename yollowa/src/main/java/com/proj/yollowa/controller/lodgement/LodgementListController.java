package com.proj.yollowa.controller.lodgement;

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
