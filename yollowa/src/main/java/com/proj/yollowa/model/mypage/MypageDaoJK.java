package com.proj.yollowa.model.mypage;

import java.sql.SQLException;

import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.mypage.ActivityReviewVo;
import com.proj.yollowa.model.entity.mypage.LodgementReviewVo;

public interface MypageDaoJK {
	void updateToStandByHost(UserVo userVo) throws SQLException;
	LodgementReviewVo getLodgementReview(String writer) throws SQLException;
	ActivityReviewVo getActivityReview(String writer) throws SQLException;
}

