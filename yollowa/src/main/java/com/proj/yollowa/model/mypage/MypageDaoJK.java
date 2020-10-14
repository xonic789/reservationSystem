package com.proj.yollowa.model.mypage;

import java.sql.SQLException;
import java.util.List;

import com.proj.yollowa.model.entity.SearchVo;
import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.mypage.ActivityReviewVo;
import com.proj.yollowa.model.entity.mypage.LodgementReviewVo;

public interface MypageDaoJK {
	void updateToStandByHost(UserVo userVo) throws SQLException;
	List<LodgementReviewVo> getLodgementReview(SearchVo searchVo) throws SQLException;
	List<ActivityReviewVo> getActivityReview(SearchVo searchVo) throws SQLException;
	int getReviewCount(SearchVo searchVo) throws SQLException;
}

