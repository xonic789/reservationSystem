package com.proj.yollowa.controller.mypage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypage")
public class MypageController {

	@RequestMapping("/")
	public String index() {
		
		
		return "mypage/mypageIndex";
	}
}
