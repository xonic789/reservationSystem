package com.proj.yollowa.controller.host;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.proj.yollowa.model.entity.LodgementVo;

@Controller
@RequestMapping("/host")
public class HostLodgementController {

	@RequestMapping(value="/ladd", method=RequestMethod.GET)
	public String laddPage() {
		return "host/addLodgement";
	}
	
	@RequestMapping(value="/ladd", method=RequestMethod.POST)
	public void addLadgement(@ModelAttribute LodgementVo bean) {
		System.out.println(bean.toString());
		
	}
	
	@RequestMapping(value="/addRoom", method=RequestMethod.GET)
	public String addRoomPage() {
		
		return "host/addRoom";
	}
}
