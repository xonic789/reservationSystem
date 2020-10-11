package com.proj.yollowa.model.service.lodgement;

import java.sql.SQLException;
import java.util.List;

import org.springframework.ui.Model;

import com.proj.yollowa.model.entity.lodgement.InformationVo;
import com.proj.yollowa.model.entity.lodgement.LodgementDetailPageDto;
import com.proj.yollowa.model.entity.lodgement.LodgementRoomInfoVo;
import com.proj.yollowa.model.entity.lodgement.LodgementVo;

public interface LodgementService {

	// 숙박 리스트
	List<LodgementVo> lodgementListAll(Model model) throws SQLException;
	// 숙박 리스트 temp=1인 전체 개수
	int lodgementListCnt() throws SQLException;
	
	//숙박 디테일 
	List<LodgementDetailPageDto> lodgementDetail(int articleNumber, Model model) throws SQLException;
	
	// ajax select Price (lodgement list page)
	int priceSelect(int lodgementNumber);
	
	// lodgement list page search
	void lodgementSearch(String search, Model model);
	
	// 숙박 디테일 기본정보
	List<InformationVo> lodgementInfo(int number, int type,Model model) throws SQLException;
	
	// 숙박 예약페이지 지정된 방정보
	List<LodgementRoomInfoVo> lodgementReserInfo(int articleNumber, int roomNumber, Model model) throws SQLException;
	
	

}