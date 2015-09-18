package com.edusmart.dao;

public class FacultySubjectTB {

	int FacultySubjectId;
	int BranchID;
	int CourseID;
	int LevelId;
	int SubjectId;
	int ModeId;
	int Status;
	String ApprovalStatus;
	int UserId;
	String FromDate;
	String ToDate;
	String FromTime;
	String ToTime;
	int Capacity;
	double TuitionFee;
	UserProfileTB faculty;
	
	public int getFacultySubjectId() {
		return FacultySubjectId;
	}
	public void setFacultySubjectId(int facultySubjectId) {
		FacultySubjectId = facultySubjectId;
	}
	public int getBranchID() {
		return BranchID;
	}
	public void setBranchID(int branchID) {
		BranchID = branchID;
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
	public int getSubjectId() {
		return SubjectId;
	}
	public void setSubjectId(int subjectId) {
		SubjectId = subjectId;
	}
	public int getModeId() {
		return ModeId;
	}
	public void setModeId(int modeId) {
		ModeId = modeId;
	}
	public int getStatus() {
		return Status;
	}
	public void setStatus(int status) {
		Status = status;
	}
	public String getApprovalStatus() {
		return ApprovalStatus;
	}
	public void setApprovalStatus(String approvalStatus) {
		ApprovalStatus = approvalStatus;
	}
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
	public String getFromDate() {
		return FromDate;
	}
	public void setFromDate(String fromDate) {
		FromDate = fromDate;
	}
	public String getToDate() {
		return ToDate;
	}
	public void setToDate(String toDate) {
		ToDate = toDate;
	}
	public String getFromTime() {
		return FromTime;
	}
	public void setFromTime(String fromTime) {
		FromTime = fromTime;
	}
	public String getToTime() {
		return ToTime;
	}
	public void setToTime(String toTime) {
		ToTime = toTime;
	}
	public int getCapacity() {
		return Capacity;
	}
	public void setCapacity(int capacity) {
		Capacity = capacity;
	}
	public double getTuitionFee() {
		return TuitionFee;
	}
	public void setTuitionFee(double tuitionFee) {
		TuitionFee = tuitionFee;
	}
	public UserProfileTB getFaculty() {
		return faculty;
	}
	public void setFaculty(UserProfileTB faculty) {
		this.faculty = faculty;
	}
}
