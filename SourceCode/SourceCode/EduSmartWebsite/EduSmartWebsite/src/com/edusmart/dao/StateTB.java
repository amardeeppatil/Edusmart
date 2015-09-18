package com.edusmart.dao;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class StateTB {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	int Stateid;
	String StateName;
	String StateCode;
	String CountryId;
	int User_ID;
	int Status;
		
	public int getStateid() {
		return Stateid;
	}

	public void setStateid(int stateid) {
		Stateid = stateid;
	}

	public String getStateName() {
		return StateName;
	}

	public void setStateName(String stateName) {
		StateName = stateName;
	}

	public String getStateCode() {
		return StateCode;
	}

	public void setStateCode(String stateCode) {
		StateCode = stateCode;
	}

	public String getCountryId() {
		return CountryId;
	}

	public void setCountryId(String countryId) {
		CountryId = countryId;
	}

	public int getUser_ID() {
		return User_ID;
	}

	public void setUser_ID(int user_ID) {
		User_ID = user_ID;
	}

	public int getStatus() {
		return Status;
	}

	public void setStatus(int status) {
		Status = status;
	}
	
}
