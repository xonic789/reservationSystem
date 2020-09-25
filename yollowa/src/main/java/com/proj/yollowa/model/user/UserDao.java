package com.proj.yollowa.model.user;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.login.LoginVo;

public interface UserDao {
	
	public List<UserVo> selectAll() throws SQLException;
	public UserVo login(LoginVo loginVo) throws SQLException;
	public UserVo selectOne(int user_number) throws SQLException;
}
