package com.edusmartweb.edusmart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FacultyBaseController {
	@RequestMapping(value="facultyProfile")
	public String facultyProfile(){
		System.out.println("In Faculty Controller");
		
		return "facultyProfile";
	}
}
