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
	UserVo userDetailService(Model model,int user_number) throws SQLException;
}
