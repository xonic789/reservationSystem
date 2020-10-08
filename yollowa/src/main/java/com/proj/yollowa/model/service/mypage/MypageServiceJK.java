package com.proj.yollowa.model.service.mypage;

import java.sql.SQLException;
import java.util.List;

import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.mypage.ActivityReviewVo;
import com.proj.yollowa.model.entity.mypage.AllReviewViewVo;
import com.proj.yollowa.model.entity.mypage.LodgementReviewVo;

public interface MypageServiceJK {
	void updateToStandByHostService(UserVo userVo) throws SQLException;
	List<LodgementReviewVo> getLodgementReviewService(String writer) throws SQLException;
	List<ActivityReviewVo> getActivityReviewService(String writer) throws SQLException;
	List<AllReviewViewVo> getAllMyReviewService(String writer) throws SQLException;
}
