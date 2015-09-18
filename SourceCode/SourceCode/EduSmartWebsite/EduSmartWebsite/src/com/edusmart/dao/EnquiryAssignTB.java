package com.edusmart.dao;

public class EnquiryAssignTB {
	int ID;
	int EmpId;
	int	AssignedBy;
	String AssignDate;
	int Status;
	String EMPENQSTATUS;
	EnquiryTB enquiry;
	
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public EnquiryTB getEnquiry() {
		return enquiry;
	}
	public void setEnquiry(EnquiryTB enquiry) {
		this.enquiry = enquiry;
	}
	public int getEmpId() {
		return EmpId;
	}
	public void setEmpId(int empId) {
		EmpId = empId;
	}
	public int getAssignedBy() {
		return AssignedBy;
	}
	public void setAssignedBy(int assignedBy) {
		AssignedBy = assignedBy;
	}
	public String getAssignDate() {
		return AssignDate;
	}
	public void setAssignDate(String assignDate) {
		AssignDate = assignDate;
	}
	public int getStatus() {
		return Status;
	}
	public void setStatus(int status) {
		Status = status;
	}
	public String getEMPENQSTATUS() {
		return EMPENQSTATUS;
	}
	public void setEMPENQSTATUS(String eMPENQSTATUS) {
		EMPENQSTATUS = eMPENQSTATUS;
	}
}
