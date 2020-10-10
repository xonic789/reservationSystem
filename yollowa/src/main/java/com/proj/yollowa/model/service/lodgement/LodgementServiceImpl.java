package com.proj.yollowa.model.service.lodgement;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

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
}
