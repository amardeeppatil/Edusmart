package com.edusmartweb.edusmart.service;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.ui.Model;
import com.edusmartweb.edusmart.dao.CommonController;
import com.edusmartweb.edusmart.model.AboutTB;
import com.edusmartweb.edusmart.model.UserProfileTB;

public class AcademyLevelService {
	private List<UserProfileTB> facultyList=new ArrayList<UserProfileTB>();
	private List<AboutTB> academyProfilePostList = new ArrayList<AboutTB>();
	private List<UserProfileTB> centerList=new ArrayList<UserProfileTB>();
public Model listAllInfo(HttpServletRequest request, Model model) {
	try{
	
		UserProfileTB user= UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
        String qquery3 = "academyTB ='" +user.getAcademy().getAcademyId()+ "'  ORDER BY aboutId DESC";
		
		academyProfilePostList=(List)CommonController.getAllObjects(AboutTB.class,qquery3);
		model.addAttribute("academyProfilePostList", academyProfilePostList);
		
		facultyList=(List)CommonController.getAllObjects(UserProfileTB.class, "Status = 1 and UserType = 3");
        model.addAttribute("facultyList", facultyList);
		
        
        centerList=(List)CommonController.getAllObjects(UserProfileTB.class, "Status = 1 and UserType = 2");
        model.addAttribute("centerList", centerList);
        
	}catch(Exception e){e.printStackTrace();}
	
	return model;
}
}
