package com.proj.yollowa.controller.login;


import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

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
import com.proj.yollowa.interceptor.Auth;
import com.proj.yollowa.interceptor.AuthUser;
import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.service.login.UserService;
import com.proj.yollowa.util.AccessToken;
import com.proj.yollowa.util.UserInfo;

@Controller
public class LoginController {
	
	@Inject
	UserService userService;
	
	@Inject
	private SnsValue naverSns;
	
	JsonNode accessToken;
	
	@RequestMapping(value = "login/{service}/callback",method = { RequestMethod.GET,RequestMethod.POST})
	public String SnsLoginCallback(@PathVariable String service,Model model,@RequestParam String code) throws Exception {
		System.out.println(service);
		System.out.println(code);
		if(StringUtils.equals("kakao", service)) {
			
			JsonNode jsonToken = AccessToken.getAccessToken(code);
			accessToken=jsonToken.get("access_token");
			JsonNode userInfo = UserInfo.getUserInfo(accessToken);
			System.out.println(userInfo);
			String id= userInfo.path("id").asText();
			System.out.println(id);
			String name=null;
			String email=null;
			
			JsonNode properties = userInfo.path("properties");
			JsonNode kakao_account = userInfo.path("kakao_account");
			
			name=properties.path("nickname").asText();
			email=kakao_account.path("email").asText();
			System.out.println(name+"\t"+"\t"+email);
		}else if(StringUtils.equals("naver", service)){
			SnsValue sns=null;
			sns= naverSns;
			// 1. code를 이용해서 access_token 받기
			SNSLogin snsLogin = new SNSLogin(sns);
			// 2. access_token 이용해서 사용자 profile 정보 가져오기
			UserVo snsUser = snsLogin.getUserProfile(code);
			System.out.println("Profile>> "+snsUser);
		}else {
		}
		
		
		// 3. DB 해당 유저가 존재하는지 체크(googleId,naverId,kakaoId 컬럼추가)
		
		
		// 4. 존재시 강제로그인, 미존재시 가입페이지로
		return "login/loginResult";
	}
	
	
	
	//유저 로그인 페이지 get
	@RequestMapping(value ="login/",method = RequestMethod.GET )
	public String login(Model model) {
		
		SNSLogin snsLogin = new SNSLogin(naverSns);
		model.addAttribute("naver_url", snsLogin.getNaverAuthURL());
		
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
