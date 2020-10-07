package com.proj.yollowa.model.cs;

import java.sql.SQLException;
import java.util.List;

import com.proj.yollowa.model.entity.NoticeVo;
import com.proj.yollowa.model.entity.PagingScaleVo;
import com.proj.yollowa.model.entity.SearchVo;


public interface NoticeDao{

//	List<NoticeVo> getNoticeList(PagingScaleVo pagingScale) throws SQLException;
	List<NoticeVo> getNoticeList(SearchVo searchVo) throws SQLException;
	NoticeVo getNotice(int noticeno) throws SQLException;
	int countNotice(SearchVo searchVo) throws SQLException;
	void deleteNotice(int noticeno) throws SQLException;
	void insertNotice(NoticeVo bean) throws SQLException;
	void updateNotice(NoticeVo bean) throws SQLException;
}