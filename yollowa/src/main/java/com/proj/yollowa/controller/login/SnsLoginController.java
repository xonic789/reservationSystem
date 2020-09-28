package com.proj.yollowa.controller.login;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.codehaus.jackson.JsonNode;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.oauth2.GrantType;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.proj.yollowa.auth.SNSLogin;
import com.proj.yollowa.auth.SnsValue;
import com.proj.yollowa.service.login.UserService;
import com.proj.yollowa.util.AccessToken;
import com.proj.yollowa.util.UserInfo;

@Controller
public class SnsLoginController {
	
	@Inject
	UserService userService;
	

	
	
	
//	@RequestMapping(value = "login/",method = RequestMethod.GET)
//	public String login(Model model) {
//		
//		return "login/login";
//	}
}
