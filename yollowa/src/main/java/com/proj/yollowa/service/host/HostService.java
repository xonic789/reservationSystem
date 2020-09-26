package com.proj.yollowa.service.host;

import java.sql.SQLException;

import org.springframework.ui.Model;

import com.proj.yollowa.model.entity.AddLodgementPageDto;
import com.proj.yollowa.model.entity.UserVo;

public interface HostService {
	
	UserVo HostDetail(Model model, int user_number) throws SQLException;
	
	// lodgement insert 
	void insertLodgement(int user_number, AddLodgementPageDto bean) throws SQLException;

	//lodgement_number select
	int selectLodgementNumber(int user_number, AddLodgementPageDto bean);

	// lodgement information insert
	void insertLodgeInfo(int lodgementNumber, AddLodgementPageDto bean);
}
