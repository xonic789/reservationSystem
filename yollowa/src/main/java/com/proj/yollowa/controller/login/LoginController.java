package com.proj.yollowa.controller.login;


import java.sql.SQLException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.service.login.LoginService;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	@Inject
	LoginService loginService;
	
	@RequestMapping(value ="/",method = RequestMethod.GET )
	public String login() {
		
		//return "loginpage";
		return null;
	}
	
	@RequestMapping(value = "/",method = RequestMethod.POST)
	public String login(Model model,@RequestParam("user_id") String user_id,@RequestParam("user_password") String user_password,HttpServletRequest request) {
		try {
			UserVo userVo =loginService.loginUser(model, user_id, user_password);
			
			if(userVo!=null) {
				model.addAttribute("user",userVo);
				return "redirect:../";
			}else {
				model.addAttribute("user",null);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "redirect:./";
	}
}
