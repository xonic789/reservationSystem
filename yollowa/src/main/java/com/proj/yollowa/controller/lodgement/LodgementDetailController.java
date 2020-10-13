package com.proj.yollowa.controller.lodgement;

import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.jdbc.SQL;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.proj.yollowa.interceptor.Auth;
import com.proj.yollowa.interceptor.AuthUser;
import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.lodgement.InformationVo;
import com.proj.yollowa.model.entity.lodgement.LodgementDetailPageDto;
import com.proj.yollowa.model.entity.lodgement.LodgementRoomInfoVo;
import com.proj.yollowa.model.service.activity.ActivityService;
import com.proj.yollowa.model.service.lodgement.LodgementService;

@Controller
@RequestMapping("/lodgement/")
public class LodgementDetailController {
	
	@Inject
	LodgementService lodgementService;
	@Inject
	ActivityService activityService;
	
	// 숙박 디테일
	@RequestMapping("detail/{lodgement_number}")
	public String lodgementDetail(@AuthUser UserVo userVo, @PathVariable("lodgement_number") int number,Model model) throws SQLException {
		// 디테일리스트
		List<LodgementDetailPageDto> list =lodgementService.lodgementDetail(number,model);
		
		// 이미지들
		lodgementService.lodgementImgSelect(number,model);
		
		// 기본정보들
		lodgementService.lodgementInfo(number, 2, model);
		
		//리뷰
		activityService.reviewList(number, 2, model);
		
		// 주소 위치
		String pin=list.get(0).getLodgement_location();

		// 숙소 이름
		String name = list.get(0).getLodgement_companyName();
		
		// 해시태그
		String hash = list.get(0).getLodgement_hashTag();
		String hashTag = hash.replaceAll("&", "  ");
		model.addAttribute("hashTag", hashTag);
		
		// 세션 확인 null이 아니면 유저넘버 보내줌 (장바구니, 찜목록 로그인 안돼있을 시 swal 하기 위함) 
		if(userVo==null) {
			// 로그인 안되어 있을 시
			// jsp에서 받을때 null이면 nullpoint때문에 임의적으로 0 을 보내준다.
			model.addAttribute("userNumber", 0);
		}else {
			// 로그인 되어있을 시
			model.addAttribute("userNumber", userVo.getUser_number());
		}
		
		model.addAttribute("pin", pin);
		model.addAttribute("companyName", name);
		model.addAttribute("startEndDay", list.get(0));
		model.addAttribute("article", number);
		
		return "lodgement/lodgementDetail";
	}
	
	// 숙박 결제
	@RequestMapping(value = "detail/Inicis/{lodgement_number}",method = RequestMethod.POST)
	public String lodgementInicis(@PathVariable("lodgement_number") int articleNumber,Model model,HttpServletRequest req) throws SQLException {
		return "lodgement/lodgementInicis";
	}
	
	/////////////////////////// 예약 페이지
	
	//숙박 예약페이지
	@RequestMapping(value =  "detail/reservation/{lodgement_number}" )
	public String lodgementReservation(@PathVariable("lodgement_number") int articleNumber, HttpServletRequest req,Model model) throws SQLException{
		
		// 예약할 숙소정보
		String roomNumber =req.getParameter("roomNumber");
		String sdate =req.getParameter("sdate");
		String edate =req.getParameter("edate");
		List list =new ArrayList();
		list.add(articleNumber);
		list.add(roomNumber);
		list.add(sdate);
		list.add(edate);
		
		model.addAttribute("reservList",list);
		
		// 해당 기본정보
		List<InformationVo> infoList=lodgementService.lodgementInfo(articleNumber, 2, model);
		
		model.addAttribute("infoList", infoList);
		
		
		// 방 정보
		int rn= Integer.parseInt(roomNumber);
		List<LodgementRoomInfoVo> detailList = lodgementService.lodgementReserInfo(articleNumber,rn,model);
		
		model.addAttribute("roomDetail", detailList);
		
		
		return "lodgement/lodgementReservation";
	}
	
	
	
	// 장바구니 ajax controller
	@Auth
	@RequestMapping(value="detail/cartInsert", method=RequestMethod.POST)
	public void lodgementCartInsert(@AuthUser UserVo userVo,HttpServletRequest req){
		
		int articleNumber = Integer.parseInt(req.getParameter("articleNumber"));
		int roomNumber= Integer.parseInt(req.getParameter("roomNumber"));
		System.out.println(articleNumber);
		System.out.println(roomNumber);
		String sdate = req.getParameter("sdate");
		String edate = req.getParameter("edate");
		
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
		
		Date startDate;
		Date endDate;
		try {
			startDate = transFormat.parse(sdate);
			endDate = transFormat.parse(edate);
			System.out.println(startDate);
			System.out.println(endDate);

			// insert 하기 전에 받아온 정보들로 roomInfo에서 날짜 상대적으로 가격을 받아낸다 (시작날짜 기준)
			int payment = lodgementService.roomPaymentSelect(roomNumber, startDate, endDate);
			
			// 위에서 성수기인지 비성수기인지 사용자가 선택한 날짜로 확인 후 반환된 payment를 가지고 insert
			lodgementService.lodgementCartInsert(articleNumber, roomNumber, startDate, endDate, payment, userVo);

		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
	
	// Lodgement 찜목록
	@Auth
	@RequestMapping(value="detail/wishInsert", method=RequestMethod.POST)
	public void lodgementWishInsert(@AuthUser UserVo userVo ,HttpServletRequest req) {
		
		int userNumber = userVo.getUser_number();
		
		System.out.println("찜목록 lodgementNumber :: "+req.getParameter("number"));
		int lodgementNumber = Integer.parseInt(req.getParameter("number"));
		
		lodgementService.lodgementWishUpdate(lodgementNumber, userNumber);
	}
}
