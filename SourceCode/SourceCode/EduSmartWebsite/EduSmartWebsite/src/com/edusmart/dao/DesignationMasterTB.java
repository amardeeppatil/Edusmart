package com.edusmart.dao;

public class DesignationMasterTB {
	int DesignationId;
	String DesignationName;
	int Status;
	int BranchId;
	
	public int getDesignationId() {
		return DesignationId;
	}
	public void setDesignationId(int designationId) {
		DesignationId = designationId;
	}
	public String getDesignationName() {
		return DesignationName;
	}
	public void setDesignationName(String designationName) {
		DesignationName = designationName;
	}
	public int getStatus() {
		return Status;
	}
	public void setStatus(int status) {
		Status = status;
	}
	public int getBranchId() {
		return BranchId;
	}
	public void setBranchId(int branchId) {
		BranchId = branchId;
	}
}
