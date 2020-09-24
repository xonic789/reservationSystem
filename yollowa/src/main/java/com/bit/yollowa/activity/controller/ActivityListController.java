package com.bit.yollowa.activity.controller;

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
//	public String ActivityDetail() {
//		return "activity/activityDetail";
//	}
}
