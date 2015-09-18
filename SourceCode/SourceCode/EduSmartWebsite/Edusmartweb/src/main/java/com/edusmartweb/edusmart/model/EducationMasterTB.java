package com.edusmartweb.edusmart.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
@Entity
public class EducationMasterTB {

	@Id
	@GeneratedValue
	int EducationId;
	String EducationName;
	int Status;
	
	public int getEducationId() {
		return EducationId;
	}
	public void setEducationId(int educationId) {
		EducationId = educationId;
	}
	public String getEducationName() {
		return EducationName;
	}
	public void setEducationName(String educationName) {
		EducationName = educationName;
	}
	public int getStatus() {
		return Status;
	}
	public void setStatus(int status) {
		Status = status;
	}
}
