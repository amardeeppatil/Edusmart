package com.edusmart.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class CommentLikeTb {
 @Id
 @GeneratedValue
 private int commentId;
 private String commentContent;
 private String CommentBy;
 
 private int CommentById;
 @ElementCollection
 private ArrayList<Integer> likeByIdList=new ArrayList<Integer>();
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
		int commentById, ArrayList<Integer> likeByIdList, int likeById,
		int likeCount, String likeby, String commentDate, int newsId,
		int eventId) {
	super();
	this.commentId = commentId;
	this.commentContent = commentContent;
	CommentBy = commentBy;
	CommentById = commentById;
	this.likeByIdList = likeByIdList;
	this.likeById = likeById;
	this.likeCount = likeCount;
	this.likeby = likeby;
	this.commentDate = commentDate;
	this.newsId = newsId;
	this.eventId = eventId;
}

public ArrayList<Integer> getLikeByIdList() {
	return likeByIdList;
}

public void setLikeByIdList(ArrayList<Integer> likeByIdList) {
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
