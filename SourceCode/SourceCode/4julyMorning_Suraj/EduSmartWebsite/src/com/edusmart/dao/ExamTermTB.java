package com.edusmart.dao;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
@Entity
public class ExamTermTB {
	
	@Id
	@GeneratedValue
	int ExamTermId;
	String ExamTermName;
	int BranchId;
	int	Status;
	
	public int getExamTermId() {
		return ExamTermId;
	}
	public void setExamTermId(int examTermId) {
		ExamTermId = examTermId;
	}
	public String getExamTermName() {
		return ExamTermName;
	}
	public void setExamTermName(String examTermName) {
		ExamTermName = examTermName;
	}
	public int getBranchId() {
		return BranchId;
	}
	public void setBranchId(int branchId) {
		BranchId = branchId;
	}
	public int getStatus() {
		return Status;
	}
	public void setStatus(int status) {
		Status = status;
	}
}
