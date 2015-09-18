package com.edusmartweb.edusmart.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class SendRequestDetails {
	
	@Id
	@GeneratedValue
	private int requestId;
	@OneToOne
	private FacultyTb facultyTb;
	@OneToOne
	private AcademyTB academyTB;
	@OneToOne
	private UserProfileTB userProfileTB;
	public UserProfileTB getUserProfileTB() {
		return userProfileTB;
	}
	public void setUserProfileTB(UserProfileTB userProfileTB) {
		this.userProfileTB = userProfileTB;
	}
	private String subject;
	private int fromWho;
	private int toWhom;
	private String date;
	private String status;
	
	public SendRequestDetails() {
		// TODO Auto-generated constructor stub
	}
	public int getRequestId() {
		return requestId;
	}
	public void setRequestId(int requestId) {
		this.requestId = requestId;
	}
	public FacultyTb getFacultyTb() {
		return facultyTb;
	}
	public void setFacultyTb(FacultyTb facultyTb) {
		this.facultyTb = facultyTb;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	
	
	public int getFromWho() {
		return fromWho;
	}
	public void setFromWho(int fromWho) {
		this.fromWho = fromWho;
	}
	public int getToWhom() {
		return toWhom;
	}
	public void setToWhom(int toWhom) {
		this.toWhom = toWhom;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public AcademyTB getAcademyTB() {
		return academyTB;
	}
	public void setAcademyTB(AcademyTB academyTB) {
		this.academyTB = academyTB;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
	
	
}
