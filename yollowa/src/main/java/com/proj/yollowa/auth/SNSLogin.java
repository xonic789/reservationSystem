package com.proj.yollowa.auth;

import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.ExecutionException;

import org.apache.commons.lang3.StringUtils;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Repository;

import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.model.OAuthRequest;
import com.github.scribejava.core.model.Response;
import com.github.scribejava.core.model.Verb;
import com.github.scribejava.core.oauth.OAuth20Service;
import com.proj.yollowa.model.entity.UserVo;

public class SNSLogin {
	private OAuth20Service oauthService;
	private SnsValue sns;
	
	public SNSLogin() {
	}
	
	public SNSLogin(SnsValue sns) {
		this.oauthService=new ServiceBuilder(sns.getClientId())
				.apiSecret(sns.getClientSecret())
				.callback(sns.getRedirectUrl())
				.scope("profile")
				.build(sns.getApi20Instance());
		this.sns=sns;
	}
	
	public String getNaverAuthURL() {
		return this.oauthService.getAuthorizationUrl();
	}
	
	public UserVo getUserProfile(String code) throws Exception{
		OAuth2AccessToken accessToken = oauthService.getAccessToken(code);
		OAuthRequest request = new OAuthRequest(Verb.GET, this.sns.getProfileUrl());
		
		oauthService.signRequest(accessToken, request);
		
		Response response = oauthService.execute(request);
		return parseJson(response.getBody());
//		return response.getBody();
		 
	}

	private UserVo parseJson(String body) throws JsonProcessingException, IOException {
		System.out.println("=========================================\n"+body);
		UserVo userVo = new UserVo();
		
		ObjectMapper mapper= new ObjectMapper();
		JsonNode rootNode = mapper.readTree(body);
		if(this.sns.isNaver()) {
			JsonNode resNode = rootNode.get("response");
			userVo.setUser_naverId(resNode.get("id").asText());
			userVo.setUser_nickName(resNode.get("nickname").asText());
			userVo.setUser_email(resNode.get("email").asText());
		}
		
		return userVo;
	}
}
