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
	
	//////유저테이블의 소셜 아이디 가져오기////////////////
	public List<String> getAllKakaoIdService() throws SQLException{
		UserDao userDao=sqlSession.getMapper(UserDao.class);
		return userDao.getKakaoId();
	}
	
	public List<String> getAllNaverIdService() throws SQLException{
		UserDao userDao=sqlSession.getMapper(UserDao.class);
		return userDao.getNaverId();
	}
//////유저테이블의 소셜 아이디 가져오기////////////////
	
	//카카오 로그인 
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
	//카카오 로그인
	
	
	//네이버로그인
	public UserVo getNaverUserLoginService(Model model,String naverId,HttpServletRequest request) throws SQLException{
		UserDao userDao=sqlSession.getMapper(UserDao.class);
		if(naverId!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("user", userDao.getNaverUserInfo(naverId));
		}else
			return null;
		return userDao.getNaverUserInfo(naverId);
	}
	//네이버로그인

	
	//아이디 중복검사
	@Override
	public boolean getUserIdSearching(Model model,UserVo userVo) throws SQLException {
		UserDao userDao=sqlSession.getMapper(UserDao.class);
		List<String> userId=userDao.getUserId();
		for(String id : userId) {
			if(id.equals(userVo.getUser_id())) {
				return false;
			}
		}
		
		return true;
	}

	
	
//	@Override
//	public String joinUserPassword(Model model, UserVo userVo) throws Exception {
//		char[] password = {'!','@','#','$','%','^','&','*','(',')','+','=','`','~'};
//		char[] user_password= userVo.getUser_password().toCharArray();
//		String result="";
		///패스워드 검사///
//		for(int i=0;i<user_password.length;i++) {
//			for(int j=0;j<password.length;j++) {
//				if(user_password[i]==password[j]) {
//					result="password";
//					model.addAttribute("password",result);
//					return result;
//				}
//			}
//		}
		
		/////패스워드 검사////
//		
//		return null;
//	}
//	
	
		


	@Override
	public void insertUserJoinInfo(UserVo userVo, String addressDetail) throws Exception {
		String address= userVo.getUser_address()+" "+addressDetail;
		userVo.setUser_address(address);
		UserDao userDao=sqlSession.getMapper(UserDao.class);
		userDao.insertUser(userVo);
	}

	//닉네임 중복검사
	@Override
	public boolean getUserNickNameSearching(Model model,UserVo userVo) throws SQLException {
		UserDao userDao=sqlSession.getMapper(UserDao.class);
		List<String> list = userDao.getUserNickName();
		for(String nickName:list) {
			if(nickName.equals(userVo.getUser_nickName())) {
				return false;
			}
		}
		return true;
	}
	
		
	
}
