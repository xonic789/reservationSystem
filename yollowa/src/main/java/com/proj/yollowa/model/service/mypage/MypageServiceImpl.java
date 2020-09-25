package com.proj.yollowa.model.service.mypage;

import java.sql.SQLException;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.mypage.MypageDao;
import com.proj.yollowa.model.user.UserDao;
@Service
public class MypageServiceImpl implements MypageService{

	@Inject
	SqlSession sqlSession;
	
	@Override
	public UserVo userDetailService(Model model,int user_number) throws SQLException {
		MypageDao myPageDao =sqlSession.getMapper(MypageDao.class);
		UserVo userVo = myPageDao.userDetail(user_number);
		
		model.addAttribute("userVo",userVo);
		
		return userVo;
	}
}
