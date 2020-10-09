package com.proj.yollowa.controller.lodgement;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

<<<<<<< HEAD
import com.proj.yollowa.model.entity.lodgement.LodgementDetailPageDto;
=======
import com.google.gson.Gson;
>>>>>>> 5c6a61a74056b9a4a4e38693406fac231e1b95ed
import com.proj.yollowa.model.entity.lodgement.LodgementRoomInfoVo;
import com.proj.yollowa.model.entity.lodgement.LodgementVo;
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
		
		List<LodgementDetailPageDto> list=lodgementService.lodgementDetail(an,model);
		
		return (Object) list;
	}
	
	@RequestMapping(value="list/priceSelect", method=RequestMethod.POST)
	public Object priceSelect(HttpServletRequest req) {
//		System.out.println(req.getParameter("lodgementNumber"));
		int lodgementNumber = Integer.parseInt(req.getParameter("lodgementNumber"));
		int price = lodgementService.priceSelect(lodgementNumber);
		return price;
	}
	
	
//	@RequestMapping(value="list/lodgementSearch")
//	public Object lodgementListSearch(HttpServletRequest req) {
//		String searchVal = req.getParameter("searchVal");
//		System.out.println(searchVal);
//		
//		List<LodgementVo> list = lodgementService.lodgementListSearch(searchVal);
//		
//		return null;
//	}
	
//	@RequestMapping(value="list/selectOption", method=RequestMethod.GET, produces = "application/json;charset=utf-8")
//	@ResponseBody
//	public Object selectOption(HttpServletRequest req, Model model) {
//		String optionName = req.getParameter("optionName");
//		List<LodgementVo> list = lodgementService.selectOption(optionName, model);
//		
//		System.out.println(optionName+" 리스트 :: "+list);
//		
//		Map<String, List<LodgementVo>> map = new HashMap<String, List<LodgementVo>>();
//		map.put("key", list);
//		
//		Gson gson = new Gson();
//		String JSON= gson.toJson(map);
//		
//		
//		return JSON;
//	}
	
}





