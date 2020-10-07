package com.proj.yollowa.model.cs;

import java.sql.SQLException;
import java.util.List;

import com.proj.yollowa.model.entity.SearchVo;
import com.proj.yollowa.model.entity.cs.NoticeVo;
import com.proj.yollowa.model.entity.cs.PagingScaleVo;


public interface NoticeDao{

	List<NoticeVo> getNoticeList(SearchVo searchVo) throws SQLException;
	NoticeVo getNotice(int noticeno) throws SQLException;
	int countNotice(SearchVo searchVo) throws SQLException;
	void deleteNotice(int noticeno) throws SQLException;
	void insertNotice(NoticeVo bean) throws SQLException;
	void updateNotice(NoticeVo bean) throws SQLException;
}