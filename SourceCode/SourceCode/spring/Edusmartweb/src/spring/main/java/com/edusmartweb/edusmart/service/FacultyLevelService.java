package com.edusmartweb.edusmart.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.edusmartweb.edusmart.dao.CommonController;

import com.edusmartweb.edusmart.model.UserProfileTB;

public class FacultyLevelService {

	private List<UserProfileTB> facultyList=new ArrayList<UserProfileTB>();

	private List<UserProfileTB> centerList=new ArrayList<UserProfileTB>();

	public Model fetchList(HttpServletRequest request, Model model) {

		try{

			facultyList=(List)CommonController.getAllObjects(UserProfileTB.class, "Status = 1 and UserType = 3");
			model.addAttribute("facultyList", facultyList);


			centerList=(List)CommonController.getAllObjects(UserProfileTB.class, "Status = 1 and UserType = 2");
			model.addAttribute("centerList", centerList);

		}catch(Exception e){e.printStackTrace();}

		return model;
	}

}
