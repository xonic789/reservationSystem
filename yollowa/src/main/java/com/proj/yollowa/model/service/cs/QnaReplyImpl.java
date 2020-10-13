package com.proj.yollowa.model.service.cs;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.proj.yollowa.model.cs.QnaDao;
import com.proj.yollowa.model.cs.QnaReplyDao;
import com.proj.yollowa.model.entity.cs.QnaReplyVo;

@Service
public class QnaReplyImpl implements QnaReplyService{

	@Inject
	SqlSession sqlSession;

	
	@Override
	public List<QnaReplyVo> listQnaReplyService(int qnano) throws SQLException {
		QnaReplyDao qnaReplyDao = sqlSession.getMapper(QnaReplyDao.class);
		return qnaReplyDao.listQnaReply(qnano);
	}

	@Override
	public void createQnaReplyService(QnaReplyVo qnaReplyVo) throws SQLException {
		QnaReplyDao qnaReplyDao = sqlSession.getMapper(QnaReplyDao.class);
		qnaReplyDao.createQnaReply(qnaReplyVo);
	}

	@Override
	public void updateQnaReplyService(QnaReplyVo qnaReplyVo) throws SQLException {
		QnaReplyDao qnaReplyDao = sqlSession.getMapper(QnaReplyDao.class);
		qnaReplyDao.updateQnaReply(qnaReplyVo);
	}

	@Override
	public void deleteQnaReplyService(int replyNo) throws SQLException {
		QnaReplyDao qnaReplyDao = sqlSession.getMapper(QnaReplyDao.class);
		qnaReplyDao.deleteQnaReply(replyNo);
	}
	
}
