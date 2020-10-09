package com.proj.yollowa.model.mypage;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.host.LodgementVo;
import com.proj.yollowa.model.entity.lodgement.LodgementRoomInfoVo;
import com.proj.yollowa.model.entity.mypage.LReservInfoDto;

public interface MypageDao {
	public UserVo userDetail(int user_number) throws SQLException;
	public List<LReservInfoDto> getLreservationInfo(@Param("USER_NUMBER") int user_number) throws SQLException;
	public List<LReservInfoDto> getLuserCompletedInfo(@Param("USER_NUMBER") int user_number) throws SQLException;
	public List<LReservInfoDto> getLuserCartInfo(@Param("USER_NUMBER") int user_number) throws SQLException;
	public LodgementVo getLarticleInfo(@Param("LRESERVINFO_ACTICLENUMBER") int lReservInfo_acticleNumber) throws SQLException;
}

