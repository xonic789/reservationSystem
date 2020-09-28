package com.proj.yollowa.model.cs;

import java.sql.SQLException;
import java.util.List;

import com.proj.yollowa.model.entity.NoticeVo;


public interface NoticeDao{

	List<NoticeVo> getNoticeList() throws SQLException;
	NoticeVo getNotice(int noticeno) throws SQLException;
	void deleteNotice(int noticeno) throws SQLException;
	void insertNotice(NoticeVo bean) throws SQLException;
}