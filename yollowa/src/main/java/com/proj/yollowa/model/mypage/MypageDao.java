package com.proj.yollowa.model.mypage;

import java.sql.SQLException;

import org.springframework.ui.Model;

import com.proj.yollowa.model.entity.UserVo;

public interface MypageDao {
	public UserVo userDetail(int user_number) throws SQLException;
}
