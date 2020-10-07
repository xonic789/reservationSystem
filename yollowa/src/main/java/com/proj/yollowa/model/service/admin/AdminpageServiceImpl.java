package com.proj.yollowa.model.service.admin;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.proj.yollowa.model.adminpage.AdminpageDao;
import com.proj.yollowa.model.entity.ManagerVo;
import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.admin.ActivityApprovalVo;
import com.proj.yollowa.model.entity.admin.LodgementApprovalVo;

@Service
public class AdminpageServiceImpl implements AdminpageService{

	@Inject
	SqlSession sqlsession;

	@Override
	public List<UserVo> getHostApprovalStandbyListService() throws SQLException {
		AdminpageDao adminpageDao = sqlsession.getMapper(AdminpageDao.class);
		
		return adminpageDao.getHostApprovalStandbyList();
	}

	@Override
	public void updateUserLevelToHostService(int user_number, int user_level) throws SQLException {
		AdminpageDao adminpageDao = sqlsession.getMapper(AdminpageDao.class);
		UserVo userVo = new UserVo();
		userVo.setUser_number(user_number);
		userVo.setUser_level(user_level);
		adminpageDao.updateUserLevelToHost(userVo);
	}

	@Override
	public List<ActivityApprovalVo> getActivityApprovalStandbyListService() throws SQLException {
		AdminpageDao adminpageDao = sqlsession.getMapper(AdminpageDao.class);
		
		return adminpageDao.getActivityApprovalStandbyList();
	}

	@Override
	public void updateActivityTempToApprovedService(int activity_number) throws SQLException {
		AdminpageDao adminpageDao = sqlsession.getMapper(AdminpageDao.class);
		
		adminpageDao.updateActivityTempToApproved(activity_number);;
	}

	@Override
	public List<LodgementApprovalVo> getLodgementApprovalStandbyListService() throws SQLException {
		AdminpageDao adminpageDao = sqlsession.getMapper(AdminpageDao.class);
		
		return adminpageDao.getLodgementApprovalStandbyList();
	}

	@Override
	public void updateLodgementTempToApprovedService(int lodgement_number) throws SQLException {
		AdminpageDao adminpageDao = sqlsession.getMapper(AdminpageDao.class);
		
		adminpageDao.updateLodgementTempToApproved(lodgement_number);
	}
	
	//Manager
	@Override
	public List<ManagerVo> getManagerListService() throws SQLException {
		AdminpageDao adminpageDao = sqlsession.getMapper(AdminpageDao.class);
		
		return adminpageDao.getManagerList();
	}

	@Override
	public ManagerVo getManagerService(int manager_number) throws SQLException {
		AdminpageDao adminpageDao = sqlsession.getMapper(AdminpageDao.class);
		
		return adminpageDao.getManager(manager_number);
	}

	@Override
	public void updateManagerService(ManagerVo bean) throws SQLException {
		AdminpageDao adminpageDao = sqlsession.getMapper(AdminpageDao.class);
		
		adminpageDao.updateManager(bean);
	}

	@Override
	public void deleteManagerService(int manager_number) throws SQLException {
		AdminpageDao adminpageDao =sqlsession.getMapper(AdminpageDao.class);
		
		adminpageDao.deleteManager(manager_number);
	}

	@Override
	public void insertManagerService(ManagerVo bean) throws SQLException {
		AdminpageDao adminpageDao =sqlsession.getMapper(AdminpageDao.class);
		
		adminpageDao.insertManager(bean);
	}

		
}
