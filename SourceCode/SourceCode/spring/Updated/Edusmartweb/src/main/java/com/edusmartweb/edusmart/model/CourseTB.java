package com.edusmartweb.edusmart.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
@Entity
public class CourseTB {

	@Id
	@GeneratedValue
	private int courseId;
	private String courseName;
	@ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "Faculty_Course",joinColumns = @JoinColumn(name = "Course_ID"),inverseJoinColumns = @JoinColumn(name = "Faculty_ID"))
	private Set<FacultyTb> facultyTbset;
	
	@OneToMany(mappedBy="courseTB")
	private Set<SubjectLevelTB> subjectLevelTBset;
	
	
	
	public CourseTB(int courseId, String courseName,
			Set<FacultyTb> facultyTbset, Set<SubjectLevelTB> subjectLevelTBset) {
		super();
		this.courseId = courseId;
		this.courseName = courseName;
		this.facultyTbset = facultyTbset;
		this.subjectLevelTBset = subjectLevelTBset;
	}

	public Set<SubjectLevelTB> getSubjectLevelTBset() {
		return subjectLevelTBset;
	}

	public void setSubjectLevelTBset(Set<SubjectLevelTB> subjectLevelTBset) {
		this.subjectLevelTBset = subjectLevelTBset;
	}

	public CourseTB() {
		super();
		// TODO Auto-generated constructor stub
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

	public Set<FacultyTb> getFacultyTbset() {
		return facultyTbset;
	}
	public void setFacultyTbset(Set<FacultyTb> facultyTbset) {
		this.facultyTbset = facultyTbset;
	}
	
	
}
