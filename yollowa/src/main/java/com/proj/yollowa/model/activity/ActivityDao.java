package com.proj.yollowa.model.activity;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.proj.yollowa.model.entity.activity.AOInfoVo;
import com.proj.yollowa.model.entity.activity.ActivityDetailPageDto;
import com.proj.yollowa.model.entity.activity.ActivityOptionVo;
import com.proj.yollowa.model.entity.activity.ActivityVo;
import com.proj.yollowa.model.entity.activity.ReviewVo;

public interface ActivityDao {
	//리스트 페이지
	public List<ActivityVo> activitySelectAll() throws SQLException;
	//디테일 페이지
	public List<ActivityVo> activityDetail(@Param("val") int number) throws SQLException;
	//리스트 개수
	public int activityCount() throws SQLException; 
	
	//디테일 옵션 칸
	public List<ActivityDetailPageDto> activityOption(@Param("val") int articleNumber) throws SQLException;
	
	//리뷰
	public ArrayList<ReviewVo> reviewList(@Param("articleNumber") int articleNumber,@Param("category") int category) throws SQLException;
	
	// 리뷰 개수
	public int activityReviewCount(@Param("articleNumber") int articleNumber,@Param("category") int category ) throws SQLException;
	
	// 리뷰 개수 업데이트
	
}
