package com.proj.yollowa.controller.mypage;
import java.sql.SQLException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.proj.yollowa.interceptor.Auth;
import com.proj.yollowa.interceptor.AuthUser;
import com.proj.yollowa.model.entity.ManagerVo;
import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.service.mypage.MypageService;
import com.proj.yollowa.service.login.UserService;

@Controller
@RequestMapping("/mypage")
public class MypageController {

	@Inject
	MypageService myPageService;
	
	@Auth
	@RequestMapping(value = "/{service}",method = RequestMethod.GET)
	public String index(@AuthUser UserVo userVo,Model model,@PathVariable("service") String service) throws SQLException {
		UserVo user=myPageService.userDetailService(model,userVo.getUser_number());
		if(user==null) {
			return "redirect:../";
		}
		myPageService.lReservationInfoService(model, userVo.getUser_number(),service);
		return "mypage/mypageIndex";
	}
	@Auth
	@RequestMapping(value = "/completed/{service}",method = RequestMethod.GET)
	public String used(@AuthUser UserVo userVo,Model model,@PathVariable("service") String service) throws SQLException {
		UserVo user=myPageService.userDetailService(model,userVo.getUser_number());
		if(user==null) {
			return "redirect:../";
		}
		myPageService.lUserCompletedInfoService(model, userVo.getUser_number(),service);
		return "mypage/completed";
	}
	@Auth
	@RequestMapping(value = "/completed/overHistory",method = RequestMethod.GET)
	public String overHistory(@AuthUser UserVo userVo,Model model) throws SQLException {
		UserVo user=myPageService.userDetailService(model,userVo.getUser_number());
		String service=null;
		if(user==null) {
			return "redirect:../";
		}
		myPageService.getActivityOverHistory(model, userVo.getUser_number(),service);
		return "mypage/overHistory";
	}
	@Auth
	@RequestMapping(value = "/cart/{service}",method = RequestMethod.GET)
	public String cart(@AuthUser UserVo userVo,Model model,@PathVariable("service") String service) throws SQLException {
		UserVo user=myPageService.userDetailService(model,userVo.getUser_number());
		if(user==null) {
			return "redirect:../";
		}
		myPageService.lUserCartInfoService(model, userVo.getUser_number(),service);
		return "mypage/cart";
	}
	@Auth
	@RequestMapping(value = "/wishlist/{service}",method =RequestMethod.GET )
	public String wishList(@AuthUser UserVo userVo, Model model,@PathVariable("service") String service) throws SQLException{
		UserVo user=myPageService.userDetailService(model,userVo.getUser_number());
		if(user==null) {
			return "redirect:../";
		}
		myPageService.userWishListService(model, userVo, service);
		
		return "mypage/wishlist";
	}
	@Auth
	@RequestMapping(value = "/userinfo",method =RequestMethod.GET )
	public String userinfo(@AuthUser UserVo userVo, Model model) throws SQLException{
		UserVo user=myPageService.userDetailService(model,userVo.getUser_number());
		if(user==null) {
			return "redirect:../";
		}
		
		return "mypage/userinfo";
	}
	
	
}
