package com.proj.yollowa.model.service.mypage;

import static org.junit.Assert.*;

import java.sql.SQLException;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.mypage.MypageDaoJK;
@RunWith(SpringJUnit4ClassRunner.class)
public class MypageServiceImplJKTest {
	UserVo userVo;
	@Inject
	SqlSession sqlSession;
	
	@Test
	public void testGetLodgementReviewService() throws SQLException {
		MypageDaoJK mypageDaoJK = sqlSession.getMapper(MypageDaoJK.class);
		
		mypageDaoJK.updateToStandByHost(userVo);
	}

	@Test
	public void testGetActivityReviewService() {
		fail("Not yet implemented");
	}

}
