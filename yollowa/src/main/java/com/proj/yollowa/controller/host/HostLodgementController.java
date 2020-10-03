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
import com.proj.yollowa.model.service.host.HostService;

@Controller
@RequestMapping("/host")
public class HostLodgementController {
	@Inject
	HostService hostService;
	
	// 호스트 인덱스 페이지
	@Auth
	@RequestMapping("/")
	public String HostIndex(@AuthUser UserVo userVo, Model model, HttpServletRequest req) throws SQLException {
		
		return "host/hostIndex";
	}
	
	// 호스트 숙박 글 목록 페이지
	@Auth
	@RequestMapping("/lodgement")
	public String HostLodgement(@AuthUser UserVo userVo, Model model, HttpServletRequest req) throws SQLException {
		UserVo userBean = hostService.hostDetail(model, userVo.getUser_number());
		hostService.selectHostLodgementList(model, userBean);
		model.addAttribute("userVo", userBean);
		return "host/hostLodgement";
	}
	
	// 호스트 액티비티 글 목록 페이지
	
	
	
	// 숙박 글 등록 페이지
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
	
	// 숙박 글 등록버튼 클릭 시 post 
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
	
	// 숙박 글 수정완료 버튼 클릭 시 post
	@Auth
	@RequestMapping(value="/lodgeUpdate/{lodgement_number}", method=RequestMethod.POST)
	public String updateHostLodgement(@AuthUser UserVo userVo, @PathVariable("lodgement_number") int lodgement_number, LodgementUpdatePageDto bean, HttpServletRequest req) throws SQLException, IllegalStateException, IOException {
		System.out.println("호스트 등록글 수정 컨트롤러");
		int lodgement_userNumber = userVo.getUser_number();
		System.out.println("호스트 숙박 글 업데이트 유저 넘버 : "+lodgement_userNumber);
		System.out.println("숙박 글 수정 : "+bean);
		
		
		hostService.updateHostLodgement(lodgement_number, bean, req);
		
		return "redirect:/host/";
	}
	
	@Auth
	@RequestMapping(value="/addRoom/{lodgement_number}", method=RequestMethod.GET)
	public String addRoomPage(@PathVariable("lodgement_number") int lodgement_number, @AuthUser UserVo userVo, Model model) throws SQLException {
		
		// host/addRoom -> 유저넘버를 보내 lodgement table에 해당 유저번호로 등록 된 글이 있으면 lodgement_number return
		ArrayList<LodgementVo> matchUserNumber = hostService.hostNumberMatch(userVo.getUser_number());
		if(matchUserNumber!=null) {
			return "host/addRoom";
		}else {
			return "home";
		}
		
	}
}