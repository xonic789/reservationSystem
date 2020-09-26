package com.proj.yollowa.controller.activity;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/activity/")
public class ActivityListController {

	@RequestMapping("list")
	public String ActivityList() {
		return "activity/activityList";
	}
	
//	@RequestMapping("detail/{name}")
	@RequestMapping("detail")
	public String ActivityDetail() {
		return "activity/activityDetail";
	}
	
	@RequestMapping("test")
	public String ActivityList1() {
		return "activity/test";
	}
	
}
