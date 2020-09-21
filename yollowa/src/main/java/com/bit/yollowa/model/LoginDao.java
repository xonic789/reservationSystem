package com.bit.yollowa.model;

import java.sql.SQLException;
import java.util.List;

import com.bit.yollowa.model.entity.UserVo;

public interface LoginDao {
	
	public List<UserVo> selectAll() throws SQLException;
}
