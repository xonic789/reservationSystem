package com.proj.yollowa.controller.host;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.proj.yollowa.interceptor.Auth;
import com.proj.yollowa.interceptor.AuthUser;
import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.service.host.HostActivityService;
import com.proj.yollowa.model.service.host.HostLodgementService;

@Controller
@RequestMapping("/host")
public class HostActivityController {
	
	@Inject
	HostActivityService hostService;
	
	// 호스트 - 내가 작성한 액티비티 글
	@Auth
	@RequestMapping("/activity")
	public String hostActivity(@AuthUser UserVo userVo, Model model) {
		hostService.selectHostLodgementList(model, userVo);
		model.addAttribute("userVo", userVo);
		return "host/hostActivity";
	}
	
	
	// 액티비티 글 등록 페이지
	@Auth
	@RequestMapping(value="aadd", method=RequestMethod.GET)
	public String addActivityPage() {
		
		return "host/addActivity";
	}
}