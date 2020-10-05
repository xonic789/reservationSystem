package com.proj.yollowa.controller.admin;

import java.sql.SQLException;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.proj.yollowa.model.service.admin.AdminpageService;


@Controller
@RequestMapping("/admin")
public class AdminpageController {

	@Inject
	AdminpageService adminpageService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Model model) {
		
		return "admin/adminpageIndex";
	}

	@RequestMapping(value = "/hostApprovalStandbyList", method = RequestMethod.GET)
	public String hostApprovalList(Model model) throws SQLException {
		model.addAttribute("list", adminpageService.getHostApprovalStandbyList());
		
		return "admin/hostApprovalStandbyList";
	}
	
	@RequestMapping(value = "/hostApproval/{user_number}", method = RequestMethod.GET)
	public String hostApproval(@PathVariable int user_number) throws SQLException {
		adminpageService.updateUserLevelToHost(user_number);
		
		return "redirect:../hostApprovalStandbyList";
	}
	
	@RequestMapping(value = "/postApprovalStandbyList", method = RequestMethod.GET)
	public String postApprovalList(Model model) {
		
		return "admin/postApprovalStandbyList";
	}
}
