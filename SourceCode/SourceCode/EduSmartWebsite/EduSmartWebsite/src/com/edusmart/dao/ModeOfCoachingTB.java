package com.edusmart.dao;

import java.util.List;

public class ModeOfCoachingTB {
	int ModeId;
	String ModeName;
	int BranchId;
	int UserId;
	int Status;
	List<CourseSubjectTB> courseSubjects;
	
	public List<CourseSubjectTB> getCourseSubjects() {
		return courseSubjects;
	}
	public void setCourseSubjects(List<CourseSubjectTB> courseSubjects) {
		this.courseSubjects = courseSubjects;
	}
	public int getModeId() {
		return ModeId;
	}
	public void setModeId(int modeId) {
		ModeId = modeId;
	}
	public String getModeName() {
		return ModeName;
	}
	public void setModeName(String modeName) {
		ModeName = modeName;
	}
	public int getBranchId() {
		return BranchId;
	}
	public void setBranchId(int branchId) {
		BranchId = branchId;
	}
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
	public int getStatus() {
		return Status;
	}
	public void setStatus(int status) {
		Status = status;
	}
}
