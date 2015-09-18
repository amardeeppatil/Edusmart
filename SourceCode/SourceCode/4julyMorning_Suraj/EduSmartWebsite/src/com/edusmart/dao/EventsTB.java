package com.edusmart.dao;

import javax.annotation.Nullable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;


@Entity
public class EventsTB {
	
	@Id 
	@GeneratedValue
	private int EventId;
	private	String date;
	private String title;
	private String subTitle;
	private String image;
	private String eventContent;
	@Nullable
	private String type;
	@Nullable
	private int Status;
	private String expDate;	
	@Nullable
	private int expired;
	@Nullable
	private String entryBy;
	private String entryDate;
	private String shareWith;
	@ManyToOne
	private UserProfileTB userProfileTB;
	
	
	public EventsTB() {
		super();
		// TODO Auto-generated constructor stub
	}
	public EventsTB(int eventId, String date, String title, String subTitle,
			String image, String eventContent, String type, int status,
			String expDate, int expired, String entryBy, String entryDate,
			String shareWith, UserProfileTB userProfileTB) {
		super();
		EventId = eventId;
		this.date = date;
		this.title = title;
		this.subTitle = subTitle;
		this.image = image;
		this.eventContent = eventContent;
		this.type = type;
		Status = status;
		this.expDate = expDate;
		this.expired = expired;
		this.entryBy = entryBy;
		this.entryDate = entryDate;
		this.shareWith = shareWith;
		this.userProfileTB = userProfileTB;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getEventId() {
		return EventId;
	}
	public void setEventId(int eventId) {
		EventId = eventId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSubTitle() {
		return subTitle;
	}
	public void setSubTitle(String subTitle) {
		this.subTitle = subTitle;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getEventContent() {
		return eventContent;
	}
	public void setEventContent(String eventContent) {
		this.eventContent = eventContent;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	public int getStatus() {
		return Status;
	}
	public void setStatus(int status) {
		Status = status;
	}
	public String getExpDate() {
		return expDate;
	}
	public void setExpDate(String expDate) {
		this.expDate = expDate;
	}
	public int getExpired() {
		return expired;
	}
	public void setExpired(int expired) {
		this.expired = expired;
	}
	public String getEntryBy() {
		return entryBy;
	}
	public void setEntryBy(String entryBy) {
		this.entryBy = entryBy;
	}
	public String getEntryDate() {
		return entryDate;
	}
	public void setEntryDate(String entryDate) {
		this.entryDate = entryDate;
	}
	public String getShareWith() {
		return shareWith;
	}
	public void setShareWith(String shareWith) {
		this.shareWith = shareWith;
	}
	public UserProfileTB getUserProfileTB() {
		return userProfileTB;
	}
	public void setUserProfileTB(UserProfileTB userProfileTB) {
		this.userProfileTB = userProfileTB;
	}
	
	
}
