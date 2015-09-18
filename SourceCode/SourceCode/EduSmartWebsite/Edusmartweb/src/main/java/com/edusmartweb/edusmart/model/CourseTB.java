package com.edusmartweb.edusmart.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

public class CourseTB {

	@Id
	@GeneratedValue
	private int courseId;
	private String courseName;
    private int licenNo;
	@Column(name="cpt")
	@ManyToOne
	private Set<CourseSubjectTB> cptSet;
	
	@Column(name="ipc")
	@ManyToOne
	private Set<CourseSubjectTB> ipcSet;
	
	@Column(name="final")
	@ManyToOne
	private Set<CourseSubjectTB> finalSet;

	
	
	public CourseTB(int courseId, String courseName, int licenNo,
			Set<CourseSubjectTB> cptSet, Set<CourseSubjectTB> ipcSet,
			Set<CourseSubjectTB> finalSet) {
		super();
		this.courseId = courseId;
		this.courseName = courseName;
		this.licenNo = licenNo;
		this.cptSet = cptSet;
		this.ipcSet = ipcSet;
		this.finalSet = finalSet;
	}

	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public int getLicenNo() {
		return licenNo;
	}

	public void setLicenNo(int licenNo) {
		this.licenNo = licenNo;
	}

	public Set<CourseSubjectTB> getCptSet() {
		return cptSet;
	}

	public void setCptSet(Set<CourseSubjectTB> cptSet) {
		this.cptSet = cptSet;
	}

	public Set<CourseSubjectTB> getIpcSet() {
		return ipcSet;
	}

	public void setIpcSet(Set<CourseSubjectTB> ipcSet) {
		this.ipcSet = ipcSet;
	}

	public Set<CourseSubjectTB> getFinalSet() {
		return finalSet;
	}

	public void setFinalSet(Set<CourseSubjectTB> finalSet) {
		this.finalSet = finalSet;
	}
	
	
	
}
