package com.proj.yollowa.model.cs;

import java.sql.SQLException;
import java.util.List;

import com.proj.yollowa.model.entity.SearchVo;
import com.proj.yollowa.model.entity.cs.QnaVo;

public interface QnaDao {
	
	List<QnaVo> getQnaList(SearchVo searchVo) throws SQLException;
	QnaVo getQna(int qnano) throws SQLException;
	int countQna(SearchVo searchVo) throws SQLException;
	void deleteQna(int qnano) throws SQLException;
	void insertQna(QnaVo bean) throws SQLException;
	void updateQna(QnaVo bean) throws SQLException;
}
