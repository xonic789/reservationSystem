package com.proj.yollowa.model.mypage;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.mypage.LReservInfoVo;

public interface MypageDao {
	public UserVo userDetail(int user_number) throws SQLException;
	public List<LReservInfoVo> lReservationInfo(@Param("USER_NUMBER") int user_number) throws SQLException;
	public List<LReservInfoVo> lUserCompletedInfo(@Param("USER_NUMBER") int user_number) throws SQLException;
	public List<LReservInfoVo> lUserCartInfo(@Param("USER_NUMBER") int user_number) throws SQLException;
}

