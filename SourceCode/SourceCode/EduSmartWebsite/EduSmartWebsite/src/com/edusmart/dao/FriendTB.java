package com.edusmart.dao;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class FriendTB {
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int friendId;
	private int friend1;
	private int friend2;
	private int status;
	private String date;
	
	public int getFriendId() {
		return friendId;
	}
	public void setFriendId(int friendId) {
		this.friendId = friendId;
	}
	public int getFriend1() {
		return friend1;
	}
	public void setFriend1(int friend1) {
		this.friend1 = friend1;
	}
	public int getFriend2() {
		return friend2;
	}
	public void setFriend2(int friend2) {
		this.friend2 = friend2;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	

}
