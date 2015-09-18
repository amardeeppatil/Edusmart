package com.edusmartweb.edusmart.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
@Entity
public class MediaSourceMasterTB {

	@Id
	@GeneratedValue
	int MediaId;
	String MediaName;
	int BranchId;
	int UserId;
	int Status;
	
	public int getStatus() {
		return Status;
	}
	public void setStatus(int status) {
		Status = status;
	}
	public int getMediaId() {
		return MediaId;
	}
	public void setMediaId(int mediaId) {
		MediaId = mediaId;
	}
	public String getMediaName() {
		return MediaName;
	}
	public void setMediaName(String mediaName) {
		MediaName = mediaName;
	}
	public int getBranchId() {
		return BranchId;
	}
	public void setBranchId(int branchId) {
		BranchId = branchId;
	}
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
}
