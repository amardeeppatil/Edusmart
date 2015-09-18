package com.edusmart.dao;

public class Holiday {
	int HolidayId;
	String HolidayName;
	String HolidayDate;
	int User_ID;
	int Status;

	public int getHolidayId() {
		return HolidayId;
	}
	
	public void setHolidayId(int holidayId) {
		HolidayId = holidayId;
	}

	public String getHolidayName() {
		return HolidayName;
	}
	
	public void setHolidayName(String holidayName) {
		HolidayName = holidayName;
	}

	public String getHolidayDate() {
		return HolidayDate;
	}

	public void setHolidayDate(String holidayDate) {
		HolidayDate = holidayDate;
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
