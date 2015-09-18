package com.edusmart.dao;

public class CallStatusMasterTB {
	int Id;
	String CallStatus;
	int BranchId;
	int UserId;
	int Status;
	
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getCallStatus() {
		return CallStatus;
	}
	public void setCallStatus(String callStatus) {
		CallStatus = callStatus;
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
