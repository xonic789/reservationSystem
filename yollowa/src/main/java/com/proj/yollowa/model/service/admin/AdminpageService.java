package com.proj.yollowa.model.service.admin;

import java.sql.SQLException;
import java.util.List;

import com.proj.yollowa.model.entity.UserVo;

public interface AdminpageService {

	List<UserVo> getHostApprovalStandbyList() throws SQLException;
	void updateUserLevelToHost(int user_number) throws SQLException;
}
