package com.edusmart.dao;

import java.util.ArrayList;
import java.util.List;

public class GetList {

	List<UserProfileTB> facultyList=new ArrayList<UserProfileTB>();
	public List<UserProfileTB> getFacultyList() {
		return facultyList;
	}

	public void setFacultyList(List<UserProfileTB> facultyList) {
		this.facultyList = facultyList;
	}
	int value;
	public int getValue() {
		return value;
	}

	public void setValue(int value) {
		this.value = value;
	}
	
}
