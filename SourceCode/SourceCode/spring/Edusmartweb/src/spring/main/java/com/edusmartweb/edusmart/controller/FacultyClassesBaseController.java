package com.edusmartweb.edusmart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FacultyClassesBaseController {
	
	@RequestMapping(value="facultyClassesPage")
	public String displayFacultyClassPage(){
		
		return "facultyClassesPage";
	}

}
