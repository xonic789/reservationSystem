package com.proj.yollowa.controller.activity;

import java.sql.SQLException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.proj.yollowa.model.service.activity.ActivityService;
import com.proj.yollowa.model.service.activity.ActivityServiceImpl;

@Controller
@RequestMapping("/activity/")
public class ActivityListController {
	
	@RequestMapping("test")
	public String ActivityList1() {
		return "activity/test";
	}
	
	@Inject
	ActivityService activityService;
	

	@RequestMapping("list")
	public String ActivityList(Model model,HttpServletRequest req) throws SQLException {
		activityService.activitySelectAll(model);
		int count =activityService.activityCount();
		req.setAttribute("count", count);
		return "activity/activityList";
	}
	
	@RequestMapping("detail/{activity_number}")
	public String ActivityDetail(@PathVariable("activity_number") int number,Model model) throws SQLException {
		activityService.activityDetail(model, number);
		activityService.activityOption(number, model);
		return "activity/activityDetail";
	}
	
	
	
	
}















