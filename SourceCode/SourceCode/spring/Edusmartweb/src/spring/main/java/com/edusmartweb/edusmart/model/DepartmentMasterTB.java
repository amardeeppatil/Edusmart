package com.edusmartweb.edusmart.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
@Entity
public class DepartmentMasterTB {

	@Id
	@GeneratedValue
	int DeparmentId;
	String DeptName;
	int Status;
	public int getDeparmentId() {
		return DeparmentId;
	}
	public void setDeparmentId(int deparmentId) {
		DeparmentId = deparmentId;
	}
	public String getDeptName() {
		return DeptName;
	}
	public void setDeptName(String deptName) {
		DeptName = deptName;
	}
	public int getStatus() {
		return Status;
	}
	public void setStatus(int status) {
		Status = status;
	}
}