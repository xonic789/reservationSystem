package com.proj.yollowa.model.service.cs;

import java.sql.SQLException;

import org.springframework.ui.Model;

import com.proj.yollowa.model.entity.NoticeVo;


public interface NoticeService {

	void getNoticeListService(Model model) throws SQLException;
	void getNoticeService(Model model, int noticeno) throws SQLException;
	void deleteNoticeService(int noticeno) throws SQLException;
	void insertNoticeService(NoticeVo bean) throws SQLException;
}
