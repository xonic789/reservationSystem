package com.proj.yollowa.model.service.mypage;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.mypage.LReservInfoVo;
import com.proj.yollowa.model.mypage.MypageDao;
import com.proj.yollowa.model.user.UserDao;
@Service
public class MypageServiceImpl implements MypageService{

	@Inject
	SqlSession sqlSession;
	
	@Override
	public UserVo userDetailService(Model model,int user_number) throws SQLException {
		MypageDao myPageDao = sqlSession.getMapper(MypageDao.class);
		UserVo userVo = myPageDao.userDetail(user_number);
		
		model.addAttribute("userVo",userVo);
		return userVo;
	}

	@Override
	public List<LReservInfoVo> lReservationInfoService(Model model, int user_number)
			throws SQLException {
		MypageDao mypageDao = sqlSession.getMapper(MypageDao.class);
		List<LReservInfoVo> list=mypageDao.lReservationInfo(user_number);
		model.addAttribute("rsvinfo",list);
		
		return list;
	}

	@Override
	public List<LReservInfoVo> lUserCompletedInfoService(Model model, int user_number)
			throws SQLException {
		MypageDao mypageDao = sqlSession.getMapper(MypageDao.class);
		List<LReservInfoVo> list=mypageDao.lUserCompletedInfo(user_number);
		model.addAttribute("usedinfo",list);
		
		return list;
	}

	@Override
	public List<LReservInfoVo> lUserCartInfoService(Model model, int user_number)
			throws SQLException {
		MypageDao mypageDao = sqlSession.getMapper(MypageDao.class);
		List<LReservInfoVo> list=mypageDao.lUserCartInfo(user_number);
		model.addAttribute("cartinfo",list);
		
		return list;
	}
	
	
}
