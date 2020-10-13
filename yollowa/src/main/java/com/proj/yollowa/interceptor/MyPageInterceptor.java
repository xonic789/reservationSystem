package com.proj.yollowa.interceptor;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.login.LoginVo;
import com.proj.yollowa.model.user.UserDao;
import com.proj.yollowa.service.login.UserService;

public class MyPageInterceptor extends HandlerInterceptorAdapter implements SessionNames{
	Logger logger = LoggerFactory.getLogger(this.getClass());
	@Inject
	private UserService loginService;
	@Inject
	SqlSession sqlSession;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		
		HttpSession session = request.getSession();
		UserVo userVo=(UserVo) session.getAttribute(LOGIN);
		UserDao userDao=sqlSession.getMapper(UserDao.class);
		System.out.println("마이페이지 인터셉터 진입");
		
		session.setAttribute(LOGIN, userDao.getUser(userVo.getUser_number()));
		
		return true;
	}
	

}
