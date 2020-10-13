package com.proj.yollowa.model.service.mypage;

import java.sql.SQLException;
import java.util.List;

import org.springframework.ui.Model;

import com.proj.yollowa.model.entity.ReviewVo;
import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.mypage.LReservInfoDto;
import com.proj.yollowa.model.entity.mypage.ReviewDto;

public interface MypageService {
	public UserVo userDetailService(Model model,int user_number) throws SQLException;
	public List<LReservInfoDto> lReservationInfoService(Model model,int user_number,String service) throws SQLException;
	public List<LReservInfoDto> lUserCompletedInfoService(Model model,int user_number,String service) throws SQLException;
	public List<LReservInfoDto> lUserCartInfoService(Model model,int user_number,String service) throws SQLException;
	public void userWishListService(Model model, UserVo userVo, String service) throws SQLException;
	public ReviewDto getReviewInfoService(Model model,String service,int reservNumber) throws SQLException;
	public void insertReviewService(ReviewVo reviewVo,int user_Number) throws SQLException;
}
