package com.edusmart.dao;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class CommentsTB {
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int commentId;
	private int postId;
	private int commentBy;
	private String comment;
	private String commentImage;
	private String commentDate;
	private int status;
	
	public int getCommentId() {
		return commentId;
	}
	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}
	public int getPostId() {
		return postId;
	}
	public void setPostId(int postId) {
		this.postId = postId;
	}
	public int getCommentBy() {
		return commentBy;
	}
	public void setCommentBy(int commentBy) {
		this.commentBy = commentBy;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getCommentImage() {
		return commentImage;
	}
	public void setCommentImage(String commentImage) {
		this.commentImage = commentImage;
	}
	public String getCommentDate() {
		return commentDate;
	}
	public void setCommentDate(String commentDate) {
		this.commentDate = commentDate;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}

}
