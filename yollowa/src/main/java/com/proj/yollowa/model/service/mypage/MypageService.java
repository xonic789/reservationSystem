package com.proj.yollowa.model.service.mypage;

import java.sql.SQLException;
import java.util.List;

import org.springframework.ui.Model;

import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.mypage.LReservInfoVo;

public interface MypageService {
	public UserVo userDetailService(Model model,int user_number) throws SQLException;
	public List<LReservInfoVo> lReservationInfoService(Model model,int user_number) throws SQLException;
	public List<LReservInfoVo> lUserCompletedInfoService(Model model,int user_number) throws SQLException;
	public List<LReservInfoVo> lUserCartInfoService(Model model,int user_number) throws SQLException;
	
}
