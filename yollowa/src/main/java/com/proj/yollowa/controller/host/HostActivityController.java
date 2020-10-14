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
import com.proj.yollowa.model.entity.host.ActivityUpdatePageDto;
import com.proj.yollowa.model.entity.host.AddActivityPageDto;
import com.proj.yollowa.model.entity.host.AddLodgementPageDto;
import com.proj.yollowa.model.entity.host.LodgementUpdatePageDto;
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
		hostService.selectHostActivityList(model, userVo);
		model.addAttribute("userVo", userVo);
		return "host/hostActivity";
	}
	
	
	// 액티비티 글 등록 페이지
	@Auth
	@RequestMapping(value="/aadd", method=RequestMethod.GET)
	public String addActivityPage(@AuthUser UserVo userVo, Model model) {
		// session에서 companyName get
		String user_companyName = userVo.getUser_activityCompanyName();
		
		// 페이지 상단 유저이름 출력
		model.addAttribute("userName",userVo.getUser_name());
		
		// 문자열로 들어온 user_companyName을 특정기호로 잘라 배열로 저장
		String[] companys = user_companyName.split("&");
		
		// model.addAttribute로 view에서 반복하여 출력하기 위해 ArrayList에 배열 길이만큼 add
		ArrayList<String> companyArray = new ArrayList<String>();;
		for(int i=0; i<companys.length; i++) {
			companyArray.add(companys[i]);
		}
		
		// 위에서 add한 리스트 모델에 실어 보냄
		model.addAttribute("companys", companyArray);
		
		return "host/addActivity";
	}
	
	// 액티비티 글 등록버튼 클릭 시 post 
	@Auth
	@RequestMapping(value="/aadd", method=RequestMethod.POST)
	public String addLadgement(@AuthUser UserVo userVo, AddActivityPageDto bean, HttpServletRequest req) throws SQLException, IllegalStateException, IOException {
		System.out.println("입력받은 액티비티 글 : "+bean);
		
		// Lodgement Insert 액티비티 게시글 정보가 등록 lodgement_img는 제외
		hostService.insertActivity(userVo.getUser_number(), bean);
		
		// 위에서 insert 된 lodgement_number 값을 select (information 테이블에 같이 넣어줘야 하고 titleImg도 파싱해서 넣어줘야 함) 
		int activityNumber = hostService.selectActivityNumber(userVo.getUser_number(), bean);
		System.out.println("액티비티 insert된 글의 번호 select :: "+activityNumber);
//		
//		// 타이틀 이미지들 처리 업로드
		String activity_img = hostService.uploadActivityImg(bean, activityNumber, req);
//		
//		// 위에서 업로드와 동시에 파싱된 lodgement_img update 
		hostService.updateActivityImg(activityNumber, activity_img);
//		
		// information insert 액티비티 글번호와 함께 사장님 한마디, 공지사항, 기본정보, 인원 추가정보, 편의시설 및 서비스, 취소 및 환불규정
		hostService.insertActivityInfo(activityNumber, bean);
		
		return "redirect:/host/activity";
	}
	
	
	// 액티비티 글 수정
	@Auth
	@RequestMapping(value="/activityUpdate/{activity_number}", method=RequestMethod.POST)
	public String updateHostActivity(@AuthUser UserVo userVo, @PathVariable("activity_number") int activity_number, ActivityUpdatePageDto bean, HttpServletRequest req) throws SQLException, IllegalStateException, IOException {
		
		hostService.updateHostActivity(activity_number, bean, req);
		
		return "redirect:/host/activity";
	}
	
	// 액티비티 글 삭제
	@Auth
	@RequestMapping(value="activityDelete/{activity_number}")
	public String deleteHostActivity(@PathVariable("activity_number") int activity_number) {
		// 액티비티 글 삭제
		hostService.deleteHostActivity(activity_number);
		
		// 해당 글에 등록된 액티비티옵션 삭제
		hostService.deleteHostActivityOption(activity_number);
		
		return "redirect:/host/activity";
	}
}