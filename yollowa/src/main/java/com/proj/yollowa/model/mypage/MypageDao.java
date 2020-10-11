package com.proj.yollowa.model.mypage;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.activity.ActivityVo;
import com.proj.yollowa.model.entity.lodgement.LodgementRoomInfoVo;
import com.proj.yollowa.model.entity.lodgement.LodgementVo;
import com.proj.yollowa.model.entity.mypage.LReservInfoDto;

public interface MypageDao {
	public UserVo userDetail(int user_number) throws SQLException;
	public List<LReservInfoDto> getLreservationInfo(@Param("USER_NUMBER") int user_number) throws SQLException;
	public List<LReservInfoDto> getLuserCompletedInfo(@Param("USER_NUMBER") int user_number) throws SQLException;
	public List<LReservInfoDto> getLuserCartInfo(@Param("USER_NUMBER") int user_number) throws SQLException;
	public LodgementVo getLarticleInfo(@Param("LRESERVINFO_ACTICLENUMBER") int lReservInfo_acticleNumber) throws SQLException;
	public LodgementVo getLwishList(@Param("lodgement_number") int lodgement_number) throws SQLException;
	public ActivityVo getAwishList(@Param("activity_number") int activity_number) throws SQLException;
	
}

