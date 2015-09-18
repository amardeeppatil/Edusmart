package com.edusmartweb.edusmart.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class SubjectLevelTB {
	@Id
	@GeneratedValue
	private int subjectId;
	private String subjectName;
	private String level;
	@ManyToOne
   	private CourseTB courseTB;
	
	
	public SubjectLevelTB() {
		super();
		
	}
	
	public SubjectLevelTB(String subjectName,CourseTB courseTB){
		this.subjectName = subjectName;
		this.courseTB = courseTB;
	}
	
	
	
	public int getSubjectId() {
		return subjectId;
	}
	public SubjectLevelTB(int subjectId, String subjectName, String level,
			CourseTB courseTB) {
		super();
		this.subjectId = subjectId;
		this.subjectName = subjectName;
		this.level = level;
		this.courseTB = courseTB;
	}
	
	public SubjectLevelTB(String subjectName) {
		this.subjectName = subjectName;
	}
	public void setSubjectId(int subjectId) {
		this.subjectId = subjectId;
	}
	
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public CourseTB getCourseTB() {
		return courseTB;
	}
	public void setCourseTB(CourseTB courseTB) {
		this.courseTB = courseTB;
	}
	
}
