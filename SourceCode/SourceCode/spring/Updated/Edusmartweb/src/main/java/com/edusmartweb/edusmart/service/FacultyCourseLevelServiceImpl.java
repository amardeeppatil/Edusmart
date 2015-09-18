package com.edusmartweb.edusmart.service;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.edusmartweb.edusmart.dao.CommonController;
import com.edusmartweb.edusmart.model.SubjectLevelTB;
import com.edusmartweb.edusmart.model.UserProfileTB;
import com.edusmartweb.edusmart.model.VirtualClassProduct;


public class FacultyCourseLevelServiceImpl {

	
	
	public static Model getAllCourseLevel(Model model,HttpServletRequest request,int facultyId){
		SubjectLevelTB subjectLevelTB=new SubjectLevelTB();
		SubjectLevelTB subjectLevelTB2=new SubjectLevelTB();
		
		 List<SubjectLevelTB> caLevels=new ArrayList<SubjectLevelTB>();
		 List<SubjectLevelTB> cmaLevels=new ArrayList<SubjectLevelTB>();
		 List<SubjectLevelTB> csLevels=new ArrayList<SubjectLevelTB>();
		 
	UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
	int courseIdCA=1;int courseIdCS=2;int courseIdCMA=3;
	
	caLevels=(List)CommonController.getAllObjects("select distinct (sub.level) from  SubjectLevelTB as sub, FacultyDetailsTB  as f,CourseTB as c where sub.courseTB='"+courseIdCA+"' and sub.courseTB=f.courseID and f.facultyID ='"+facultyId+"'");
	csLevels=(List)CommonController.getAllObjects("select distinct (sub.level) from  SubjectLevelTB as sub, FacultyDetailsTB  as f,CourseTB as c where sub.courseTB='"+courseIdCS+"' and sub.courseTB=f.courseID and f.facultyID ='"+facultyId+"'");
	cmaLevels=(List)CommonController.getAllObjects("select distinct (sub.level) from  SubjectLevelTB as sub, FacultyDetailsTB  as f,CourseTB as c where sub.courseTB='"+courseIdCMA+"' and sub.courseTB=f.courseID and f.facultyID ='"+facultyId+"'");
		
	model.addAttribute("caLevels", caLevels);
	model.addAttribute("csLevels", csLevels);
	model.addAttribute("cmaLevels", cmaLevels);
	return model;
	
	
	
	
}
	
	
	
	
	public static Map<String, List<SubjectLevelTB>> getAllCourseLevelData(HttpServletRequest request,int facultyId){
		Map<String, List<SubjectLevelTB>> resultMap = new LinkedHashMap<String, List<SubjectLevelTB>>();
		SubjectLevelTB subjectLevelTB=new SubjectLevelTB();
		SubjectLevelTB subjectLevelTB2=new SubjectLevelTB();
		
		 List<String> temp;
		 List<SubjectLevelTB> caLevels=new ArrayList<SubjectLevelTB>();
		 List<SubjectLevelTB> cmaLevels=new ArrayList<SubjectLevelTB>();
		 List<SubjectLevelTB> csLevels=new ArrayList<SubjectLevelTB>();
		 
	UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
	int courseIdCA=1;int courseIdCS=2;int courseIdCMA=3;
	
	
	temp=new ArrayList<String>();
	 temp = (List)CommonController.getAllObjects("select distinct (sub.level) from  SubjectLevelTB as sub, FacultyDetailsTB  as f,CourseTB as c where sub.courseTB='"+courseIdCA+"' and sub.courseTB=f.courseID and f.facultyID ='"+facultyId+"'");
	 
	for(String name: temp){
		caLevels.add(new SubjectLevelTB(name));
	}
	
	temp=new ArrayList<String>();
	temp=(List)CommonController.getAllObjects("select distinct (sub.level) from  SubjectLevelTB as sub, FacultyDetailsTB  as f,CourseTB as c where sub.courseTB='"+courseIdCS+"' and sub.courseTB=f.courseID and f.facultyID ='"+facultyId+"'");
	for(String name: temp){
		csLevels.add(new SubjectLevelTB(name));
	}
	
	temp=new ArrayList<String>();
	temp=(List)CommonController.getAllObjects("select distinct (sub.level) from  SubjectLevelTB as sub, FacultyDetailsTB  as f,CourseTB as c where sub.courseTB='"+courseIdCMA+"' and sub.courseTB=f.courseID and f.facultyID ='"+facultyId+"'");
	for(String name: temp){
		cmaLevels.add(new SubjectLevelTB(name));
	}
	
	resultMap.put("caLevels",caLevels);
	resultMap.put("csLevels",csLevels);
	resultMap.put("cmaLevels",cmaLevels);

	return resultMap;
	
	
	
	
}
	

}
