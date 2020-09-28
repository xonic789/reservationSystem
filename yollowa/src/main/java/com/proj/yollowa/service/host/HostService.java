package com.proj.yollowa.service.host;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.proj.yollowa.model.entity.AddLodgementPageDto;
import com.proj.yollowa.model.entity.UserVo;

public interface HostService {
	
	UserVo HostDetail(Model model, int user_number) throws SQLException;
	
	// host/ -> 사업자 글 리스트
	void selectHostLodgementList(Model model,int user_number);

	
	
	// host/ladd -> lodgement insert 
	void insertLodgement(int user_number, AddLodgementPageDto bean) throws SQLException;

	// host/ladd -> lodgement_number select
	int selectLodgementNumber(int user_number, AddLodgementPageDto bean) throws SQLException;

	// host/ladd -> lodgement_img upload
	String uploadLodgementImg(AddLodgementPageDto bean, int lodgementNumber, HttpServletRequest req) throws SQLException,IllegalStateException, IOException;
	
	// host/ladd -> lodgement_img update
	void updateLodgementImg(int lodgementNumber, String lodgement_img) throws SQLException;

	// host/ladd -> lodgement information insert
	void insertLodgeInfo(int lodgementNumber, AddLodgementPageDto bean) throws SQLException;



}
