package com.proj.yollowa.model.service.cs;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.proj.yollowa.model.cs.NoticeDao;
import com.proj.yollowa.model.entity.SearchVo;
import com.proj.yollowa.model.entity.cs.NoticeVo;
import com.proj.yollowa.model.entity.cs.PagingScaleVo;

@Service
public class NoticeServiceImpl implements NoticeService{

	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<NoticeVo> getNoticeListService(SearchVo searchVo) throws SQLException {
		NoticeDao noticeDao = sqlSession.getMapper(NoticeDao.class);
		
		return noticeDao.getNoticeList(searchVo);
		//model.addAttribute("list", noticeDao.getNoticeList(pagingScale));
	}

	@Override
	public void getNoticeService(Model model, int noticeno) throws SQLException {
		NoticeDao noticeDao = sqlSession.getMapper(NoticeDao.class);
		model.addAttribute("bean", noticeDao.getNotice(noticeno));
	}
	
	@Override
	public int countNoticeService(SearchVo searchVo) throws SQLException {
		NoticeDao noticeDao = sqlSession.getMapper(NoticeDao.class);
		return noticeDao.countNotice(searchVo);
	}
	
	@Override
	public void deleteNoticeService(int noticeno) throws SQLException {
		NoticeDao noticeDao = sqlSession.getMapper(NoticeDao.class);
		noticeDao.deleteNotice(noticeno);
	}

	@Override
	public void insertNoticeService(NoticeVo bean) throws SQLException {
		NoticeDao noticeDao = sqlSession.getMapper(NoticeDao.class);
		noticeDao.insertNotice(bean);
	}

	@Override
	public void updateNoticeService(NoticeVo bean) throws SQLException {
		NoticeDao noticeDao = sqlSession.getMapper(NoticeDao.class);
		noticeDao.updateNotice(bean);
	}

	
}
