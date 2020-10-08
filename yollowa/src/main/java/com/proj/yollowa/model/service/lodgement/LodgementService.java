package com.proj.yollowa.model.service.lodgement;

import java.sql.SQLException;
import java.util.List;

import org.springframework.ui.Model;

import com.proj.yollowa.model.entity.lodgement.LodgementRoomInfoVo;
import com.proj.yollowa.model.entity.lodgement.LodgementVo;

public interface LodgementService {

	// 숙박 리스트
	void lodgementListAll(Model model) throws SQLException;
	// 숙박 리스트 temp=1인 전체 개수
	int lodgementListCnt() throws SQLException;
	
	//숙박 디테일 
	List<LodgementRoomInfoVo> lodgementDetail(int articleNumber, Model model) throws SQLException;
	
	// ajax select Price (lodgement list page)
	int priceSelect(int lodgementNumber);
	
//	// ajax filter (listpage)
//	List<LodgementVo> selectOption(String optionName, Model model);
	
	

}