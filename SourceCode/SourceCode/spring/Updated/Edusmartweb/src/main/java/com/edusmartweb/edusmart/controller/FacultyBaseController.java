package com.edusmartweb.edusmart.controller;


import java.util.HashSet;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.edusmartweb.edusmart.dao.CommonController;
import com.edusmartweb.edusmart.model.CourseTB;
import com.edusmartweb.edusmart.model.FacultyAccount;
import com.edusmartweb.edusmart.model.FacultyDetailsTB;
import com.edusmartweb.edusmart.model.FacultyTb;
import com.edusmartweb.edusmart.model.SubjectLevelTB;
import com.edusmartweb.edusmart.model.UserProfileTB;

@Controller
public class FacultyBaseController {
	@RequestMapping(value="facultyRegistrationForm")
	public String facultyRegistration(){
		System.out.println("In Faculty Controller");
		
		return "facultyRegistration";
	}
	@RequestMapping("facultyProfile")
	public String facultyProfile()
	{		
			
	     return "facultyProfile";
	}

	@RequestMapping("facultySaveRegistrationForm")
	@ResponseBody
	public void facultySaveRegistrationDetails(@ModelAttribute("saveFacultyId") UserProfileTB userProfileTB)
	{
		System.out.println("In Faculty Controller");
		CommonController.saveOrUpdateObject(userProfileTB);
	
	}
	private Set<SubjectLevelTB> subjectLevelTBset=new HashSet<SubjectLevelTB>();
	private SubjectLevelTB subjectLevelTB=new SubjectLevelTB();
	private CourseTB courseTB;
	private Set<CourseTB> courseTBset=new HashSet<CourseTB>();
	
	
	
	private FacultyDetailsTB facultyDetailsTB=new FacultyDetailsTB();
	private FacultyTb facultyTb=new FacultyTb();
	@RequestMapping ("facultyInfoSave")
	public String saveAccountInfo(@ModelAttribute ("facultyAccount") FacultyAccount facultyAccount ,HttpServletRequest request ){
		
		UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
		facultyTb=(FacultyTb)CommonController.saveOrUpdateObject(facultyTb);
		String CASubjectArray[]=null,CSSubjectArray[]=null,CMASubjectArray[]=null;
	  
		if(request.getParameter("CA")!=null && request.getParameter("CA").equals("Yes"))
	    { 
	    	CSSubjectArray=request.getParameterValues("subjectLevelTB.CSsubjectName");
	    	CommonController.saveAllFacultySubjects(1,user,facultyTb,CSSubjectArray);
	    }
		if(request.getParameter("CS")!=null && request.getParameter("CS").equals("Yes"))
	    {
	    	CASubjectArray=request.getParameterValues("subjectLevelTB.CAsubjectName");
	    	CommonController.saveAllFacultySubjects(2,user,facultyTb,CASubjectArray);
	    }
	    
	    if(request.getParameter("CMA")!=null && request.getParameter("CMA").equals("Yes"))
	    {
	    	CMASubjectArray=request.getParameterValues("subjectLevelTB.CMAsubjectName");
	    	CommonController.saveAllFacultySubjects(3,user,facultyTb,CMASubjectArray);
	    }
	
		
		return "home";
		
	}
	
	

	
	@RequestMapping(value="facultyNotification")
	public String facultyNotification()
	{
		return "facultyNotification";
	}
	
	
	
	@RequestMapping ("sendRequestFacultyToAcademy")
	@ResponseBody
	public void sendRequestFacultyToAcademyFunction(HttpServletRequest request )
	  {
		/*String courseName[]= request.getParameterValues("courseName");
		String level[]= request.getParameterValues("level");
	 	System.out.println("call ajax function request snd successfully send "+courseName.length+  "  leves:  "+level.length);
	 	*/
		System.out.println("call");
	  }
	
}
