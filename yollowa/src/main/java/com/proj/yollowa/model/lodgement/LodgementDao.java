package com.proj.yollowa.model.lodgement;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.proj.yollowa.model.entity.lodgement.LodgementRoomInfoVo;
import com.proj.yollowa.model.entity.lodgement.LodgementVo;

public interface LodgementDao {

	// 숙박 리스트 페이지
	public List<LodgementVo> lodgementListAll() throws SQLException;
	// 숙박 리스트 temp=1인 전체 개수
	public int lodgementListCnt() throws SQLException;
	
	// 디테일 페이지
	public List<LodgementRoomInfoVo> lodgementDetail(int articleNumber) throws SQLException;

//	// ajax select Price (lodgement list page)
	public List<LodgementRoomInfoVo> priceSelect(int lodgementNumber);
	
//	
//	// filter 전체
//	public List<LodgementVo> selectOptionAll();
//
//	// filter 후기순
//	public List<LodgementVo> selectOptionReviewCount();
//	
//	// filter 별점순
//	public List<LodgementVo> selectOptionReviewRate();
//	
//	// filter 최신순
//	public List<LodgementVo> selectOptionLodgementNumber();
}
