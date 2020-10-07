package com.proj.yollowa.model.cs;

import java.sql.SQLException;
import java.util.List;

import com.proj.yollowa.model.entity.cs.QnaReplyVo;

public interface QnaReplyDao {
	List<QnaReplyVo> listQnaReply(int qnano) throws SQLException;
	void createQnaReply(QnaReplyVo qnaReplyVo) throws SQLException;
	void updateQnaReply(QnaReplyVo qnaReplyVo) throws SQLException;
	void deleteQnaReply(int replyNo) throws SQLException;
}
