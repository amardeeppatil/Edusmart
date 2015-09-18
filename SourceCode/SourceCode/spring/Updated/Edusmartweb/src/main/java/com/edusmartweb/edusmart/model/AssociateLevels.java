package com.edusmartweb.edusmart.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
@Entity
public class AssociateLevels {
	@Id
	@GeneratedValue
	private int associateLevelsId;
	private int facultyID;
	private int userDetailsID;
	private int courseID;
	private int subjectLevelID;
	private int requestID;
	public int getAssociateLevelsId() {
		return associateLevelsId;
	}
	public void setAssociateLevelsId(int associateLevelsId) {
		this.associateLevelsId = associateLevelsId;
	}
	public int getFacultyID() {
		return facultyID;
	}
	public void setFacultyID(int facultyID) {
		this.facultyID = facultyID;
	}
	public int getUserDetailsID() {
		return userDetailsID;
	}
	public void setUserDetailsID(int userDetailsID) {
		this.userDetailsID = userDetailsID;
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
	public int getRequestID() {
		return requestID;
	}
	public void setRequestID(int requestID) {
		this.requestID = requestID;
	}
	
	
	
}
