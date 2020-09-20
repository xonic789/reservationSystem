package com.bit.yollowa;
import java.sql.Connection;
import java.sql.SQLException;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:/applicationContext.xml")
public class ConnectionTest {
	@Inject
	SqlSessionFactory sqlSessionFactory;
	
	@Test
	public void TestConnection() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Connection conn = sqlSession.getConnection();
		System.out.println(conn);
	}
	
	@Test
	public void TestSelectAll() {
		System.out.println(sqlSessionFactory.openSession().selectList("selectAll"));
	}
	
}
