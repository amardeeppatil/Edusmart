package com.edusmartweb.edusmart.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
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
	private String EntryDate;
	@ManyToOne
	private AcademyTB Academy;
	@OneToOne
	private UserProfileTB userProfileTB;
	@ManyToMany
	private Set<SubjectLevelTB>subjectLevelTBset=new HashSet<SubjectLevelTB>();
	@ManyToMany(mappedBy = "facultyTbset")
	private Set<CourseTB> courseTBset=new HashSet<CourseTB>();
	  
	public FacultyTb() {
		super();
		// TODO Auto-generated constructor stub
	}
	public FacultyTb(int facultyId, String displayName, String status,
			String city, String state, String officialMail,
			String officialContact, String course, String subject,
			String level, String licensNo, String registrtionDate,
			String entryDate, AcademyTB academy, UserProfileTB userProfileTB,
			Set<CourseTB> courseTBset) {
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
		EntryDate = entryDate;
		Academy = academy;
		this.userProfileTB = userProfileTB;
		this.courseTBset = courseTBset;
	}




	public int getFacultyId() {
		return facultyId;
	}




	public void setFacultyId(int facultyId) {
		this.facultyId = facultyId;
	}




	public String getDisplayName() {
		return displayName;
	}




	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}




	public String getStatus() {
		return status;
	}




	public void setStatus(String status) {
		this.status = status;
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




	public String getRegistrtionDate() {
		return registrtionDate;
	}




	public void setRegistrtionDate(String registrtionDate) {
		this.registrtionDate = registrtionDate;
	}




	public String getEntryDate() {
		return EntryDate;
	}




	public void setEntryDate(String entryDate) {
		EntryDate = entryDate;
	}




	public AcademyTB getAcademy() {
		return Academy;
	}




	public void setAcademy(AcademyTB academy) {
		Academy = academy;
	}




	public UserProfileTB getUserProfileTB() {
		return userProfileTB;
	}




	public void setUserProfileTB(UserProfileTB userProfileTB) {
		this.userProfileTB = userProfileTB;
	}




	public Set<CourseTB> getCourseTBset() {
		return courseTBset;
	}




	public void setCourseTBset(Set<CourseTB> courseTBset) {
		this.courseTBset = courseTBset;
	}

	
	
	
}
