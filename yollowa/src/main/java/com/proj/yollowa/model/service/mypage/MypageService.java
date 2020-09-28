package com.proj.yollowa.model.service.mypage;

import java.sql.SQLException;

import org.springframework.ui.Model;

import com.proj.yollowa.model.entity.UserVo;

public interface MypageService {
	
	public UserVo userDetailService(Model model,int user_number) throws SQLException;
}
