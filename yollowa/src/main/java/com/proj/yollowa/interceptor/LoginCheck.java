package com.proj.yollowa.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.proj.yollowa.model.entity.UserVo;

public class LoginCheck extends HandlerInterceptorAdapter{

	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session=request.getSession();
		if(session.getAttribute("user")!=null) {
			response.sendRedirect(request.getContextPath()+"/");
			return false;
		}
		if(session.getAttribute("manager")!=null) {
			response.sendRedirect(request.getContextPath()+"/");
			return false;
		}
		
		return true;
	}
}
