package com.edusmartweb.edusmart.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class CommentLikeTb implements Serializable{
 @Id
 @GeneratedValue
 private int commentId;
 private String commentContent;
 private String CommentBy;
 private String likeByIdList;
 private int CommentById;
 private int likeById;
 private int likeCount;
 private String likeby;
 private String commentDate;
 private int newsId;
 private int eventId;
 
public CommentLikeTb() {
	super();
	// TODO Auto-generated constructor stub
}



public CommentLikeTb(int commentId, String commentContent, String commentBy,
		String likeByIdList, int commentById, int likeById, int likeCount,
		String likeby, String commentDate, int newsId, int eventId) {
	super();
	this.commentId = commentId;
	this.commentContent = commentContent;
	CommentBy = commentBy;
	this.likeByIdList = likeByIdList;
	CommentById = commentById;
	this.likeById = likeById;
	this.likeCount = likeCount; 
	this.likeby = likeby;
	this.commentDate = commentDate;
	this.newsId = newsId;
	this.eventId = eventId;
}



public String getLikeByIdList() {
	return likeByIdList;
}


public void setLikeByIdList(String likeByIdList) {
	this.likeByIdList = likeByIdList;
}


public int getCommentId() {
	return commentId;
}
public void setCommentId(int commentId) {
	this.commentId = commentId;
}
public String getCommentContent() {
	return commentContent;
}
public void setCommentContent(String commentContent) {
	this.commentContent = commentContent;
}
public String getCommentBy() {
	return CommentBy;
}
public void setCommentBy(String commentBy) {
	CommentBy = commentBy;
}
public int getCommentById() {
	return CommentById;
}
public void setCommentById(int commentById) {
	CommentById = commentById;
}
public int getLikeById() {
	return likeById;
}
public void setLikeById(int likeById) {
	this.likeById = likeById;
}
public int getLikeCount() {
	return likeCount;
}
public void setLikeCount(int likeCount) {
	this.likeCount = likeCount;
}
public String getLikeby() {
	return likeby;
}
public void setLikeby(String likeby) {
	this.likeby = likeby;
}
public String getCommentDate() {
	return commentDate;
}
public void setCommentDate(String commentDate) {
	this.commentDate = commentDate;
}
public int getNewsId() {
	return newsId;
}
public void setNewsId(int newsId) {
	this.newsId = newsId;
}
public int getEventId() {
	return eventId;
}
public void setEventId(int eventId) {
	this.eventId = eventId;
}
 

}
