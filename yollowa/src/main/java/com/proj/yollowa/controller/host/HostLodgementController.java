package com.proj.yollowa.controller.host;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.proj.yollowa.interceptor.Auth;
import com.proj.yollowa.interceptor.AuthUser;
import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.host.AddLodgementPageDto;
import com.proj.yollowa.service.host.HostService;

@Controller
@RequestMapping("/host")
public class HostLodgementController {
	@Inject
	HostService hostService;
	
	@Auth
	@RequestMapping("/")
	public String HostIndex(@AuthUser UserVo userVo, Model model, HttpServletRequest req) throws SQLException {
		UserVo bean = hostService.HostDetail(model, userVo.getUser_number());
		hostService.selectHostLodgementList(model, bean.getUser_number());
		hostService.selectRealPath(model ,req);
		model.addAttribute("userVo", bean);
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
	public String addLadgement(@AuthUser UserVo userVo, AddLodgementPageDto bean, HttpServletRequest req) throws SQLException, IllegalStateException, IOException {
		System.out.println("입력받은 숙박 글 : "+bean);
		
		// Lodgement Insert 숙박 게시글 정보가 등록 lodgement_img는 제외
		hostService.insertLodgement(userVo.getUser_number(), bean);
		
		// 위에서 insert 된 lodgement_number 값을 select (information 테이블에 같이 넣어줘야 하고 titleImg도 파싱해서 넣어줘야 함) 
		int lodgementNumber = hostService.selectLodgementNumber(userVo.getUser_number(), bean);
		System.out.println("숙박 insert된 글의 번호 select :: "+lodgementNumber);
		
		// 타이틀 이미지들 처리 업로드
		String lodgement_img = hostService.uploadLodgementImg(bean, lodgementNumber, req);
		
		// 위에서 업로드와 동시에 파싱된 lodgement_img update 
		hostService.updateLodgementImg(lodgementNumber, lodgement_img);
		
		// information insert  숙박 글번호와 함께 사장님 한마디, 공지사항, 기본정보, 인원 추가정보, 편의시설 및 서비스, 취소 및 환불규정
		hostService.insertLodgeInfo(lodgementNumber, bean);
		
		return "host/addRoom";
	}
	
	@Auth
	@RequestMapping(value="/addRoom/{lodgement_number}", method=RequestMethod.GET)
	public String addRoomPage(@PathVariable("lodgement_number") int lodgement_number, @AuthUser UserVo userVo, Model model) throws SQLException {
		UserVo bean = hostService.HostDetail(model, userVo.getUser_number());
		if(bean.getUser_companyNumber()==lodgement_number) {
			
			
			return "host/addRoom";
		}
		return "home";
	}
}