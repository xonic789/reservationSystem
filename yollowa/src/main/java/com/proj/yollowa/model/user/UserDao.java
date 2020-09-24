package com.proj.yollowa.model.user;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import com.proj.yollowa.model.entity.UserVo;

public interface UserDao {
	
	public List<UserVo> selectAll() throws SQLException;
	public UserVo login(@Param("user_id") String user_id,@Param("user_password") String user_password) throws SQLException;
	
}
