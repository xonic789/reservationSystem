package com.proj.yollowa.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.core.MethodParameter;
import org.springframework.web.bind.support.WebArgumentResolver;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;

import com.proj.yollowa.model.entity.ManagerVo;
import com.proj.yollowa.model.entity.UserVo;

public class AuthUserHandlerMethodArgumentResolver implements HandlerMethodArgumentResolver,SessionNames {

	@Override
	public boolean supportsParameter(MethodParameter parameter) {
		//@ AuthUser , @AuthManager가 붙어 있는지 확인
		AuthUser authUser = parameter.getParameterAnnotation(AuthUser.class);
		
		// 안붙어 있는 경우
		if(authUser==null) {
			return false;
		}
		
		// ManagerVo, UserVo 타입이 아닌 경우
		if(parameter.getParameterType().equals(UserVo.class)==false) {
			return false;
		}
		
		return true;
	}

	@Override
	public Object resolveArgument(MethodParameter parameter, ModelAndViewContainer mavContainer,
			NativeWebRequest webRequest, WebDataBinderFactory binderFactory) throws Exception {
		
		// 파라미터에 @AuthUser가 붙어있는지 타입이 UserVo인지
		if(supportsParameter(parameter)==false) {
			return WebArgumentResolver.UNRESOLVED;
		}
		//@AuthUser가 붙어 있고 타입이 UserVo 인 경우
		HttpServletRequest request = webRequest.getNativeRequest(HttpServletRequest.class);
		HttpSession session = request.getSession();
		if(session==null) {
			return null;
		}
		
		return session.getAttribute(LOGIN);
	}

}
