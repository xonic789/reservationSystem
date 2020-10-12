package com.proj.yollowa.model.lodgement;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.lodgement.InformationVo;
import com.proj.yollowa.model.entity.lodgement.LodgementDetailPageDto;
import com.proj.yollowa.model.entity.lodgement.LodgementRoomInfoVo;
import com.proj.yollowa.model.entity.lodgement.LodgementVo;

public interface LodgementDao {

	// 숙박 리스트 페이지
	public List<LodgementVo> lodgementListAll() throws SQLException;
	// 숙박 리스트 temp=1인 전체 개수
	public int lodgementListCnt() throws SQLException;
	
	// 디테일 페이지
	public List<LodgementDetailPageDto> lodgementDetail(@Param("articleNumber") int articleNumber) throws SQLException;
	
//	// ajax select Price (lodgement list page)
	public List<LodgementRoomInfoVo> priceSelect(int lodgementNumber);

	// 숙박글 타이틀 캐러셀 select
	public String lodgementImgSelect(int number);

	// lodgement list page search
	public List<LodgementVo> lodgementSearch(String search);
	
	// 숙박 디테일 기본정보
	public List<InformationVo> lodgementInfo(@Param("number") int number,@Param("type") int type) throws SQLException;
	
	// 숙박 예약 페이지 지정된 방정보
	public List<LodgementRoomInfoVo> lodgementReserInfo(@Param("articleNumber") int articleNumber,@Param("roomNumber") int roomNumber) throws SQLException;
	
	// 숙박 유저정보
	public UserVo lodgementReserUser(int userNumber) throws SQLException;
	
	// 숙박 선택한 방 성수기날짜
	public LodgementRoomInfoVo lodgementpeakDays(@Param("articleNumber") int articleNumber,@Param("roomNumber") int roomNumber) throws SQLException;
}
