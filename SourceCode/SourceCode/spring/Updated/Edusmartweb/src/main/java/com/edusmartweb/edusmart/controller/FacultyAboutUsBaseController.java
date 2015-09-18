package com.edusmartweb.edusmart.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.edusmartweb.edusmart.dao.CommonController;
import com.edusmartweb.edusmart.model.AcademyTB;
import com.edusmartweb.edusmart.model.FacultyTb;
import com.edusmartweb.edusmart.model.UserProfileTB;
import com.edusmartweb.edusmart.service.AboutUsService;

@Controller
public class FacultyAboutUsBaseController {
	private AboutUsService aboutUsServiceObj=new AboutUsService();
	@RequestMapping(value="facultyAboutPage")
	public String displayFacultyAboutPage(HttpServletRequest request,Model model){
		UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
		String qquery = "UserId = '" + user.getUserId()+ "'";	
		 List<UserProfileTB> facultyList = (List) CommonController.getAllObjects(UserProfileTB.class, qquery);
		 model=aboutUsServiceObj.facultyAboutUsList(request, model);
		 model.addAttribute("facultyList", facultyList);
		
		 return "facultyAboutPage";
	}
	
	

	
	
}
