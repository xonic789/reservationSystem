package com.proj.yollowa.model.service.admin;

import java.sql.SQLException;
import java.util.List;

import com.proj.yollowa.model.entity.ManagerVo;
import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.admin.ActivityApprovalVo;
import com.proj.yollowa.model.entity.admin.LodgementApprovalVo;

public interface AdminpageService {

	List<UserVo> getHostApprovalStandbyListService() throws SQLException;
	void updateUserLevelToHostService(int user_number, int user_level) throws SQLException;
	List<ActivityApprovalVo> getActivityApprovalStandbyListService() throws SQLException;
	void updateActivityTempToApprovedService(int activity_number) throws SQLException;
	List<LodgementApprovalVo> getLodgementApprovalStandbyListService() throws SQLException;
	void updateLodgementTempToApprovedService(int lodgement_number) throws SQLException;
	List<ManagerVo> getManagerListService() throws SQLException;
	ManagerVo getManagerService(int manager_number) throws SQLException;
	void updateManagerService(ManagerVo bean) throws SQLException;
	void deleteManagerService(int manager_number) throws SQLException;
	void insertManagerService(ManagerVo bean) throws SQLException;
}
