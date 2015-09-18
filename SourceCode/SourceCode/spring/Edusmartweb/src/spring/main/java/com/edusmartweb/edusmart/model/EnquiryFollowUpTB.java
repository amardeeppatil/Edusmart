package com.edusmartweb.edusmart.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
@Entity
public class EnquiryFollowUpTB {
	
	@Id
	@GeneratedValue
	int Id;
	String CallStatus;
	String FollowUpDate;
	String TodaysDay;
	String Note;
	int FolUpStatus;
	int Enquiryid;
	int EMPID;
		
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getCallStatus() {
		return CallStatus;
	}
	public void setCallStatus(String callStatus) {
		CallStatus = callStatus;
	}
	public String getFollowUpDate() {
		return FollowUpDate;
	}
	public void setFollowUpDate(String followUpDate) {
		FollowUpDate = followUpDate;
	}
	public String getTodaysDay() {
		return TodaysDay;
	}
	public void setTodaysDay(String todaysDay) {
		TodaysDay = todaysDay;
	}
	public String getNote() {
		return Note;
	}
	public void setNote(String note) {
		Note = note;
	}
	public int getFolUpStatus() {
		return FolUpStatus;
	}
	public void setFolUpStatus(int folUpStatus) {
		FolUpStatus = folUpStatus;
	}
	public int getEnquiryid() {
		return Enquiryid;
	}
	public void setEnquiryid(int enquiryid) {
		Enquiryid = enquiryid;
	}
	public int getEMPID() {
		return EMPID;
	}
	public void setEMPID(int eMPID) {
		EMPID = eMPID;
	}
	
}
