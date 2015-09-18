package com.edusmart.dao;

public class BatchMasterTB {
	int BatchId;
	int BranchId;
	int CourseID;
	String BatchName;
	String BatchCode;
	int NoOfSeat;
	String BatchStartDate;
	String BatchEndDate;
	int Status;
	int UserID;

	public int getBatchId() {
		return BatchId;
	}
	public void setBatchId(int batchId) {
		BatchId = batchId;
	}
	public int getBranchId() {
		return BranchId;
	}
	public void setBranchId(int branchId) {
		BranchId = branchId;
	}
	public int getCourseID() {
		return CourseID;
	}
	public void setCourseID(int courseID) {
		CourseID = courseID;
	}
	public String getBatchName() {
		return BatchName;
	}
	public void setBatchName(String batchName) {
		BatchName = batchName;
	}
	public String getBatchCode() {
		return BatchCode;
	}
	public void setBatchCode(String batchCode) {
		BatchCode = batchCode;
	}
	public int getNoOfSeat() {
		return NoOfSeat;
	}
	public void setNoOfSeat(int noOfSeat) {
		NoOfSeat = noOfSeat;
	}
	public String getBatchStartDate() {
		return BatchStartDate;
	}
	public void setBatchStartDate(String batchStartDate) {
		BatchStartDate = batchStartDate;
	}
	public String getBatchEndDate() {
		return BatchEndDate;
	}
	public void setBatchEndDate(String batchEndDate) {
		BatchEndDate = batchEndDate;
	}
	public int getStatus() {
		return Status;
	}
	public void setStatus(int status) {
		Status = status;
	}
	public int getUserID() {
		return UserID;
	}
	public void setUserID(int userID) {
		UserID = userID;
	}
}
