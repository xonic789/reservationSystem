package com.proj.yollowa.model.service.cs;

import java.sql.SQLException;
import java.util.List;

import org.springframework.ui.Model;

import com.proj.yollowa.model.entity.SearchVo;
import com.proj.yollowa.model.entity.cs.NoticeVo;
import com.proj.yollowa.model.entity.cs.PagingScaleVo;
import com.proj.yollowa.model.entity.cs.QnaVo;


public interface QnaService {

	List<QnaVo> getQnaListService(SearchVo searchVo) throws SQLException;
	void getQnaService(Model model, int qnano) throws SQLException;
	int countQnaService(SearchVo searchVo) throws SQLException;
	void deleteQnaService(int qnano) throws SQLException;
	void insertQnaService(QnaVo bean) throws SQLException;
	void updateQnaService(QnaVo bean) throws SQLException;
}
