package com.proj.yollowa.controller.mypage;

import java.sql.SQLException;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.proj.yollowa.interceptor.Auth;
import com.proj.yollowa.interceptor.AuthUser;
import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.service.mypage.MypageService;
import com.proj.yollowa.model.service.mypage.MypageServiceJK;

@Controller
@RequestMapping("/mypage")
public class MypageControllerJK {

	@Inject
	MypageService myPageService;
	@Inject
	MypageServiceJK mypageServiceJK;
	
	//사업자 권한을 신청할 수 있는 페이지 뷰
	@Auth
	@RequestMapping(value = "/hostRqn",method = RequestMethod.GET)
	public String hostRqn(@AuthUser UserVo userVo,Model model) throws SQLException {
		UserVo user=myPageService.userDetailService(model,userVo.getUser_number());
		if(user==null) {
			return "redirect:../";
		}
		System.out.println(userVo.getUser_level()+"|||"+userVo.getUser_name());
		model.addAttribute("bean", userVo);
		return "mypage/hostRqn";
	}
	//사업자 권한을 신청한다
	@Auth
	@RequestMapping(value = "/hostRqn/applyed",method = RequestMethod.POST)
	public String hostRqnApplyed(@AuthUser UserVo userVo,Model model, @ModelAttribute UserVo paramUserVo) throws SQLException {
		UserVo user=myPageService.userDetailService(model,userVo.getUser_number());
		if(user==null) {
			return "redirect:../";
		}
		mypageServiceJK.updateToStandByHostService(paramUserVo);
		return "redirect:../hostRqn";
	}
	//사용자가 작성한 리뷰를 표시한다
	@Auth
	@RequestMapping(value = "/myreview",method = RequestMethod.GET)
	public String myReview(@AuthUser UserVo userVo,Model model) throws SQLException {
		UserVo user=myPageService.userDetailService(model,userVo.getUser_number());
		if(user==null) {
			return "redirect:../";
		}
		String writer = "김철수";
		System.out.println("---->"+userVo.getUser_name());
//		mypageServiceJK.getLodgementReviewService(writer);
//		mypageServiceJK.getActivityReviewService(writer);
		System.out.println(mypageServiceJK.getLodgementReviewService(writer));
		System.out.println("@---------------------------------------------------@");
		System.out.println(mypageServiceJK.getActivityReviewService(writer));
		return "mypage/myreview";
	}
	
}