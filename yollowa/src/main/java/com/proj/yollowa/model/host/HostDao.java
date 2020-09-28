package com.proj.yollowa.model.host;

import java.sql.SQLException;

import org.apache.ibatis.annotations.Param;

import com.proj.yollowa.model.entity.AddLodgementPageDto;
import com.proj.yollowa.model.entity.UserVo;

public interface HostDao {
	
	public UserVo userDetail(int user_number) throws SQLException;
	
	// 숙박 글 기본정보 insert (lodgement_img 제외)
	void insertLodgement(@Param("lodgement_userNumber") int user_number, @Param("lodgement") AddLodgementPageDto bean);

	// 숙박 글 기본정보 등록 후 primary key로 붙은 글 번호를 select (information테이블에 정보를 추가할 때 글번호와 함께 추가와 lodgement_img 업로드 후 글번호와 함께 update)
	int selectLodgementNum(@Param("lodgement_userNumber") int user_number, @Param("lodgement") AddLodgementPageDto bean );
	
	// 숙박 글 information insert
	public void insertLodgeInfo(@Param("information_number") int lodgementNumber, @Param("information") AddLodgementPageDto bean);
	
	// lodgement_img 업데이트 
	public void updateLodgementImg(@Param("lodgeNumber") int lodgementNumber,@Param("lodgement_img") String lodgement_img);

	
}
