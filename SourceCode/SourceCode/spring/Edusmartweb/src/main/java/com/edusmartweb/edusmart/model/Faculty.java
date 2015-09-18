package com.edusmartweb.edusmart.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
@Entity
public class Faculty {

	@Id
	@GeneratedValue
    private	int FacultyId;
	private	String UserCode;
	private	String UserName;
	private String Password;
	private int IsProfileUpdated;
	private int UserType;
	private String FName;
	private String MName;
	private String LName;
	private String DOB;
	private String Email;
	private String Contact;
	private String Gender;
	private String BloodGroup;
	private String Image;
	private String CAddress1;
	private String CAddress2;
	private int CCountry;
	private int CState;
	private String CCity;
	private int CPincode;
	private String PAddress1;
	private String PAddress2;
	private int PCountry;
	private int PState;
	private String PCity;
	private int PPincode;
	private String EFName;
	private String EMName;
	private String ELName;
	private String EEmail;
	private String EContact;
	private String Relationship;
	private String Status;
	private String EntryDate;
	private int BranchId;
	private int AutoOrManual;
	@OneToOne
	AcademyTB Academy;
	/*@OneToOne
	UserProfileTB userProfileTB;*/
	public int getFacultyId() {
		return FacultyId;
	}
	public void setFacultyId(int facultyId) {
		FacultyId = facultyId;
	}
	public String getUserCode() {
		return UserCode;
	}
	public void setUserCode(String userCode) {
		UserCode = userCode;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public int getIsProfileUpdated() {
		return IsProfileUpdated;
	}
	public void setIsProfileUpdated(int isProfileUpdated) {
		IsProfileUpdated = isProfileUpdated;
	}
	public int getUserType() {
		return UserType;
	}
	public void setUserType(int userType) {
		UserType = userType;
	}
	public String getFName() {
		return FName;
	}
	public void setFName(String fName) {
		FName = fName;
	}
	public String getMName() {
		return MName;
	}
	public void setMName(String mName) {
		MName = mName;
	}
	public String getLName() {
		return LName;
	}
	public void setLName(String lName) {
		LName = lName;
	}
	public String getDOB() {
		return DOB;
	}
	public void setDOB(String dOB) {
		DOB = dOB;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getContact() {
		return Contact;
	}
	public void setContact(String contact) {
		Contact = contact;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getBloodGroup() {
		return BloodGroup;
	}
	public void setBloodGroup(String bloodGroup) {
		BloodGroup = bloodGroup;
	}
	public String getImage() {
		return Image;
	}
	public void setImage(String image) {
		Image = image;
	}
	public String getCAddress1() {
		return CAddress1;
	}
	public void setCAddress1(String cAddress1) {
		CAddress1 = cAddress1;
	}
	public String getCAddress2() {
		return CAddress2;
	}
	public void setCAddress2(String cAddress2) {
		CAddress2 = cAddress2;
	}
	public int getCCountry() {
		return CCountry;
	}
	public void setCCountry(int cCountry) {
		CCountry = cCountry;
	}
	public int getCState() {
		return CState;
	}
	public void setCState(int cState) {
		CState = cState;
	}
	public String getCCity() {
		return CCity;
	}
	public void setCCity(String cCity) {
		CCity = cCity;
	}
	public int getCPincode() {
		return CPincode;
	}
	public void setCPincode(int cPincode) {
		CPincode = cPincode;
	}
	public String getPAddress1() {
		return PAddress1;
	}
	public void setPAddress1(String pAddress1) {
		PAddress1 = pAddress1;
	}
	public String getPAddress2() {
		return PAddress2;
	}
	public void setPAddress2(String pAddress2) {
		PAddress2 = pAddress2;
	}
	public int getPCountry() {
		return PCountry;
	}
	public void setPCountry(int pCountry) {
		PCountry = pCountry;
	}
	public int getPState() {
		return PState;
	}
	public void setPState(int pState) {
		PState = pState;
	}
	public String getPCity() {
		return PCity;
	}
	public void setPCity(String pCity) {
		PCity = pCity;
	}
	public int getPPincode() {
		return PPincode;
	}
	public void setPPincode(int pPincode) {
		PPincode = pPincode;
	}
	public String getEFName() {
		return EFName;
	}
	public void setEFName(String eFName) {
		EFName = eFName;
	}
	public String getEMName() {
		return EMName;
	}
	public void setEMName(String eMName) {
		EMName = eMName;
	}
	public String getELName() {
		return ELName;
	}
	public void setELName(String eLName) {
		ELName = eLName;
	}
	public String getEEmail() {
		return EEmail;
	}
	public void setEEmail(String eEmail) {
		EEmail = eEmail;
	}
	public String getEContact() {
		return EContact;
	}
	public void setEContact(String eContact) {
		EContact = eContact;
	}
	public String getRelationship() {
		return Relationship;
	}
	public void setRelationship(String relationship) {
		Relationship = relationship;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public String getEntryDate() {
		return EntryDate;
	}
	public void setEntryDate(String entryDate) {
		EntryDate = entryDate;
	}
	public int getBranchId() {
		return BranchId;
	}
	public void setBranchId(int branchId) {
		BranchId = branchId;
	}
	public int getAutoOrManual() {
		return AutoOrManual;
	}
	public void setAutoOrManual(int autoOrManual) {
		AutoOrManual = autoOrManual;
	}
	public AcademyTB getAcademy() {
		return Academy;
	}
	public void setAcademy(AcademyTB academy) {
		Academy = academy;
	}
	

}
