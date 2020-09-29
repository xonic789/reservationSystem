package com.proj.yollowa.model.service.lodgement;

import java.sql.SQLException;
import java.util.List;

import org.springframework.ui.Model;

import com.proj.yollowa.model.entity.lodgement.LodgementVo;

public interface LodgementService {

	void lodgementListAll(Model model) throws SQLException;

	List<LodgementVo> lodgementDetail(int number, Model model) throws SQLException;

}