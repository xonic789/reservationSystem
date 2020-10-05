package com.proj.yollowa.controller.admin;

import java.sql.SQLException;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.proj.yollowa.interceptor.Auth;
import com.proj.yollowa.interceptor.Auth.Role;
import com.proj.yollowa.model.service.admin.AdminpageService;


@Controller
@RequestMapping("/admin")
public class AdminpageController {

	@Inject
	AdminpageService adminpageService;
	
	//관리자 페이지 메인 화면 출력
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Model model) {
		
		return "admin/adminpageIndex";
	}
	
	//호스트 권한을 요청한 유저의 목록을 출력
	@RequestMapping(value = "/hostApprovalStandbyList", method = RequestMethod.GET)
	public String hostApprovalList(Model model) throws SQLException {
		model.addAttribute("list", adminpageService.getHostApprovalStandbyList());
		
		return "admin/hostApprovalStandbyList";
	}
	
	//호스트 권한을 부여한다
	@RequestMapping(value = "/hostApproval/{user_number}", method = RequestMethod.GET)
	public String hostApproval(@PathVariable int user_number) throws SQLException {
		adminpageService.updateUserLevelToHost(user_number);
		
		return "redirect:../hostApprovalStandbyList";
	}
	
	//엑티비티 판매 글 중 등록 승인 대기 중인 목록을 표시한다
	@RequestMapping(value = "/activityApprovalStandbyList", method = RequestMethod.GET)
	public String activityApprovalStandbyList(Model model) throws SQLException {
		model.addAttribute("list", adminpageService.getActivityApprovalStandbyList());
		
		return "admin/activityApprovalStandbyList";
	}
	
	//엑티비티 판매 글 중 등록 승인 대기 글 하나를 승인한다
	@RequestMapping(value = "/updateActivityTemp/{activity_number}", method = RequestMethod.GET)
	public String updateActivityTempToApproved(@PathVariable int activity_number) throws SQLException {
		adminpageService.updateActivityTempToApproved(activity_number);
		System.out.println("실행됨");
		return "redirect:../activityApprovalStandbyList";
	}
}
