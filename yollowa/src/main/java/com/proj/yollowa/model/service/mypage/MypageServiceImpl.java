package com.proj.yollowa.model.service.mypage;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.apache.commons.lang3.StringUtils;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.activity.ActivityVo;
import com.proj.yollowa.model.entity.lodgement.LodgementVo;
import com.proj.yollowa.model.entity.mypage.LReservInfoDto;
import com.proj.yollowa.model.mypage.MypageDao;
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
	public List<LReservInfoDto> lReservationInfoService(Model model, int user_number)
			throws SQLException {
		MypageDao mypageDao = sqlSession.getMapper(MypageDao.class);
		List<LReservInfoDto> reservInfo=mypageDao.getLreservationInfo(user_number);
		model.addAttribute("rsvinfo",reservInfo);
		return reservInfo;
	}

	@Override
	public List<LReservInfoDto> lUserCompletedInfoService(Model model, int user_number)
			throws SQLException {
		MypageDao mypageDao = sqlSession.getMapper(MypageDao.class);
		List<LReservInfoDto> list=mypageDao.getLuserCompletedInfo(user_number);
		model.addAttribute("usedinfo",list);
		
		return list;
	}

	@Override
	public List<LReservInfoDto> lUserCartInfoService(Model model, int user_number)
			throws SQLException {
		MypageDao mypageDao = sqlSession.getMapper(MypageDao.class);
		List<LReservInfoDto> list=mypageDao.getLuserCartInfo(user_number);
		model.addAttribute("cartinfo",list);
		return list;
	}

	@Override
	public void userWishListService(Model model, UserVo userVo,String service) throws SQLException {
		MypageDao mypageDao = sqlSession.getMapper(MypageDao.class);
		String aWishList=userVo.getUser_aWishList();
		String lWishList=userVo.getUser_lWishList();
		if(StringUtils.equals("activity", service)) {
			
			if(aWishList==null) {
				model.addAttribute("emptyList","비었습니다.");
			}else if(aWishList.contains("&")) {
				List<ActivityVo> list = new ArrayList<ActivityVo>();
				String[] wishList= aWishList.split("&");
				for(String userWish:wishList) {
					list.add(mypageDao.getAwishList(Integer.parseInt(userWish)));
				}
				model.addAttribute("wishList",list);
				return;
			}else {
				List<ActivityVo> list = new ArrayList<ActivityVo>();
				list.add(mypageDao.getAwishList(Integer.parseInt(aWishList)));
				model.addAttribute("wishList",list);
			}
			
		}else if(StringUtils.equals("lodgement",service )) {
			
			if(lWishList==null) {
				model.addAttribute("emptyList","비었습니다.");
			}else if(lWishList.contains("&")) {
				List<LodgementVo> list = new ArrayList<LodgementVo>();
				String[] wishList= lWishList.split("&");
				for(String userWish:wishList) {
					list.add(mypageDao.getLwishList(Integer.parseInt(userWish)));
				}
				model.addAttribute("wishList",list);
			}else {
				List<ActivityVo> list = new ArrayList<ActivityVo>();
				list.add(mypageDao.getAwishList(Integer.parseInt(lWishList)));
				model.addAttribute("wishList",list);
			}
		}
		
	}
	
	
}
