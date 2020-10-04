package com.proj.yollowa.service.login;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.proj.yollowa.model.entity.ManagerVo;
import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.login.LoginVo;
import com.proj.yollowa.model.entity.login.ManagerLoginVo;

public interface UserService {
	UserVo loginUserService(LoginVo loginVo) throws SQLException;
	ManagerVo loginManagerService(ManagerLoginVo managerLoginVo) throws SQLException;
	List<String> getAllNaverIdService() throws SQLException;
	List<String> getAllKakaoIdService() throws SQLException;
	public UserVo getKakaoUserLoginService(Model model,String kakaoId,HttpServletRequest request) throws SQLException;
	public UserVo getNaverUserLoginService(Model model,String naverId,HttpServletRequest request) throws SQLException;
	public boolean getUserIdSearching(Model model,UserVo userVo) throws SQLException;
	public void insertUserJoinInfo(UserVo userVo,String addressDetail) throws Exception;
	public boolean getUserNickNameSearching(Model model,UserVo userVo) throws SQLException;
}
