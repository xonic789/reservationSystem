package com.proj.yollowa.controller.login;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.proj.yollowa.interceptor.Auth;
import com.proj.yollowa.interceptor.AuthManager;
import com.proj.yollowa.interceptor.Auth.Role;
import com.proj.yollowa.model.entity.ManagerVo;



@Auth(role = Role.MANAGER)
@Controller
public class LogoutController {
	
	
	@RequestMapping(value = "mlogout/",method = RequestMethod.GET)
	public String mlogout(HttpSession session,@AuthManager ManagerVo managerVo) throws IOException {
		if(managerVo!=null) {
			session.invalidate();
			return "redirect:../";
		}
		return null;
	}
	
	
}
