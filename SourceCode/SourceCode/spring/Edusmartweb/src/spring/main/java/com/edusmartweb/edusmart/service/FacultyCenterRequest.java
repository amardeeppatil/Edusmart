package com.edusmartweb.edusmart.service;

import com.edusmartweb.edusmart.model.FacultyTb;
import com.edusmartweb.edusmart.model.SendRequestDetails;

public class FacultyCenterRequest {
private FacultyTb facultyTb;
private String CAlevel ;
private String CSlevel;
private String CMAlevel;
private String course; 
private SendRequestDetails sendRequestDetails;
public FacultyTb getFacultyTb() {
	return facultyTb;
}
public void setFacultyTb(FacultyTb facultyTb) {
	this.facultyTb = facultyTb;
}
public SendRequestDetails getSendRequestDetails() {
	return sendRequestDetails;
}
public void setSendRequestDetails(SendRequestDetails sendRequestDetails) {
	this.sendRequestDetails = sendRequestDetails;
}


public String getCAlevel() {
	return CAlevel;
}
public void setCAlevel(String cAlevel) {
	CAlevel = cAlevel;
}
public String getCSlevel() {
	return CSlevel;
}
public void setCSlevel(String cSlevel) {
	CSlevel = cSlevel;
}
public String getCMAlevel() {
	return CMAlevel;
}
public void setCMAlevel(String cMAlevel) {
	CMAlevel = cMAlevel;
}
public String getCourse() {
	return course;
}
public void setCourse(String course) {
	this.course = course;
}



}
