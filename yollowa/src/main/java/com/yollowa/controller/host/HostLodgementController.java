package com.yollowa.controller.host;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/host")
public class HostLodgementController {

	@RequestMapping("/ladd")
	public String AddLodgement() {
		return "host/addLodgement";
	}
}
