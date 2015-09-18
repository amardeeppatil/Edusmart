package com.edusmartweb.edusmart.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.edusmartweb.edusmart.dao.CommonController;
import com.edusmartweb.edusmart.model.AcademyTB;
import com.edusmartweb.edusmart.model.UserProfileTB;
import com.edusmartweb.edusmart.service.FacultyLevelService;
import com.edusmartweb.edusmart.service.SearchService;

@Controller
public class FacultyCenterBaseController {

	private List<UserProfileTB> centerList=new ArrayList<UserProfileTB>();
	 private SearchService searchService=new SearchService();
	 
	
	 
	@RequestMapping(value = "/searchCenter", method = RequestMethod.GET)
	public @ResponseBody
	List<UserProfileTB> searchCenterList(@RequestParam String FName) {
		return simulateSearchResult(FName);

	}

	private List<UserProfileTB> simulateSearchResult(String FName) {
		
		centerList=searchService.getSearchResult(FName);
		
		return centerList;
	}
	
	private FacultyLevelService facultyLevelService=new FacultyLevelService();
	
	@RequestMapping(value="facultyCenterPage")
	public String displayFacultyCenterPage(HttpServletRequest request,Model model){
		
		UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
		centerList=(List)CommonController.getAllObjects(UserProfileTB.class, "Status = 1 and UserType = 2");
		model.addAttribute("centerList", centerList);
		
		
		String qquery1 = "AcademyId = '" + user.getAcademy().getAcademyId() + "'";	
		List<AcademyTB> academyList = (List) CommonController.getAllObjects(AcademyTB.class, qquery1);
		model.addAttribute("academyList", academyList);
		 
		return "facultyCenterPage";
	}
	
}
