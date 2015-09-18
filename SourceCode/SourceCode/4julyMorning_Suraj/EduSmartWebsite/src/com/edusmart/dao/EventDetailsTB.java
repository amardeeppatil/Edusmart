package com.edusmart.dao;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class EventDetailsTB {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int DetailsId;
	private int eventId;
	private String image;
	private int status;
	
	public int getDetailsId() {
		return DetailsId;
	}
	public void setDetailsId(int detailsId) {
		this.DetailsId = detailsId;
	}
	public int getEventId() {
		return eventId;
	}
	public void setEventId(int eventId) {
		this.eventId = eventId;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
}
