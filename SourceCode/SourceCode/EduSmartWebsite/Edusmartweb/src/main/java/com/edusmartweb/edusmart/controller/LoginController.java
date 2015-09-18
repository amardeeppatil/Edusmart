package com.edusmartweb.edusmart.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.edusmartweb.edusmart.dao.CommonController;
import com.edusmartweb.edusmart.model.AboutTB;
import com.edusmartweb.edusmart.model.AcademyTB;
import com.edusmartweb.edusmart.model.UserProfileTB;

@Controller
public class LoginController {
	private UserProfileTB user;/*
								 * UserProfileTB.class.cast(ServletActionContext.
								 * getRequest
								 * ().getSession().getAttribute("USER"));
								 */
	private String qquery3 = "academyTB = 1";// +
												// user.getAcademy().getAcademyId()
												// + "'  ORDER BY aboutId DESC";
	private List<AboutTB> academyProfilePostList = new ArrayList<AboutTB>();
	private List<UserProfileTB> facultyList=new ArrayList<UserProfileTB>();
	private List<UserProfileTB> centerList=new ArrayList<UserProfileTB>();

	

	@RequestMapping(value = "login")
	public String userLogin(HttpServletRequest request) {
		System.out.println("in userLogin for post....");
       //model.addAttribute("greetings", "I came from Model not ModelAttribute");
		academyProfilePostList=(List)CommonController.getAllObjects(AboutTB.class,qquery3);
		request.setAttribute("academyProfilePostList", academyProfilePostList);
		System.out.println("postList>>>>>>>>"+academyProfilePostList);
		
		facultyList=(List)CommonController.getAllObjects(UserProfileTB.class, "Status = 1 and UserType = 3");
		request.setAttribute("facultyList", facultyList);
		System.out.println("facultyList>>>>>>>>"+facultyList);
		
		centerList=(List)CommonController.getAllObjects(UserProfileTB.class, "Status = 1 and UserType = 2");
		request.setAttribute("centerList", centerList);
		System.out.println("centerList>>>>>>>>"+centerList);
		
        return "academyProfile";

	}

	public List<AboutTB> getAcademyProfilePostList() {
		return academyProfilePostList;
	}

	public void setAcademyProfilePostList(List<AboutTB> academyProfilePostList) {
		this.academyProfilePostList = academyProfilePostList;
	}
	public List<UserProfileTB> getFacultyList() {
		return facultyList;
	}

	public void setFacultyList(List<UserProfileTB> facultyList) {
		this.facultyList = facultyList;
	}
	
	public List<UserProfileTB> getCenterList() {
		return centerList;
	}

	public void setCenterList(List<UserProfileTB> centerList) {
		this.centerList = centerList;
	}

}
