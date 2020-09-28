package com.proj.yollowa.model.service.cs;

import java.sql.SQLException;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.mysql.cj.protocol.x.Notice;
import com.proj.yollowa.model.cs.NoticeDao;
import com.proj.yollowa.model.entity.NoticeVo;

@Service
public class NoticeServiceImpl implements NoticeService{

	@Inject
	SqlSession sqlSession;
	
	@Override
	public void getNoticeListService(Model model) throws SQLException {
		NoticeDao noticeDao = sqlSession.getMapper(NoticeDao.class);
		model.addAttribute("list", noticeDao.getNoticeList());
	}

	@Override
	public void getNoticeService(Model model, int noticeno) throws SQLException {
		NoticeDao noticeDao = sqlSession.getMapper(NoticeDao.class);
		model.addAttribute("bean", noticeDao.getNotice(noticeno));
	}

	@Override
	public void deleteNoticeService(int noticeno) throws SQLException {
		NoticeDao noticeDao = sqlSession.getMapper(NoticeDao.class);
		noticeDao.deleteNotice(noticeno);
	}

	@Override
	public void insertNoticeService(NoticeVo bean) throws SQLException {
		NoticeDao noticeDao = sqlSession.getMapper(NoticeDao.class);
		System.out.println(noticeDao);
		bean.setWriter("tester");
		noticeDao.insertNotice(bean);
	}

	@Override
	public void updateNoticeService(NoticeVo bean) throws SQLException {
		NoticeDao noticeDao = sqlSession.getMapper(NoticeDao.class);
		System.out.println(noticeDao);
		noticeDao.updateNotice(bean);
	}
	
}
