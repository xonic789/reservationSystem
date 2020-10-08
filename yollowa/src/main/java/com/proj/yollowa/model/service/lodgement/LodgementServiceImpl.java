package com.proj.yollowa.model.service.lodgement;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.proj.yollowa.model.entity.lodgement.LodgementRoomInfoVo;
import com.proj.yollowa.model.entity.lodgement.LodgementVo;
import com.proj.yollowa.model.lodgement.LodgementDao;

@Service
public class LodgementServiceImpl implements LodgementService {

	@Inject
	SqlSession sqlSession;
	
	// 숙박 리스트
	@Override
	public void lodgementListAll(Model model) throws SQLException {
		LodgementDao dao =sqlSession.getMapper(LodgementDao.class);
		List<LodgementVo> list= dao.lodgementListAll();
		System.out.println(list);
		
		for(int i=0; i<list.size(); i++) {
			int su = list.get(i).getLodgement_img().indexOf("&");
			String imgName = list.get(i).getLodgement_img().substring(0, su);
			list.get(i).setLodgement_img(imgName);
			
		}
		model.addAttribute("listAll",list);
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
	public List<LodgementRoomInfoVo> lodgementDetail(int articleNumber, Model model) throws SQLException {
		LodgementDao dao=sqlSession.getMapper(LodgementDao.class);
		List<LodgementRoomInfoVo> list=dao.lodgementDetail(articleNumber);
		model.addAttribute("roomList", list);
		
		return list;
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
	// ajax filter (listpage)
//	@Override
//	public List<LodgementVo> selectOption(String optionName, Model model) {
//		LodgementDao dao = sqlSession.getMapper(LodgementDao.class);
//		List<LodgementVo> list = null;
//		if(optionName.equals("전체")) {
//			list = dao.selectOptionAll();
//		}else if(optionName.equals("후기순")) {
//			list = dao.selectOptionReviewCount();
//		}else if(optionName.equals("별점순")) {
//			list = dao.selectOptionReviewRate();
//		}else if(optionName.equals("최신순")) {
//			list = dao.selectOptionLodgementNumber();
//		}
//		model.addAttribute("ajaxList", list);
//		
//		return list;
//	}
}
