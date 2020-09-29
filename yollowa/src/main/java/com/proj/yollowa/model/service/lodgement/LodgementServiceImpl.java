package com.proj.yollowa.model.service.lodgement;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.proj.yollowa.model.entity.lodgement.LodgementVo;
import com.proj.yollowa.model.lodgement.LodgementDao;

@Service
public class LodgementServiceImpl implements LodgementService {

	@Inject
	SqlSession sqlSession;
	
	@Override
	public void lodgementListAll(Model model) throws SQLException {
		LodgementDao dao =sqlSession.getMapper(LodgementDao.class);
		List<LodgementVo> list= dao.lodgementListAll();
		model.addAttribute("list",list);
	}
	
	@Override
	public List<LodgementVo> lodgementDetail(int number,Model model) throws SQLException{
		LodgementDao dao=sqlSession.getMapper(LodgementDao.class);
		List<LodgementVo> list= dao.lodgementDetail(number);
		model.addAttribute("list",list);
		return list;
	}
	
}
