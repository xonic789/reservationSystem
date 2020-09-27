package com.proj.yollowa.controller.host;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.mybatis.logging.LoggerFactory;
import org.slf4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

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
	public String addLadgement(@AuthUser UserVo userVo, AddLodgementPageDto bean, MultipartFile[] lodgement_img, HttpServletRequest req) throws SQLException, IllegalStateException, IOException {
		System.out.println("입력받은 숙박 글 : "+bean);
		System.out.println(lodgement_img);
		System.out.println(req.getContextPath());
		
		// 타이틀 이미지들 처리 업로드
		List<String> titleImgNames = new ArrayList<String>();
		for(MultipartFile titleImg : lodgement_img) {
			String origin = System.currentTimeMillis()+"_"+titleImg.getOriginalFilename();
			if(titleImg.getOriginalFilename().isEmpty()) {
				continue;
			}
			File dest = new File("//yollowa//upload//"+origin);
			titleImg.transferTo(dest);
			System.out.println("titleImg :: "+titleImg);
			titleImgNames.add(origin);
			System.out.println("titleImgNames :: "+titleImgNames);
		}
		
		// Lodgement Insert
		hostService.insertLodgement(userVo.getUser_number(), bean);
		
		// 위에서 insert 된 lodgement_number 값을 select (information 테이블에 같이 넣어줘야 하기 떄문) 
		int lodgementNumber = hostService.selectLodgementNumber(userVo.getUser_number(), bean);
		System.out.println("숙박 insert된 글의 번호 select :: "+lodgementNumber);
		
		// information insert
		hostService.insertLodgeInfo(lodgementNumber, bean);
		
		return "host/addRoom";
	}
	
	
	@RequestMapping(value="/addRoom", method=RequestMethod.GET)
	public String addRoomPage() {
		
		return "host/addRoom";
	}
}
