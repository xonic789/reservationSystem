package com.proj.yollowa.controller.host;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.proj.yollowa.interceptor.Auth;
import com.proj.yollowa.interceptor.AuthUser;
import com.proj.yollowa.model.entity.AddLodgementPageDto;
import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.service.host.HostService;

@Controller
@RequestMapping("/host")
public class HostLodgementController {
	@Inject
	HostService hostService;
	
	@RequestMapping("/ladd/roadAddress")
	public String test() {
		return "host/roadAddress";
	}
	
	@Auth
	@RequestMapping("/")
	public String HostIndex(@AuthUser UserVo userVo, Model model) throws SQLException {
		UserVo bean = hostService.HostDetail(model, userVo.getUser_number());
		return "host/hostIndex";
	}
	
	@Auth
	@RequestMapping(value="/ladd", method=RequestMethod.GET)
	public String laddPage(@AuthUser UserVo userVo, Model model) {
		// session에서 companyName get
		String user_companyName = userVo.getUser_companyName();
		
		// 문자열로 들어온 user_companyName을 특정기호로 잘라 배열로 저장
		String[] companys = user_companyName.split("&");
		
		// model.addAttribute로 view에서 반복하여 출력하기 위해 ArrayList에 배열 길이만큼 add
		ArrayList<String> companyArray = new ArrayList<String>();;
		for(int i=0; i<companys.length; i++) {
			companyArray.add(companys[i]);
		}
		
		// 위에서 add한 리스트 모델에 실어 보냄
		model.addAttribute("companys", companyArray);
		
		return "host/addLodgement";
	}
	
	@Auth
	@RequestMapping(value="/ladd", method=RequestMethod.POST)
	public void addLadgement(@AuthUser UserVo userVo, AddLodgementPageDto bean) throws SQLException {
		System.out.println(bean);
		// Lodgement Insert
		hostService.insertLodgement(userVo.getUser_number(), bean);
		
		// 위에서 insert 된 lodgement_number 값을 select (information 테이블에 같이 넣어줘야 하기 떄문) 
		int lodgementNumber = hostService.selectLodgementNumber(userVo.getUser_number(), bean);
		System.out.println("insert된 글의 번호 select :: "+lodgementNumber);
		
		// information insert
		hostService.insertLodgeInfo(lodgementNumber, bean);
	}
	
	
	@RequestMapping(value="/addRoom", method=RequestMethod.GET)
	public String addRoomPage() {
		
		return "host/addRoom";
	}
}
