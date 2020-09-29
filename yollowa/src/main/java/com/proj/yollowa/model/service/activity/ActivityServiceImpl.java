package com.proj.yollowa.model.service.activity;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.proj.yollowa.model.activity.ActivityDao;
import com.proj.yollowa.model.entity.activity.AOInfoVo;
import com.proj.yollowa.model.entity.activity.ActivityDetailPageDto;
import com.proj.yollowa.model.entity.activity.ActivityOptionVo;
import com.proj.yollowa.model.entity.activity.ActivityVo;

@Service
public class ActivityServiceImpl implements ActivityService {
	
	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<ActivityVo> activitySelectAll(Model model) throws SQLException{
		ActivityDao dao=sqlSession.getMapper(ActivityDao.class);
		List<ActivityVo> list=dao.activitySelectAll();
		model.addAttribute("list", list);
		
		return list;
	}

	@Override
	public void activityDetail(Model model,int number) throws SQLException {
		ActivityDao dao=sqlSession.getMapper(ActivityDao.class);
		List<ActivityVo> detailList =dao.activityDetail(number);
		model.addAttribute("detailList",detailList);
	}
	
	@Override
	public int activityCount() throws SQLException {
		ActivityDao dao=sqlSession.getMapper(ActivityDao.class);
		int count=dao.activityCount();
		return count;
	}

	@Override
	public void activityOption(int articalNumber, Model model) throws SQLException {
		ActivityDao dao=sqlSession.getMapper(ActivityDao.class);
		List<ActivityDetailPageDto> list=dao.activityOption(articalNumber);
		model.addAttribute("option", list);
		
	}

	
	
	

}













