package com.proj.yollowa.model.service.cs;

import java.sql.SQLException;
import java.util.List;

import org.springframework.ui.Model;

import com.proj.yollowa.model.entity.SearchVo;
import com.proj.yollowa.model.entity.cs.FaqVo;

public interface FaqService {
	List<FaqVo> getFaqListService(SearchVo searchVo) throws SQLException;
	void getFaqService(Model model, int faqno) throws SQLException;
	int countFaqService(SearchVo searchVo) throws SQLException;
	void deleteFaqService(int faqno) throws SQLException;
	void insertFaqService(FaqVo bean) throws SQLException;
	void updateFaqService(FaqVo bean) throws SQLException;
	boolean isWritedManagerService(int faqno, String managerId) throws SQLException;
}
