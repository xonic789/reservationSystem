package com.proj.yollowa.controller.login;


import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.proj.yollowa.interceptor.Auth;
import com.proj.yollowa.interceptor.Auth.Role;
import com.proj.yollowa.interceptor.AuthManager;
import com.proj.yollowa.interceptor.AuthUser;
import com.proj.yollowa.model.entity.ManagerVo;
import com.proj.yollowa.model.entity.UserVo;
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
	public void loginResult() {
	}
	
	@RequestMapping(value = "mlogin/result",method =RequestMethod.POST )
	public void managerLoginResult() {
	}
	//로그아웃!!!
//	@RequestMapping(value = "logout/",method = RequestMethod.GET)
//	public @ResponseBody String logout(HttpSession session,HttpServletRequest request,HttpServletResponse response) throws IOException {
//		if(session!=null) {
//			session.invalidate();
//			response.sendRedirect(request.getContextPath()+"/");
//			return null;
//		}else {
//			return "<script>window.addEventListener('DOMContentLoaded',function(){window.history.back();})</script>";
//		}
//		
//	}
	@Auth
	@RequestMapping(value = "logout/",method = RequestMethod.GET)
	public String logout(HttpSession session,@AuthUser UserVo userVo) throws IOException {
		if(userVo!=null) {
			session.invalidate();
			return "redirect:../";
		}
		
		return null;
	}
	
	
	
}
