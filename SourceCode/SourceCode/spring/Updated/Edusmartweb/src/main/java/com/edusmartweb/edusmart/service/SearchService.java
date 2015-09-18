package com.edusmartweb.edusmart.service;

import java.util.ArrayList;
import java.util.List;

import com.edusmartweb.edusmart.dao.CommonController;
import com.edusmartweb.edusmart.model.UserProfileTB;

public class SearchService {
	String query="";
	List<UserProfileTB> searchResult = new ArrayList<UserProfileTB>();
	public List<UserProfileTB> getSearchResult(String FName)
	{
		
		query="FName like '%"+FName+"%'";
		searchResult=(List)CommonController.getAllObjects(UserProfileTB.class,query);	
		
		return searchResult;
     }
}
