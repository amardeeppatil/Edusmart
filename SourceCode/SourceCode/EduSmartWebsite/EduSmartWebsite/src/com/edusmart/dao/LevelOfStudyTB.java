package com.edusmart.dao;

public class LevelOfStudyTB {
	int LevelId;
	String LevelName;
	int Status;
	int CourseId;
	int UserId;
	
	public int getLevelId() {
		return LevelId;
	}
	public void setLevelId(int levelId) {
		LevelId = levelId;
	}
	public String getLevelName() {
		return LevelName;
	}
	public void setLevelName(String levelName) {
		LevelName = levelName;
	}
	public int getStatus() {
		return Status;
	}
	public void setStatus(int status) {
		Status = status;
	}
	public int getCourseId() {
		return CourseId;
	}
	public void setCourseId(int courseId) {
		CourseId = courseId;
	}
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
	
	
}
