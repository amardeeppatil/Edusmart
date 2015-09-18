package com.edusmartweb.edusmart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FacultyStudentsBaseController {
	
	@RequestMapping(value="facultyStudentsPage")
	public String displayFacultyStudentsPage(){
		
		
		return "facultyStudentsPage";
	}

}
