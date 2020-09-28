package com.proj.yollowa.service.host;

import java.sql.SQLException;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.proj.yollowa.model.entity.AddLodgementPageDto;
import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.host.HostDao;

@Service
public class HostServiceImpl implements HostService {

	@Inject
	SqlSession sqlSession;
	
	@Override
	public UserVo HostDetail(Model model, int user_number) throws SQLException {
		HostDao hostDao = sqlSession.getMapper(HostDao.class);
		UserVo bean = hostDao.userDetail(user_number);
		model.addAttribute("host",bean);
		return bean;
	}

	@Override
	public void insertLodgement(int user_number, AddLodgementPageDto bean) throws SQLException {
		HostDao hostDao = sqlSession.getMapper(HostDao.class);
		
		// 해쉬태그
		String lodgement_hashTag = bean.getLodgement_hashTag().replaceAll(",", "&");
		bean.setLodgement_hashTag(lodgement_hashTag);
		
		// 타이틀 이미지
//		String lodgement_img = bean.getLodgement_img().replaceAll(",", "&");
//		bean.setLodgement_img(lodgement_img);
		
		
		hostDao.insertLodgement(user_number, bean);
	}

	@Override
	public int selectLodgementNumber(int user_number, AddLodgementPageDto bean) {
		HostDao hostDao = sqlSession.getMapper(HostDao.class);
		int lodgementNumber = hostDao.selectLodgementNum(user_number, bean);
		return lodgementNumber;
	}

	@Override
	public void insertLodgeInfo(int lodgementNumber, AddLodgementPageDto bean) {
		HostDao hostDao = sqlSession.getMapper(HostDao.class);
		
		// 공지사항
		if(bean.getInformation_notice().contains(",")) {
			String information_notice = bean.getInformation_notice().replaceAll(",", "&");
			bean.setInformation_notice(information_notice);
		}
		
		// 기본정보
		if(bean.getInformation_basicInfo().contains(",")) {
			String information_basicInfo = bean.getInformation_basicInfo().replaceAll(",", "&");
			bean.setInformation_basicInfo(information_basicInfo);
		}
		
		//인원 추가정보
		if(bean.getInformation_addPeopleInfo().contains(",")) {
			String information_addPeopleInfo = bean.getInformation_addPeopleInfo().replaceAll(",", "&");
			bean.setInformation_addPeopleInfo(information_addPeopleInfo);
		}
		
		// 편의시설 및 서비스
		if(bean.getInformation_service().contains(",")) {
			String information_service = bean.getInformation_service().replaceAll(",", "&");
			bean.setInformation_service(information_service);
		}
		
		// 취소 및 환불규정
		if(bean.getInformation_refundInfo().contains(",")) {
			String information_refundInfo = bean.getInformation_refundInfo().replaceAll(",", "&");
			bean.setInformation_refundInfo(information_refundInfo);
		}
		
		hostDao.insertLodgeInfo(lodgementNumber, bean);
	}

	@Override
	public void updateLodgementImg(int lodgementNumber, String lodgement_img) {
		HostDao hostDao = sqlSession.getMapper(HostDao.class);
		hostDao.updateLodgementImg(lodgementNumber, lodgement_img);
	}



}
