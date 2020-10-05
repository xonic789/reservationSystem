package com.proj.yollowa.model.adminpage;

import java.sql.SQLException;
import java.util.List;

import com.proj.yollowa.model.entity.ManagerVo;
import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.admin.ActivityApprovalVo;
import com.proj.yollowa.model.entity.admin.LodgementApprovalVo;

public interface AdminpageDao {
	
	List<UserVo> getHostApprovalStandbyList() throws SQLException;
	void updateUserLevelToHost(int user_number) throws SQLException;
	List<ActivityApprovalVo> getActivityApprovalStandbyList() throws SQLException;
	void updateActivityTempToApproved(int activity_number) throws SQLException;
	List<LodgementApprovalVo> getLodgementApprovalStandbyList() throws SQLException;
	void updateLodgementTempToApproved(int lodgement_number) throws SQLException;
	List<ManagerVo> getManagerList() throws SQLException;
	ManagerVo getManager(int manager_number) throws SQLException;
	void updateManager(ManagerVo managerVo) throws SQLException;
	void deleteManager(int manager_number) throws SQLException;
	void insertManager(ManagerVo bean) throws SQLException;
}
