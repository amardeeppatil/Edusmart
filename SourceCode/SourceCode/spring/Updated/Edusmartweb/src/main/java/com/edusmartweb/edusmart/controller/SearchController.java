package com.edusmartweb.edusmart.controller;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.edusmartweb.edusmart.model.UserProfileTB;
import com.edusmartweb.edusmart.service.SearchService;


@Controller
public class SearchController {
	private List<UserProfileTB> facultyList=new ArrayList<UserProfileTB>();
	 private SearchService searchService=new SearchService();
	 
	@RequestMapping(value = "/searchFaculty", method = RequestMethod.GET)
	public @ResponseBody
	List<UserProfileTB> searchFacultyList(@RequestParam String FName) {
		return simulateSearchResult(FName);

	}

	private List<UserProfileTB> simulateSearchResult(String FName) {
		System.out.println("check list");
		facultyList=searchService.getSearchResult(FName);
		System.out.println("check list");
		return facultyList;
	}

	
}
