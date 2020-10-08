package com.proj.yollowa.controller.lodgement;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.proj.yollowa.model.entity.lodgement.LodgementRoomInfoVo;
import com.proj.yollowa.model.service.lodgement.LodgementService;


@RestController
@RequestMapping("/lodgement/")
public class LodgementAjaxController {
	
	@Inject
	LodgementService lodgementService;
	
	// 숙박 ajax
	@RequestMapping(value = "detail/{lodgement_number}/ajax",method = RequestMethod.POST)
	public Object lodgementAjax(HttpServletRequest req,Model model,@PathVariable("lodgement_number") int lodgement_number) throws SQLException{
		
		int an=Integer.parseInt(req.getParameter("articleNum"));
		
		List<LodgementRoomInfoVo> list=lodgementService.lodgementDetail(an,model);
		
		return (Object) list;
	}
	
	@RequestMapping(value="list/priceSelect", method=RequestMethod.POST)
	public Object priceSelect(HttpServletRequest req) {
		System.out.println(req.getParameter("lodgementNumber"));
		int lodgementNumber = Integer.parseInt(req.getParameter("lodgementNumber"));
		int price = lodgementService.priceSelect(lodgementNumber);
		return price;
	}
	
}





