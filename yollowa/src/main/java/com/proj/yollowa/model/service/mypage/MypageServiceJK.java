package com.proj.yollowa.model.service.mypage;

import java.sql.SQLException;

import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.mypage.ActivityReviewVo;
import com.proj.yollowa.model.entity.mypage.LodgementReviewVo;

public interface MypageServiceJK {
	void updateToStandByHostService(UserVo userVo) throws SQLException;
	LodgementReviewVo getLodgementReviewService(String writer) throws SQLException;
	ActivityReviewVo getActivityReviewService(String writer) throws SQLException;
}
