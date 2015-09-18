package com.edusmartweb.edusmart.model;

import javax.annotation.Nullable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class AboutTB {
	
	@Id
	@GeneratedValue
	private int aboutId;
	private String title;
	private String subTitle;
	private String description;
	private String shareType;
	private String date;
	private String likes;
	private String comments[];
	@ManyToOne
	private AcademyTB academyTB;
	
	@ManyToOne
	private UserProfileTB userProfileTB;
	
	public AboutTB() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	public AboutTB(int aboutId, String title, String subTitle,
			String description, String shareType, String date, String likes,
			String[] comments, AcademyTB academyTB, UserProfileTB userProfileTB) {
		super();
		this.aboutId = aboutId;
		this.title = title;
		this.subTitle = subTitle;
		this.description = description;
		this.shareType = shareType;
		this.date = date;
		this.likes = likes;
		this.comments = comments;
		this.academyTB = academyTB;
		this.userProfileTB = userProfileTB;
	}


	public UserProfileTB getUserProfileTB() {
		return userProfileTB;
	}


	public void setUserProfileTB(UserProfileTB userProfileTB) {
		this.userProfileTB = userProfileTB;
	}


	public String getLikes() {
		return likes;
	}

	public void setLikes(String likes) {
		this.likes = likes;
	}

	public int getAboutId() {
		return aboutId;
	}
	public void setAboutId(int aboutId) {
		this.aboutId = aboutId;
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getShareType() {
		return shareType;
	}
	public void setShareType(String shareType) {
		this.shareType = shareType;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	public String[] getComments() {
		return comments;
	}
	public void setComments(String[] comments) {
		this.comments = comments;
	}
	public AcademyTB getAcademyTB() {
		return academyTB;
	}
	public void setAcademyTB(AcademyTB academyTB) {
		this.academyTB = academyTB;
	}
	
}
