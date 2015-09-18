package com.edusmartweb.edusmart.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;

@Entity
public class FacultyTb {

	@Id
	@GeneratedValue
	private int facultyId;
	private String displayName;
	private String status;
	private String city;
	private String state;
	private String officialMail;
	private String officialContact;
	private String course;
	private String subject;
	private String level;
	private String licensNo;
	private String registrtionDate;
	
	/*@ManyToMany
	private Set<CourseTB> courseTB= new HashSet<CourseTB>(0);
	
	@ManyToMany
	private Set <AcademyTB> academyTB=new HashSet<AcademyTB>(0);*/

	public FacultyTb() {
		super();
		// TODO Auto-generated constructor stub
	}

	
//	public Set<CourseTB> getCourseTB() {
//		return courseTB;
//	}
//
//
//	public void setCourseTB(Set<CourseTB> courseTB) {
//		this.courseTB = courseTB;
//	}






	public String getRegistrtionDate() {
		return registrtionDate;
	}

	public FacultyTb(int facultyId, String displayName, String status,
			String city, String state, String officialMail,
			String officialContact, String course, String subject,
			String level, String licensNo, String registrtionDate) {
		super();
		this.facultyId = facultyId;
		this.displayName = displayName;
		this.status = status;
		this.city = city;
		this.state = state;
		this.officialMail = officialMail;
		this.officialContact = officialContact;
		this.course = course;
		this.subject = subject;
		this.level = level;
		this.licensNo = licensNo;
		this.registrtionDate = registrtionDate;
	}


	public void setRegistrtionDate(String registrtionDate) {
		this.registrtionDate = registrtionDate;
	}

	

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getDisplayName() {
		return displayName;
	}

	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}

	
	public int getFacultyId() {
		return facultyId;
	}

	public void setFacultyId(int facultyId) {
		this.facultyId = facultyId;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getOfficialMail() {
		return officialMail;
	}

	public void setOfficialMail(String officialMail) {
		this.officialMail = officialMail;
	}

	public String getOfficialContact() {
		return officialContact;
	}

	public void setOfficialContact(String officialContact) {
		this.officialContact = officialContact;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public String getLicensNo() {
		return licensNo;
	}

	public void setLicensNo(String licensNo) {
		this.licensNo = licensNo;
	}

	
}
