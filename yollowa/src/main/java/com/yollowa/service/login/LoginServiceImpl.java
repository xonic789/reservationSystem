package com.yollowa.service.login;

import java.sql.SQLException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.yollowa.model.entity.UserVo;
import com.yollowa.model.user.UserDao;

@Service
public class LoginServiceImpl implements LoginService{

	@Inject
	SqlSession sqlSession;
	

	@Override
	public UserVo loginUser(Model model,String user_id,String user_password) throws SQLException {
		UserDao userDao =sqlSession.getMapper(UserDao.class);
		
		UserVo userVo = userDao.login(user_id,user_password);
		if(userVo!=null) {
			return userVo;
			
		}else {
			return null;
		}
	}
	
}
