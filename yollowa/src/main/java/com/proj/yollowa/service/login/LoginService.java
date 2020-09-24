package com.proj.yollowa.service.login;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.proj.yollowa.model.entity.UserVo;

public interface LoginService {


	UserVo loginUser(Model model, String user_id, String user_password) throws SQLException;
	
}
