package com.proj.yollowa.model.service.cs;

import java.sql.SQLException;
import java.util.List;

import com.proj.yollowa.model.entity.cs.QnaReplyVo;

public interface QnaReplyService {
	List<QnaReplyVo> listQnaReplyService(int qnano) throws SQLException;
	void createQnaReplyService(QnaReplyVo qnaReplyVo) throws SQLException;
	void updateQnaReplyService(QnaReplyVo qnaReplyVo) throws SQLException;
	void deleteQnaReplyService(int replyNo) throws SQLException;
	int countReplyService(int qnano) throws SQLException;
}
