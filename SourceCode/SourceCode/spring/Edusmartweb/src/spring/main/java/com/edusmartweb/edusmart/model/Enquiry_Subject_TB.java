package com.edusmartweb.edusmart.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class Enquiry_Subject_TB {
	@Id
	@GeneratedValue
	int Enquiry_Subject_Id;
	@OneToOne
	EnquiryTB enquiry;
	int CourseSubjectID;
	int Branch_id;
	int UserID;
	
	public Enquiry_Subject_TB(){}
	
	public Enquiry_Subject_TB(EnquiryTB enquiry, int courseSubjectID,
			int branch_id, int userID) {
		super();
		this.enquiry = enquiry;
		CourseSubjectID = courseSubjectID;
		Branch_id = branch_id;
		UserID = userID;
	}
	
	public int getEnquiry_Subject_Id() {
		return Enquiry_Subject_Id;
	}
	public void setEnquiry_Subject_Id(int enquiry_Subject_Id) {
		Enquiry_Subject_Id = enquiry_Subject_Id;
	}
	public EnquiryTB getEnquiry() {
		return enquiry;
	}
	public void setEnquiry(EnquiryTB enquiry) {
		this.enquiry = enquiry;
	}
	public int getCourseSubjectID() {
		return CourseSubjectID;
	}
	public void setCourseSubjectID(int courseSubjectID) {
		CourseSubjectID = courseSubjectID;
	}
	public int getBranch_id() {
		return Branch_id;
	}
	public void setBranch_id(int branch_id) {
		Branch_id = branch_id;
	}
	public int getUserID() {
		return UserID;
	}
	public void setUserID(int userID) {
		UserID = userID;
	}
	
}
