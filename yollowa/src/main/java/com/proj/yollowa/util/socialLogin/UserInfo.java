package com.proj.yollowa.util.socialLogin;

import java.io.IOException;

import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.HttpClientBuilder;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.ObjectMapper;

import com.proj.yollowa.model.entity.UserVo;

public class UserInfo {
	public static JsonNode getUserInfo(JsonNode accessToken) {
		String RequestUrl=null;
		
		RequestUrl="https://kapi.kakao.com/v2/user/me";
        
        
        final HttpClient client = HttpClientBuilder.create().build();
        final HttpPost post = new HttpPost(RequestUrl);
 
        // add header
        post.addHeader("Authorization", "Bearer " + accessToken);
 
        JsonNode returnNode = null;
 
        try {
            final HttpResponse response = client.execute(post);
            final int responseCode = response.getStatusLine().getStatusCode();
 
            System.out.println("\nSending 'POST' request to URL : " + RequestUrl);
            System.out.println("Response Code : " + responseCode);
 
            // JSON 형태 반환값 처리
            ObjectMapper mapper = new ObjectMapper();
            returnNode = mapper.readTree(response.getEntity().getContent());
           
        } catch (ClientProtocolException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            // clear resources
        }
 
        return returnNode;
    }
	public static UserVo getUserVo(JsonNode userInfo) {
		UserVo userVo = new UserVo();
        userVo.setUser_kakaoId(userInfo.path("id").asText());
        
		JsonNode properties = userInfo.path("properties");
		JsonNode kakao_account = userInfo.path("kakao_account");
		userVo.setUser_nickName(properties.path("nickname").asText());
		userVo.setUser_email(kakao_account.path("email").asText());
		
		return userVo;
		
	}
}
