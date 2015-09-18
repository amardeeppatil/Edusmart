package com.edusmart.dao;


public class CountryTB {
	int CountryID;
	String CountryName;
	String CountryCode;
	int ContinentID;
	int DialCode;
	int Status;
	
	public int getCountryID() {
		return CountryID;
	}
	public void setCountryID(int countryID) {
		CountryID = countryID;
	}
	public String getCountryName() {
		return CountryName;
	}
	public void setCountryName(String countryName) {
		CountryName = countryName;
	}
	public String getCountryCode() {
		return CountryCode;
	}
	public void setCountryCode(String countryCode) {
		CountryCode = countryCode;
	}
	public int getContinentID() {
		return ContinentID;
	}
	public void setContinentID(int continentID) {
		ContinentID = continentID;
	}
	public int getDialCode() {
		return DialCode;
	}
	public void setDialCode(int dialCode) {
		DialCode = dialCode;
	}
	public int getStatus() {
		return Status;
	}
	public void setStatus(int status) {
		Status = status;
	}
}
