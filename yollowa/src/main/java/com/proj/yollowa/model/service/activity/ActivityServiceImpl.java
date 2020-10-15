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
import com.proj.yollowa.model.entity.lodgement.InformationVo;
import com.proj.yollowa.model.entity.lodgement.LodgementDetailPageDto;
import com.proj.yollowa.model.entity.lodgement.LodgementVo;
import com.proj.yollowa.model.lodgement.LodgementDao;

@Service
public class ActivityServiceImpl implements ActivityService {
	
	@Inject
	SqlSession sqlSession;
	
	// 액티비티 디테일 리뷰 // 숙박에서 사용중 삭제 x
	@Override
	public ArrayList<ReviewVo> reviewList(int articleNumber, int category, Model model) throws SQLException {
		ActivityDao dao=sqlSession.getMapper(ActivityDao.class);
		ArrayList<ReviewVo> list =dao.reviewList(articleNumber, category);
		model.addAttribute("reviewList", list);
		
		return list;
	}

	
	// 액티비티 디테일 리스트
	@Override
	public List<ActivityDetailPageDto> activityDetail(int activity_number, Model model) {
		ActivityDao dao =sqlSession.getMapper(ActivityDao.class);
		List<ActivityDetailPageDto> list = dao.activityDetail(activity_number);

		model.addAttribute("detailList",list);
		return list;
	}

	// 디테일 이미지
	@Override
	public void activityImgSelect(int activity_number, Model model) {
		ActivityDao dao = sqlSession.getMapper(ActivityDao.class);
		
		String titleImg = dao.activityImgSelect(activity_number);
		model.addAttribute("listImg", titleImg);
	}

	// 디테일 기본정보
	@Override
	public void activityInfo(int activity_number, int type, Model model) {
		ActivityDao dao = sqlSession.getMapper(ActivityDao.class);
		List<InformationVo> list= dao.activityInfo(activity_number,type);
		
		model.addAttribute("infoList",list);
	}
	
	
	

}













