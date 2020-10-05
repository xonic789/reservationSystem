package com.proj.yollowa.model.service.admin;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.proj.yollowa.model.adminpage.AdminpageDao;
import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.admin.ActivityApprovalVo;

@Service
public class AdminpageServiceImpl implements AdminpageService{

	@Inject
	SqlSession sqlsession;

	@Override
	public List<UserVo> getHostApprovalStandbyList() throws SQLException {
		AdminpageDao adminpageDao = sqlsession.getMapper(AdminpageDao.class);
		
		return adminpageDao.getHostApprovalStandbyList();
	}

	@Override
	public void updateUserLevelToHost(int user_number) throws SQLException {
		AdminpageDao adminpageDao = sqlsession.getMapper(AdminpageDao.class);
		
		adminpageDao.updateUserLevelToHost(user_number);
	}

	@Override
	public List<ActivityApprovalVo> getActivityApprovalStandbyList() throws SQLException {
		AdminpageDao adminpageDao = sqlsession.getMapper(AdminpageDao.class);
		
		return adminpageDao.getActivityApprovalStandbyList();
	}

	@Override
	public void updateActivityTempToApproved(int activity_number) throws SQLException {
		AdminpageDao adminpageDao = sqlsession.getMapper(AdminpageDao.class);
		
		adminpageDao.updateActivityTempToApproved(activity_number);;
	}


	
	
}
