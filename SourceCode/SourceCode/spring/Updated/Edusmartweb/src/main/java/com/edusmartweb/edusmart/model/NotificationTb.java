package com.edusmartweb.edusmart.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
@Entity
public class NotificationTb {
	@Id
	@GeneratedValue
	private int notificationId;
	private String notificationBy;
	private String notificationContent;
	/*private int notificationFor;*/
	@ManyToOne
	private UserProfileTB userProfileTB;
	private String notificationDate;
	private int notificationTo;
	
	public NotificationTb() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public int getNotificationTo() {
		return notificationTo;
	}


	public void setNotificationTo(int notificationTo) {
		this.notificationTo = notificationTo;
	}

	public String getNotificationBy() {
		return notificationBy;
	}

	public void setNotificationBy(String notificationBy) {
		this.notificationBy = notificationBy;
	}

	public int getNotificationId() {
		return notificationId;
	}
	public void setNotificationId(int notificationId) {
		this.notificationId = notificationId;
	}
	public String getNotificationContent() {
		return notificationContent;
	}
	public void setNotificationContent(String notificationContent) {
		this.notificationContent = notificationContent;
	}
	public UserProfileTB getUserProfileTB() {
		return userProfileTB;
	}
	public void setUserProfileTB(UserProfileTB userProfileTB) {
		this.userProfileTB = userProfileTB;
	}
	public String getNotificationDate() {
		return notificationDate;
	}
	public void setNotificationDate(String notificationDate) {
		this.notificationDate = notificationDate;
	}

}
