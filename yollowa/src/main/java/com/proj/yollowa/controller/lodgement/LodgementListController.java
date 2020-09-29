package com.proj.yollowa.controller.lodgement;

import java.sql.SQLException;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.proj.yollowa.model.service.lodgement.LodgementService;

@Controller
@RequestMapping("/lodgement/")
public class LodgementListController {
	
	@Inject
	LodgementService lodgementService;
	
	@RequestMapping("list")
	public String list(Model model) throws SQLException {
		lodgementService.lodgementListAll(model);
		
		return "lodgement/lodgementList";
	}

	@RequestMapping("detail/{lodgement_number}")
	public String lodgementDetail(@PathVariable("lodgement_number") int number,Model model) throws SQLException {
		lodgementService.lodgementDetail(number,model);
		
		return "lodgement/lodgementDetail";
	}
}





