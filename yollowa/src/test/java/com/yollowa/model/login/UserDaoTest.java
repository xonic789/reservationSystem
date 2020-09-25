package com.yollowa.model.login;

import static org.junit.Assert.fail;

import java.sql.SQLException;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.proj.yollowa.model.user.UserDao;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/resources/applicationContext.xml")
public class UserDaoTest {
	
	Logger logger=LoggerFactory.getLogger(UserDaoTest.class);
	
	@Inject
	SqlSession sqlSession;
	
	@Test
	public void testLoginUser() throws SQLException {
		UserDao bean = sqlSession.getMapper(UserDao.class);
		System.out.println(bean.login("dltmddn", "1234"));
	}


}
