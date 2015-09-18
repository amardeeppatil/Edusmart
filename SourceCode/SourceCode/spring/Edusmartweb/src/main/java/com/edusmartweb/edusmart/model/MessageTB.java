package com.edusmartweb.edusmart.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;



@Entity
public class MessageTB {
	
	@Id
	@GeneratedValue
	private int messageId;
	@javax.annotation.Nullable
	private String to;
	@javax.annotation.Nullable
	private String from;
	@javax.annotation.Nullable
	private String subject;
	@javax.annotation.Nullable
	private String date;
	@javax.annotation.Nullable
	private String image;
	
	@ManyToOne
	private UserProfileTB userProfileTB;
	
	public MessageTB() {
		super();
		
	}
	
	public MessageTB(int messageId, String to, String from, String subject,
			String date, String image, UserProfileTB userProfileTB) {
		super();
		this.messageId = messageId;
		this.to = to;
		this.from = from;
		this.subject = subject;
		this.date = date;
		this.image = image;
		this.userProfileTB = userProfileTB;
	}
	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	public int getMessageId() {
		return messageId;
	}
	public void setMessageId(int messageId) {
		this.messageId = messageId;
	}
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public UserProfileTB getUserProfileTB() {
		return userProfileTB;
	}
	public void setUserProfileTB(UserProfileTB userProfileTB) {
		this.userProfileTB = userProfileTB;
	}
	
	
}
