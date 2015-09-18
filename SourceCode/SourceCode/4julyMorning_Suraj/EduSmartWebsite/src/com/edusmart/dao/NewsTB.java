package com.edusmart.dao;

import javax.annotation.Nullable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class NewsTB {
	@Id
	@GeneratedValue
	private int newsId;
	private String type;
	private String title;
	private String subTitle;
	private String newsContent;
	private String date;
	private String image;
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
	
	
	
	public NewsTB() {
		super();
		// TODO Auto-generated constructor stub
	}
	public NewsTB(int newsId, String type, String title, String subTitle,
			String newsContent, String date, String image, int status,
			String expDate, int expired, String entryBy, String entryDate,
			String shareWith, UserProfileTB userProfileTB) {
		super();
		this.newsId = newsId;
		this.type = type;
		this.title = title;
		this.subTitle = subTitle;
		this.newsContent = newsContent;
		this.date = date;
		this.image = image;
		Status = status;
		this.expDate = expDate;
		this.expired = expired;
		this.entryBy = entryBy;
		this.entryDate = entryDate;
		this.shareWith = shareWith;
		this.userProfileTB = userProfileTB;
	}
	public int getNewsId() {
		return newsId;
	}
	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
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
	public String getNewsContent() {
		return newsContent;
	}
	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
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