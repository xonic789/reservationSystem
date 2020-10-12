package com.proj.yollowa.model.service.lodgement;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.lodgement.InformationVo;
import com.proj.yollowa.model.entity.lodgement.LodgementDetailPageDto;
import com.proj.yollowa.model.entity.lodgement.LodgementRoomInfoVo;
import com.proj.yollowa.model.entity.lodgement.LodgementVo;
import com.proj.yollowa.model.lodgement.LodgementDao;

@Service
public class LodgementServiceImpl implements LodgementService {

	@Inject
	SqlSession sqlSession;
	
	// 숙박 리스트
	@Override
	public List<LodgementVo> lodgementListAll(Model model) throws SQLException {
		LodgementDao dao =sqlSession.getMapper(LodgementDao.class);
		List<LodgementVo> alist= dao.lodgementListAll();
		
		List<LodgementVo> list= dao.lodgementListAll();
		for(int i=0; i<list.size(); i++) {
			int su = list.get(i).getLodgement_img().indexOf("&");
			String imgName = list.get(i).getLodgement_img().substring(0, su);
			list.get(i).setLodgement_img(imgName);
			
		}
		model.addAttribute("listAll",list);
		
		return alist;
	}

	// 숙박 리스트 temp=1인 전체 개수
	@Override
	public int lodgementListCnt() throws SQLException {
		LodgementDao dao=sqlSession.getMapper(LodgementDao.class);
		int cnt =dao.lodgementListCnt();
		return cnt;
	}

	// 숙박 디테일
	@Override
	public List<LodgementDetailPageDto> lodgementDetail(int articleNumber, Model model) throws SQLException {
		LodgementDao dao=sqlSession.getMapper(LodgementDao.class);
		List<LodgementDetailPageDto> list = dao.lodgementDetail(articleNumber);
		
//		for(int i=0; i<list.size(); i++) {
//			int su = list.get(i).getRoomInfo_img().indexOf("&");
//			String imgName = list.get(i).getRoomInfo_img().substring(0, su);
//			list.get(i).setRoomInfo_img(imgName);
//		}
		model.addAttribute("detailList",list);
		return list;
	}

	@Override
	public void lodgementImgSelect(int number, Model model) {
		LodgementDao dao = sqlSession.getMapper(LodgementDao.class);
		String titleImg = dao.lodgementImgSelect(number);
		model.addAttribute("listImg", titleImg);
	}
	
	// ajax select Price (lodgement list page)
	@Override
	public int priceSelect(int lodgementNumber) {
		LodgementDao dao = sqlSession.getMapper(LodgementDao.class);
		List<LodgementRoomInfoVo> list = dao.priceSelect(lodgementNumber);
//		System.out.println("service return list :: "+list);
		
		int price = list.get(0).getRoomInfo_offPeakPrice();
//		System.out.println(lodgementNumber+"의 방 가격"+price);
		
		return price;
	}
	
	
	// lodgement list page search
	@Override
	public void lodgementSearch(String search, Model model) {
		LodgementDao dao = sqlSession.getMapper(LodgementDao.class);
		List<LodgementVo> list = dao.lodgementSearch(search);
		
		for(int i=0; i<list.size(); i++) {
			int su = list.get(i).getLodgement_img().indexOf("&");
			String imgName = list.get(i).getLodgement_img().substring(0, su);
			list.get(i).setLodgement_img(imgName);
		}
		
		model.addAttribute("listAll", list);
	}

	
	// 숙박 디테일 기본정보
	@Override
	public List<InformationVo> lodgementInfo(int number, int type,Model model) throws SQLException {
		LodgementDao dao= sqlSession.getMapper(LodgementDao.class);
		List<InformationVo> list= dao.lodgementInfo(number,type);
		
		model.addAttribute("infoList",list);
		return list;
	}

	// 숙박 예약 지정된 방 정보
	@Override
	public List<LodgementRoomInfoVo> lodgementReserInfo(int articleNumber, int roomNumber, Model model) throws SQLException{
		LodgementDao dao= sqlSession.getMapper(LodgementDao.class);
		List<LodgementRoomInfoVo> list =dao.lodgementReserInfo(articleNumber, roomNumber);
		model.addAttribute("reserInfo", list);
		
		return list;
	}
	
	// insert 하기 전에 받아온 정보들로 roomInfo에서 날짜 상대적으로 가격을 받아낸다 (시작날짜 기준)
	@Override
	public int roomPaymentSelect(int roomNumber, Date startDate) {
		LodgementDao dao = sqlSession.getMapper(LodgementDao.class);
		
		// 먼저 성수기, 비성수기 날자를 받아온 후 가져온 startDate가 성수기인지 비성수기인지 비교
		Date peakStartDate = dao.roomPeakStartDateSelect(roomNumber);
		Date peakEndDate = dao.roomPeakEndDateSelect(roomNumber);
		System.out.println("성수기 시작 :: "+peakStartDate);
		System.out.println("성수기 종료 :: "+peakEndDate);
		
		// 성수기 시작날짜와 비교해서 시작날짜보다 크면 양수 작으면 음수
		int compare1 = startDate.compareTo(peakStartDate);
		
		// 성수기 종료날짜와 비교해서 종료날짜보다 크면 양수 작으면 음수
		int compare2 = startDate.compareTo(peakEndDate);
		
		// 아래에서 성수기면 해당 방의 성수기가격을, 비성수기면 비성수기 가격을 select
		int payment;
		if(compare1>0 && compare2<0) {
			payment = dao.selectPeakPayment(roomNumber);
			System.out.println("사용자가 체크한 날짜는 성수기, 가격 ::"+payment);
		}else {
			payment = dao.selectOffPeakPayment(roomNumber) ;
			System.out.println("사용자가 체크한 날짜는 비성수기, 가격 ::"+payment);
		}
		
		return payment;
	}
	
	// 숙박 장바구니 ajax insert
	@Override
	public void lodgementCartInsert(int articleNumber, int roomNumber, Date startDate, Date endDate, int payment, UserVo userVo) {
		LodgementDao dao = sqlSession.getMapper(LodgementDao.class);
		dao.lodgementCartInsert(articleNumber, roomNumber, startDate, endDate, payment, userVo);
		
	}

}
