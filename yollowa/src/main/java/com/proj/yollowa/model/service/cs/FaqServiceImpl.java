package com.proj.yollowa.model.service.cs;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.proj.yollowa.model.cs.FaqDao;
import com.proj.yollowa.model.entity.SearchVo;
import com.proj.yollowa.model.entity.cs.FaqVo;

@Service
public class FaqServiceImpl implements FaqService{

	@Inject
	SqlSession sqlSession;

	@Override
	public List<FaqVo> getFaqListService(SearchVo searchVo) throws SQLException {
		FaqDao faqDao = sqlSession.getMapper(FaqDao.class);
		
		return faqDao.getFaqList(searchVo);
	}

	@Override
	public void getFaqService(Model model, int faqno) throws SQLException {
		FaqDao faqDao = sqlSession.getMapper(FaqDao.class);
		model.addAttribute("bean", faqDao.getFaq(faqno));		
	}

	@Override
	public int countFaqService(SearchVo searchVo) throws SQLException {
		FaqDao faqDao = sqlSession.getMapper(FaqDao.class);
		
		return faqDao.countFaq(searchVo);
	}

	@Override
	public void deleteFaqService(int faqno) throws SQLException {
		FaqDao faqDao = sqlSession.getMapper(FaqDao.class);
		
		faqDao.deleteFaq(faqno);
	}

	@Override
	public void insertFaqService(FaqVo bean) throws SQLException {
		FaqDao faqDao = sqlSession.getMapper(FaqDao.class);
		bean.setWriter("tester");
		faqDao.insertFaq(bean);
	}

	@Override
	public void updateFaqService(FaqVo bean) throws SQLException {
		FaqDao faqDao = sqlSession.getMapper(FaqDao.class);
		
		faqDao.updateFaq(bean);
	}




	
}
