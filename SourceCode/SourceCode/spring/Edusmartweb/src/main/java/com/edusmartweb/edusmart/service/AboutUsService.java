package com.edusmartweb.edusmart.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import com.edusmartweb.edusmart.dao.CommonController;
import com.edusmartweb.edusmart.model.AboutTB;

import com.edusmartweb.edusmart.model.UserProfileTB;

public class AboutUsService {
		
	private List<AboutTB> aboutUsPostList = new ArrayList<AboutTB>();
	
public Model aboutUsList(HttpServletRequest request, Model model) {
	try{
		UserProfileTB user= UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
        String qquery3 = "academyTB ='" +user.getAcademy().getAcademyId()+ "'  ORDER BY aboutId DESC";
		
        aboutUsPostList=(List)CommonController.getAllObjects(AboutTB.class,qquery3);
		model.addAttribute("aboutUsPostList", aboutUsPostList);
				
	}catch(Exception e){e.printStackTrace();}
	
	return model;
}

}
