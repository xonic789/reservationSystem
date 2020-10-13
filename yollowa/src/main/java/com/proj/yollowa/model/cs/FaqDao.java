package com.proj.yollowa.model.cs;

import java.sql.SQLException;
import java.util.List;

import com.proj.yollowa.model.entity.SearchVo;
import com.proj.yollowa.model.entity.cs.FaqVo;


public interface FaqDao{

	List<FaqVo> getFaqList(SearchVo searchVo) throws SQLException;
	FaqVo getFaq(int faqno) throws SQLException;
	int countFaq(SearchVo searchVo) throws SQLException;
	void deleteFaq(int faqno) throws SQLException;
	void insertFaq(FaqVo bean) throws SQLException;
	void updateFaq(FaqVo bean) throws SQLException;
}