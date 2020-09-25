package com.proj.yollowa.model.user;

import java.sql.SQLException;
import java.util.List;

import com.proj.yollowa.model.entity.ManagerVo;
import com.proj.yollowa.model.entity.login.ManagerLoginVo;

public interface ManagerDao {

	public List<ManagerVo> selectAll() throws SQLException;
	public ManagerVo login(ManagerLoginVo managerLoginVo) throws SQLException;
	
}
