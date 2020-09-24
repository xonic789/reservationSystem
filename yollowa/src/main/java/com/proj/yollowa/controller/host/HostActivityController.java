package com.proj.yollowa.controller.host;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/host")
public class HostActivityController {

	@RequestMapping("/")
	public String HostIndex() {
		return "host/hostIndex";
	}
	
	@RequestMapping("/ladd")
	public String AddLodgement() {
		return "host/addLodgement";
	}
}