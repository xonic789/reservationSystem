package com.proj.yollowa.interceptor;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.login.LoginVo;
import com.proj.yollowa.service.login.UserService;

public class LoginInterceptor extends HandlerInterceptorAdapter implements SessionNames{
	@Inject
	private UserService loginService;
	
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String user_id = request.getParameter("user_id");
		String user_password = request.getParameter("user_password");
		
		LoginVo loginVo = new LoginVo(user_id,user_password);
		UserVo userVo = loginService.loginUserService(loginVo);
		
		if(userVo != null) {
			HttpSession session = request.getSession();
			session.setAttribute(LOGIN, userVo);
			System.out.println(session.getAttribute(LOGIN));
			response.sendRedirect("../");
		}else {
			response.sendRedirect("./");
		}
		
		return false;
	}
	

}
