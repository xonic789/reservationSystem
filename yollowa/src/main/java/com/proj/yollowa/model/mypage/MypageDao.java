package com.proj.yollowa.model.mypage;

import java.sql.SQLException;

import com.proj.yollowa.model.entity.UserVo;

public interface MypageDao {
	public UserVo user(int user_number) throws SQLException;
}
