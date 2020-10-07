package com.proj.yollowa.model.service.activity;

import java.sql.SQLException;
import java.util.ArrayList;
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
import com.proj.yollowa.model.entity.activity.ReviewVo;

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
	
	// 리스트 temp=1 인 개수
	@Override
	public int activityCount() throws SQLException {
		ActivityDao dao=sqlSession.getMapper(ActivityDao.class);
		int count=dao.activityCount();
		return count;
	}

	// 액티비티 디테일 페이지 Dto 옵션들
	@Override
	public void activityOption(int articleNumber, Model model) throws SQLException {
		ActivityDao dao=sqlSession.getMapper(ActivityDao.class);
		List<ActivityDetailPageDto> list=dao.activityOption(articleNumber);
		model.addAttribute("option", list);
		
	}

	// 액티비티 디테일 리뷰
	@Override
	public ArrayList<ReviewVo> reviewList(int articleNumber, int category, Model model) throws SQLException {
		ActivityDao dao=sqlSession.getMapper(ActivityDao.class);
		ArrayList<ReviewVo> list =dao.reviewList(articleNumber, category);
		model.addAttribute("reviewList", list);
		
		return list;
	}


	// 리뷰카운트
	@Override
	public int activityReviewCount(int articleNumber, int category) throws SQLException {
		ActivityDao dao=sqlSession.getMapper(ActivityDao.class);
		int cnt=dao.activityReviewCount(articleNumber, category);
		
		return cnt;
	}


	
	
	

}













