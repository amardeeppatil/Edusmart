package com.edusmartweb.edusmart.model;

public class FacultyAccount {
private FacultyTb facultyTb;
private CourseTB courseTB;
private SubjectLevelTB subjectLevelTB;
private AcademyTB academyTB;

public FacultyTb getFacultyTb() {
	return facultyTb;
}
public void setFacultyTb(FacultyTb facultyTb) {
	this.facultyTb = facultyTb;
}
public SubjectLevelTB getSubjectLevelTB() {
	return subjectLevelTB;
}
public void setSubjectLevelTB(SubjectLevelTB subjectLevelTB) {
	this.subjectLevelTB = subjectLevelTB;
}
public AcademyTB getAcademyTB() {
	return academyTB;
}
public void setAcademyTB(AcademyTB academyTB) {
	this.academyTB = academyTB;
}
public CourseTB getCourseTB() {
	return courseTB;
}
public void setCourseTB(CourseTB courseTB) {
	this.courseTB = courseTB;
}


}
