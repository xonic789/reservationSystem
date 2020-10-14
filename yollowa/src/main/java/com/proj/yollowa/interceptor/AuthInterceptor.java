package com.proj.yollowa.interceptor;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.proj.yollowa.model.entity.ManagerVo;
import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.user.UserDao;

public class AuthInterceptor extends HandlerInterceptorAdapter implements SessionNames{
	
	@Inject
	SqlSession sqlSession;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		/// return이 true이면 컨트롤러로 진행, false이면 여기서 바로 응답
		
		HttpSession session=request.getSession();
		UserVo userVo =(UserVo) session.getAttribute(LOGIN);
		if(userVo==null) {
			
		}else {
			UserDao userDao=sqlSession.getMapper(UserDao.class);
			session.setAttribute(LOGIN,userDao.getUser(userVo.getUser_number()) );
		}
		
		
		
		
		
		//hadler 종류 확인
		//controller의 핸들러메소드가 아니면 preHandle의 return true이므로 그대로 컨트롤러대로 진행
		if(handler instanceof HandlerMethod == false) {
			return true;
		}
		
		//형 변환
		HandlerMethod handlerMethod = (HandlerMethod)handler;
		
		// @Auth 받아오기
		Auth auth = handlerMethod.getMethodAnnotation(Auth.class);
		Auth managerRole = handlerMethod.getMethod().getDeclaringClass().getAnnotation(Auth.class);
		
		// method에 @Auth가 없는 경우, 권한이 필요 없는 경우
		if(auth ==null) {
			return true;
		}
		
		// @Auth가 있는 경우, 세션이 있는지 체크
		session = request.getSession();
		if(session==null) {
			//로그인 화면으로 이동
			response.sendRedirect(request.getContextPath()+"/login/");
			return false;
		}
		
		//세션이 있으면 해당 행위가 로그인을 해야하는지 판단
		UserVo authUser = (UserVo)session.getAttribute(LOGIN);
		if(authUser==null) {
			response.sendRedirect(request.getContextPath()+"/login/");
			return false;
		}
		
		// manager일 경우 @Controller 위에 @Auth(role=Role.MANAGER)가 붙어있을 경우
		if(managerRole!=null) {
			
		String role = managerRole.role().toString();
		ManagerVo authManager = (ManagerVo)session.getAttribute(MLOGIN);
			if(MLOGIN.equals(role)) {
				if(authManager==null) {
					response.sendRedirect(request.getContextPath()+"/mlogin/");
					return false;
				}
			}
		}
	
		return true;
	}
	
	
}
