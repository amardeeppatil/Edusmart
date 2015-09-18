package com.edusmartweb.edusmart.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.edusmartweb.edusmart.dao.CommonController;
import com.edusmartweb.edusmart.model.AboutTB;
import com.edusmartweb.edusmart.model.AcademyTB;
import com.edusmartweb.edusmart.model.NewsTB;
import com.edusmartweb.edusmart.model.UserProfileTB;

@Controller
public class BaseController {
	
	private NewsTB newstb = new NewsTB();

	@RequestMapping("home")
	public String welcome() {
		newstb = (NewsTB) CommonController.getObjectById(1,NewsTB.class);
		System.out.println("welcome method" + newstb);
		return "home";
	}
	
	
	@RequestMapping(value="dataCheck")
	public String dataCheck1(@ModelAttribute com.edusmartweb.edusmart.model.FormBindData sl)
	{
		System.out.println("FormBindData "+sl.getName());
		
		return "aboutPage";
	}
	@RequestMapping(value="academyNotification")
	public String academyNotification()
	{
		
		
		return "academyNotification";
	}
	
}