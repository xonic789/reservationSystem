package com.proj.yollowa.controller.login;


import java.sql.SQLException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.proj.yollowa.interceptor.Auth;
import com.proj.yollowa.interceptor.AuthUser;
import com.proj.yollowa.model.entity.ManagerVo;
import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.login.LoginVo;
import com.proj.yollowa.model.entity.login.ManagerLoginVo;
import com.proj.yollowa.service.login.UserService;

@Controller
public class LoginController {
	
	@Inject
	UserService userService;
	
	//유저 로그인 페이지 get
	@RequestMapping(value ="login/",method = RequestMethod.GET )
	public String login() {
		return "login/login";
	}
	
	//매니저 로그인 페이지 get
	@RequestMapping(value = "mlogin/",method = RequestMethod.GET)
	public String managerLogin() {
		return "login/managerlogin";
	}
	
	
	@RequestMapping(value = "login/result", method = RequestMethod.POST)
	public void loginResult() throws SQLException {
	}
	
	
	
}
