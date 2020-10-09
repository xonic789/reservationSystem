package com.proj.yollowa.controller.lodgement;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.proj.yollowa.model.entity.lodgement.LodgementDetailPageDto;
import com.proj.yollowa.model.service.activity.ActivityService;
import com.proj.yollowa.model.service.lodgement.LodgementService;

@Controller
@RequestMapping("/lodgement/")
public class LodgementDetailController {
	
	@Inject
	LodgementService lodgementService;
	@Inject
	ActivityService activityService;
	
	// 숙박 디테일
	@RequestMapping("detail/{lodgement_number}")
	public String lodgementDetail(@PathVariable("lodgement_number") int number,Model model) throws SQLException {
		List<LodgementDetailPageDto> list =lodgementService.lodgementDetail(number,model);
		System.out.println(list.get(0).getRoomInfo_name());
		System.out.println(list.get(0).getRoomInfo_offPeakPrice());
		
		activityService.reviewList(number, 2, model);
		
		model.addAttribute("startEndDay", list.get(0));
		model.addAttribute("article", number);
		
		return "lodgement/lodgementDetail";
	}
	
	// test
	@ResponseBody
	@RequestMapping("detail/test")
	public String test(HttpServletRequest req) throws SQLException{
		System.out.println(req.getParameter("LReservInfo_payment")); 
		return "";
	}
	
	// 숙박 결제
	@RequestMapping(value = "detail/Inicis/{lodgement_number}",method = RequestMethod.POST)
	public String lodgementInicis(@PathVariable("lodgement_number") int articleNumber,Model model,HttpServletRequest req) throws SQLException {
		return "lodgement/lodgementInicis";
	}
	
	
}





