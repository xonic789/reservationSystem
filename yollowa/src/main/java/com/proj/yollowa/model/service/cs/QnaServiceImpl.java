package com.proj.yollowa.model.service.cs;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.proj.yollowa.model.cs.QnaDao;
import com.proj.yollowa.model.entity.SearchVo;
import com.proj.yollowa.model.entity.cs.QnaVo;

@Service
public class QnaServiceImpl implements QnaService{

	@Inject
	SqlSession sqlSession;

	@Override
	public List<QnaVo> getQnaListService(SearchVo searchVo) throws SQLException {
		QnaDao qnaDao = sqlSession.getMapper(QnaDao.class);
		
		return qnaDao.getQnaList(searchVo);
	}

	@Override
	public void getQnaService(Model model, int qnano) throws SQLException {
		QnaDao qnaDao = sqlSession.getMapper(QnaDao.class);
		
		model.addAttribute("bean", qnaDao.getQna(qnano));
	}

	@Override
	public int countQnaService(SearchVo searchVo) throws SQLException {
		QnaDao qnaDao = sqlSession.getMapper(QnaDao.class);
		
		return qnaDao.countQna(searchVo);
	}

	@Override
	public void deleteQnaService(int qnano) throws SQLException {
		QnaDao qnaDao = sqlSession.getMapper(QnaDao.class);
		qnaDao.deleteQna(qnano);
	}

	@Override
	public void insertQnaService(QnaVo bean) throws SQLException {
		QnaDao qnaDao = sqlSession.getMapper(QnaDao.class);
		bean.setWriter("tester");
		qnaDao.insertQna(bean);
	}

	@Override
	public void updateQnaService(QnaVo bean) throws SQLException {
		QnaDao qnaDao = sqlSession.getMapper(QnaDao.class);
		qnaDao.updateQna(bean);
		
	}
	
}
