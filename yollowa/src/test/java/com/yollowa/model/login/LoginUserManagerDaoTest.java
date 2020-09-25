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

import com.proj.yollowa.model.entity.login.LoginVo;
import com.proj.yollowa.model.entity.login.ManagerLoginVo;
import com.proj.yollowa.model.user.ManagerDao;
import com.proj.yollowa.model.user.UserDao;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/resources/applicationContext.xml")
public class LoginUserManagerDaoTest {
	
	Logger logger=LoggerFactory.getLogger(LoginUserManagerDaoTest.class);
	
	@Inject
	SqlSession sqlSession;
	
	@Test
	public void testLoginUserService() throws SQLException {
		
		UserDao userDao = sqlSession.getMapper(UserDao.class);
		System.out.println(userDao.login(new LoginVo("dltmddn","1234")));
		
		ManagerDao managerDao = sqlSession.getMapper(ManagerDao.class);
		System.out.println(managerDao.login(new ManagerLoginVo("manager1","1234")));
	}

}
