package com.proj.yollowa.service.login;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.proj.yollowa.model.entity.ManagerVo;
import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.login.LoginVo;
import com.proj.yollowa.model.entity.login.ManagerLoginVo;
import com.proj.yollowa.model.user.ManagerDao;
import com.proj.yollowa.model.user.UserDao;

@Service
public class UserServiceImpl implements UserService{

	@Inject
	SqlSession sqlSession;
	
	// user 로그인
	@Override
	public UserVo loginUserService(LoginVo loginVo) throws SQLException {
		UserDao userDao =sqlSession.getMapper(UserDao.class);
		UserVo userVo = userDao.login(loginVo);
		if(userVo!=null) {
			return userVo;
		}else {
			return null;
		}
	}
	
	
	//manager 로그인
	@Override
	public ManagerVo loginManagerService(ManagerLoginVo managerLoginVo) throws SQLException {
		ManagerDao managerDao=sqlSession.getMapper(ManagerDao.class);
		ManagerVo managerVo=managerDao.login(managerLoginVo);
		if(managerVo!=null) {
			return managerVo;
		}else {
			return null;
		}
	}
	public List<String> getAllKakaoIdService() throws SQLException{
		UserDao userDao=sqlSession.getMapper(UserDao.class);
		return userDao.getKakaoId();
	}
	public List<String> getAllNaverIdService() throws SQLException{
		UserDao userDao=sqlSession.getMapper(UserDao.class);
		return userDao.getNaverId();
	}
	public UserVo getKakaoUserLoginService(Model model,String kakaoId,HttpServletRequest request) throws SQLException{
		UserDao userDao=sqlSession.getMapper(UserDao.class);
		UserVo user=null;
		System.out.println(kakaoId);
		if(kakaoId!=null) {
			HttpSession session=request.getSession();
			user = userDao.getKakaoUserInfo(kakaoId);
			session.setAttribute("user", user);
		}else
			return null;
		return user;
	
	}
	public UserVo getNaverUserLoginService(Model model,String naverId,HttpServletRequest request) throws SQLException{
		UserDao userDao=sqlSession.getMapper(UserDao.class);
		if(naverId!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("user", userDao.getNaverUserInfo(naverId));
		}else
			return null;
		return userDao.getNaverUserInfo(naverId);
	}

	
	
}
