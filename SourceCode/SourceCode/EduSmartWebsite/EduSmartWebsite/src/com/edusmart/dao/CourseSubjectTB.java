package com.edusmart.dao;

public class CourseSubjectTB {

	int SubjectId;
	String SubjectName;
	int CourseID;
	int LevelId;
	int Status;
	int ModeId;
	int Duration;
	int UserId;
	int BatchId;
	ModeOfCoachingTB mode;
	
	public ModeOfCoachingTB getMode() {
		return mode;
	}
	public void setMode(ModeOfCoachingTB mode) {
		this.mode = mode;
	}
	public int getSubjectId() {
		return SubjectId;
	}
	public void setSubjectId(int subjectId) {
		SubjectId = subjectId;
	}
	public String getSubjectName() {
		return SubjectName;
	}
	public void setSubjectName(String subjectName) {
		SubjectName = subjectName;
	}
	public int getModeId() {
		return ModeId;
	}
	public void setModeId(int modeId) {
		ModeId = modeId;
	}
	public int getCourseID() {
		return CourseID;
	}
	public void setCourseID(int courseID) {
		CourseID = courseID;
	}
	public int getLevelId() {
		return LevelId;
	}
	public void setLevelId(int levelId) {
		LevelId = levelId;
	}
	public int getStatus() {
		return Status;
	}
	public void setStatus(int status) {
		Status = status;
	}
	public int getDuration() {
		return Duration;
	}
	public void setDuration(int duration) {
		Duration = duration;
	}
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
	public int getBatchId() {
		return BatchId;
	}
	public void setBatchId(int batchId) {
		BatchId = batchId;
	}
}
