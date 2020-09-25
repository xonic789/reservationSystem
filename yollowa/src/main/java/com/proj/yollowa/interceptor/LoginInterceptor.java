package com.proj.yollowa.interceptor;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.login.LoginVo;
import com.proj.yollowa.service.login.UserService;

public class LoginInterceptor extends HandlerInterceptorAdapter implements SessionNames{
	Logger logger = LoggerFactory.getLogger(this.getClass());
	@Inject
	private UserService loginService;
	
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		String user_id = request.getParameter("user_id");
		String user_password = request.getParameter("user_password");
		
		LoginVo loginVo = new LoginVo(user_id,user_password);
		UserVo userVo = loginService.loginUserService(loginVo);
		
		HttpSession session = request.getSession();
		if(userVo != null) {
			//가져왔을때 널이 아니면 세션에 유저 정보 실어줌.
			session.setAttribute(LOGIN, userVo);
			System.out.println(session.getAttribute(LOGIN));
			response.sendRedirect("../");
		}else {
			response.sendRedirect("./");
			//return true;
		}
		
		return false;
	}
	

}
