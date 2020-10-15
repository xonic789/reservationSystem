package com.proj.yollowa.controller.activity;

import java.sql.SQLException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.service.activity.ActivityService;

@Controller
@RequestMapping("/activity/")
public class ActivityListController {
	
	@Inject
	ActivityService activityService;
	
//	// 액티비티 디테일페이지
//	@RequestMapping("detail/{activity_number}")
//	public String ActivityDetail(@PathVariable("activity_number") int number,Model model) throws SQLException {
//		
//		activityService.activityDetail(model, number);
//		activityService.activityOption(number, model);
//		activityService.reviewList(number, 1, model);
//		int a=activityService.activityReviewCount(number, 1);
//		System.out.println(a);
//		return "activity/activityDetail";
//	}

	// 액티비티 디테일 날짜필터
	@RequestMapping(value = "./",method = RequestMethod.GET)
	public void ActivityDate(Model model,HttpServletRequest req) throws SQLException {
		System.out.println(req.getAttribute("nal"));
	}
	
	// 액티비티 결제창
	@RequestMapping(value = "detail/Inicis",method = RequestMethod.POST)
	public String ActivityInicis(Model model,HttpServletRequest req) throws SQLException {
		
		
		int ra =Integer.parseInt(req.getParameter("resultAmount"));
		req.setAttribute("ra",ra);
		
		return "activity/activityInicis";
	}

	
	
}















