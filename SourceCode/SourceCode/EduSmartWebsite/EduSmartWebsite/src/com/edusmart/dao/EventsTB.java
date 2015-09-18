package com.edusmart.dao;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class EventsTB {
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int eventId;
	private String name;
	private String details;
	private String location;
	private String eventDate;
	private String eventTime;
	private int eventBy;
	private int status;
	private int going;
	private int mayBe;
	
	public int getEventId() {
		return eventId;
	}
	public void setEventId(int eventId) {
		this.eventId = eventId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getEventDate() {
		return eventDate;
	}
	public void setEventDate(String eventDate) {
		this.eventDate = eventDate;
	}
	public String getEventTime() {
		return eventTime;
	}
	public void setEventTime(String eventTime) {
		this.eventTime = eventTime;
	}
	public int getEventBy() {
		return eventBy;
	}
	public void setEventBy(int eventBy) {
		this.eventBy = eventBy;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getGoing() {
		return going;
	}
	public void setGoing(int going) {
		this.going = going;
	}
	public int getMayBe() {
		return mayBe;
	}
	public void setMayBe(int mayBe) {
		this.mayBe = mayBe;
	}

}
