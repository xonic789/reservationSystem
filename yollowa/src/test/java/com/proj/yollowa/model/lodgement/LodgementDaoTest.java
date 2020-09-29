package com.proj.yollowa.model.lodgement;

import java.sql.SQLException;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/resources/applicationContext.xml")
public class LodgementDaoTest {

	@Inject
	SqlSession sqlSession;
	
	@Test
	public void test() throws SQLException {
		LodgementDao dao=sqlSession.getMapper(LodgementDao.class);
		System.out.println(dao.lodgementListAll());
		
	}

}
