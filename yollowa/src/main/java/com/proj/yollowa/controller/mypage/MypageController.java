package com.proj.yollowa.controller.mypage;
import java.sql.SQLException;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.proj.yollowa.interceptor.Auth;
import com.proj.yollowa.interceptor.Auth.Role;
import com.proj.yollowa.interceptor.AuthUser;
import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.service.mypage.MypageService;
import com.proj.yollowa.service.login.UserService;

@Controller
@RequestMapping("/mypage")
public class MypageController {

	@Inject
	MypageService myPageService;
	
	@Auth
	@RequestMapping(value = "/",method = RequestMethod.GET)
	public String index(@AuthUser UserVo userVo,Model model) throws SQLException {
		System.out.println(userVo);
		UserVo user=myPageService.userDetailService(model,userVo.getUser_number());
		
		if(user==null) {
			return "redirect:../";
		}
		
		return "mypage/mypageIndex";
	}
	
}
