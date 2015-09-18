package com.edusmart.dao;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class TagsTB {
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int tagId;
	private int postId;
	private int tagBy;
	private int taggedUser;
	
	public int getTagId() {
		return tagId;
	}
	public void setTagId(int tagId) {
		this.tagId = tagId;
	}
	public int getPostId() {
		return postId;
	}
	public void setPostId(int postId) {
		this.postId = postId;
	}
	public int getTagBy() {
		return tagBy;
	}
	public void setTagBy(int tagBy) {
		this.tagBy = tagBy;
	}
	public int getTaggedUser() {
		return taggedUser;
	}
	public void setTaggedUser(int taggedUser) {
		this.taggedUser = taggedUser;
	}

}
