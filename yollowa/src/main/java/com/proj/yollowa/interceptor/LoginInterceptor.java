package com.proj.yollowa.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.proj.yollowa.model.entity.UserVo;

public class LoginInterceptor extends HandlerInterceptorAdapter implements SessionNames{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		  HttpSession session = request.getSession();
		  
		  if(session.getAttribute(LOGIN)!=null) {
			  //세션의 객체가 널이면 홈 화면으로 돌아감
			  response.sendRedirect("../");
		  }
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		UserVo userVo = (UserVo)request.getAttribute("user");
		//로그인 컨트롤러의 모델에 실린 객체가 널이 아니면 세션에 객체를 싣는다
		if(userVo!=null) {
			HttpSession session = request.getSession();
			session.setAttribute(LOGIN, userVo);
		}
	}

}
