package com.proj.yollowa.model.service.mypage;

import java.sql.SQLException;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.mypage.ActivityReviewVo;
import com.proj.yollowa.model.entity.mypage.LodgementReviewVo;
import com.proj.yollowa.model.mypage.MypageDaoJK;

@Service
public class MypageServiceImplJK implements MypageServiceJK{

	@Inject
	SqlSession sqlSession;

	@Override
	public void updateToStandByHostService(UserVo userVo) throws SQLException {
		MypageDaoJK mypageDaoJK = sqlSession.getMapper(MypageDaoJK.class);
		
		mypageDaoJK.updateToStandByHost(userVo);
	}

	@Override
	public LodgementReviewVo getLodgementReviewService(String writer) throws SQLException {
		MypageDaoJK mypageDaoJK = sqlSession.getMapper(MypageDaoJK.class);
		
		return mypageDaoJK.getLodgementReview(writer);
	}

	@Override
	public ActivityReviewVo getActivityReviewService(String writer) throws SQLException {
		MypageDaoJK mypageDaoJK = sqlSession.getMapper(MypageDaoJK.class);

		return mypageDaoJK.getActivityReview(writer);
	}

	
	
}
