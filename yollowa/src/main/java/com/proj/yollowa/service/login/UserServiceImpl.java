package com.proj.yollowa.service.login;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

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
	
	//탐색 하기 위한 모든 리스트
	public List<UserVo> selectAllService(){
		return null;
	}

	
	
}
