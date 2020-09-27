package com.proj.yollowa.controller.host;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

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
	public String addLadgement(@AuthUser UserVo userVo, AddLodgementPageDto bean, HttpServletRequest req) throws SQLException, IllegalStateException, IOException {
		System.out.println("입력받은 숙박 글 : "+bean);
		
		// Lodgement Insert 숙박 게시글 정보가 등록 lodgement_img는 제외
		hostService.insertLodgement(userVo.getUser_number(), bean);
		
		// 위에서 insert 된 lodgement_number 값을 select (information 테이블에 같이 넣어줘야 하고 titleImg도 파싱해서 넣어줘야 함) 
		int lodgementNumber = hostService.selectLodgementNumber(userVo.getUser_number(), bean);
		System.out.println("숙박 insert된 글의 번호 select :: "+lodgementNumber);

		// 타이틀 이미지들 처리 업로드
		List<String> titleImgNames = new ArrayList<String>();
		
		// lodgement 테이블에 update 시켜주기위해 이미지 파일 사이에 &로 파싱하기 위해 선언
		String lodgement_img = "";
		
		for(MultipartFile titleImg : bean.getTitleImg()) {
			String origin = lodgementNumber+"_"+titleImg.getOriginalFilename();
			
			// 이미지 파일 사이에 &로 파싱 : (최종 데이터베이스 전달)
			lodgement_img+=origin+"&";
			
			if(titleImg.getOriginalFilename().isEmpty()) {
				continue;
			}
			
			String path = "/upload/lodgement/titleImg/";
			ServletContext context = req.getSession().getServletContext();
			String realPath = context.getRealPath(path);
			
			File dest = new File(realPath+origin);
			System.out.println("저장위치"+dest.getAbsolutePath());
//			저장위치 /Users/moony/Desktop/yollowa/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/yollowa/upload/lodgement/titleImg/1601213584288_bigmeet4.jpg
			
			titleImg.transferTo(dest);
			titleImgNames.add(origin);
		}
		System.out.println("이미지 파일 사이에 &로 파싱 : (최종 데이터베이스 전달)"+lodgement_img);
		
<<<<<<< HEAD
		// 위에서 업로드와 동시에 파싱된 lodgement_img update 
		hostService.updateLodgementImg(lodgementNumber, lodgement_img);
		
		
		// information insert  숙박 글번호와 함께 사장님 한마디, 공지사항, 기본정보, 인원 추가정보, 편의시설 및 서비스, 취소 및 환불규정
		hostService.insertLodgeInfo(lodgementNumber, bean);
		
		return "host/addRoom";
	}
	
	
	@RequestMapping(value="/addRoom", method=RequestMethod.GET)
	public String addRoomPage() {
		
		return "host/addRoom";
	}
}
