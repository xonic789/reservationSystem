package com.proj.yollowa.model.service.host;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.proj.yollowa.model.entity.UserVo;

public interface HostActivityService {

	// host/ -> 사업자 액티비티글 리스트
	void selectHostLodgementList(Model model, UserVo userVo);

	
}
