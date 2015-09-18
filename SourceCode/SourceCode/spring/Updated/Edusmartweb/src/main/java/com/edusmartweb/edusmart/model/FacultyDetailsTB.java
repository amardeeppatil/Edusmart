package com.edusmartweb.edusmart.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class FacultyDetailsTB {
	@Id
	@GeneratedValue
	private int id;
	private int facultyID;
	private int userDetailsID;
	private int courseID;
	private int subjectLevelID;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getFacultyID() {
		return facultyID;
	}

	public void setFacultyID(int facultyID) {
		this.facultyID = facultyID;
	}

	public int getCourseID() {
		return courseID;
	}

	public void setCourseID(int courseID) {
		this.courseID = courseID;
	}

	public int getSubjectLevelID() {
		return subjectLevelID;
	}

	public void setSubjectLevelID(int subjectLevelID) {
		this.subjectLevelID = subjectLevelID;
	}

	public int getUserDetailsID() {
		return userDetailsID;
	}

	public void setUserDetailsID(int userDetailsID) {
		this.userDetailsID = userDetailsID;
	}

}
