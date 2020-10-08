package com.proj.yollowa.model.mypage;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.proj.yollowa.model.entity.mypage.LReservInfoVo;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/resources/applicationContext.xml")
public class MypageDaoTest {
	
	@Inject
	SqlSession sqlSession;
	
	@Test
	public void lReservationInfoTest() throws SQLException {
		MypageDao myPageDao = sqlSession.getMapper(MypageDao.class);
		List<LReservInfoVo> bean =myPageDao.lReservationInfo(24);
		
		System.out.println(bean);
	}
	@Test
	public void lUserUsedInfoTest() throws SQLException {
		MypageDao myPageDao = sqlSession.getMapper(MypageDao.class);
		List<LReservInfoVo> bean =myPageDao.lUserCartInfo(24);
		
		System.out.println(bean);
	}
	@Test
	public void lUserCartInfoTest() throws SQLException {
		MypageDao myPageDao = sqlSession.getMapper(MypageDao.class);
		List<LReservInfoVo> bean =myPageDao.lUserCompletedInfo(24);
		
		System.out.println(bean);
	}
}

