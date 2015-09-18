package com.edusmart.dao;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class EventInvitesTB {
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int InviteId;
	private int eventId;
	private int inviteBy;
	private int inviteTo;
	
	public int getInviteId() {
		return InviteId;
	}
	public void setInviteId(int inviteId) {
		this.InviteId = inviteId;
	}
	public int getEventId() {
		return eventId;
	}
	public void setEventId(int eventId) {
		this.eventId = eventId;
	}
	public int getInviteBy() {
		return inviteBy;
	}
	public void setInviteBy(int inviteBy) {
		this.inviteBy = inviteBy;
	}
	public int getInviteTo() {
		return inviteTo;
	}
	public void setInviteTo(int inviteTo) {
		this.inviteTo = inviteTo;
	}

}
