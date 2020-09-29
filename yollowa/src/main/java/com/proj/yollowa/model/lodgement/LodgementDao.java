package com.proj.yollowa.model.lodgement;

import java.sql.SQLException;
import java.util.List;

import com.proj.yollowa.model.entity.lodgement.LodgementVo;

public interface LodgementDao {

	// 리스트 페이지
	public List<LodgementVo> lodgementListAll() throws SQLException;
	
	// 디테일 페이지
	public List<LodgementVo> lodgementDetail(int number) throws SQLException;
}
