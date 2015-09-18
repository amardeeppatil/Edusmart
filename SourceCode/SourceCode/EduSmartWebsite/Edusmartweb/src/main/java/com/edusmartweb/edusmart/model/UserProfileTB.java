package com.edusmartweb.edusmart.model;

import java.io.File;
import java.util.Set;

import javax.annotation.Nullable;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
/**
 * @author suraj.baraskar
 *
 */
@Entity
public class UserProfileTB  {
	
	
	@Id
	@GeneratedValue
	private int UserId;
	private String UserCode;
	private String UserName;
	private String Password;
	@Nullable
	private int IsProfileUpdated;
	@Nullable
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
	@Nullable
	private String CCountry;
	@Nullable
	private String CState;
	private String CCity;
	@Nullable
	private int CPincode;
	private String PAddress1;
	private String PAddress2;
	@Nullable
	private int PCountry;
	@Nullable
	private int PState;
	private String PCity;
	@Nullable
	private int PPincode;
	private String EFName;
	private String EMName;
	private String ELName;
	private String EContact;
	private String EEmail;
	private String ERelationship;
	private String Status;
	private String EntryDate;
	private String ProfessionalExperience;
	@Nullable
	private int BranchId;
	@Nullable
	private int AutoOrManual;
	/*@OneToOne
	private FacultyTb facultyTb;*/
	@ManyToOne
	private AcademyTB Academy;
	private String ProfileImage;
	private String WallpaperImageArray;
	private String BannerImageArray;
	private String  BankName;
	private String AccountType;
	private String IfscCode;
	private String  AccountNumber;
	private String AboutInfo;
	private String Website;
	private String saveDirectory;
	private String profileFileUploadFileName;
	private String profileFileUploadContentType;
	@Lob
	private File[] wallpaperFileUpload;
	@Lob
	private File profileFileUpload;
	@Lob
	private File[] bannerFileUpload;
	
	private String[] wallpaperFileUploadFileName;
	private String[] wallpaperFileUploadContentType;
    private String bannerFileUploadFileName;
    private String[] bannerFileUploadContentType; 
    
   
	public int getUserId() {
		return UserId;
	}
	public UserProfileTB() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	public UserProfileTB(int userId, String userCode, String userName,
			String password, int isProfileUpdated, int userType, String fName,
			String mName, String lName, String dOB, String email,
			String contact, String gender, String bloodGroup, String image,
			String cAddress1, String cAddress2, String cCountry, String cState,
			String cCity, int cPincode, String pAddress1, String pAddress2,
			int pCountry, int pState, String pCity, int pPincode,
			String eFName, String eMName, String eLName, String eContact,
			String eEmail, String eRelationship, String status,
			String entryDate, String professionalExperience, int branchId,
			int autoOrManual, AcademyTB academy, String profileImage,
			String wallpaperImageArray, String bannerImageArray,
			String bankName, String accountType, String ifscCode,
			String accountNumber, String aboutInfo, String website,
			String saveDirectory, String profileFileUploadFileName,
			String profileFileUploadContentType, File[] wallpaperFileUpload,
			File profileFileUpload, File[] bannerFileUpload,
			String[] wallpaperFileUploadFileName,
			String[] wallpaperFileUploadContentType,
			String bannerFileUploadFileName,
			String[] bannerFileUploadContentType) {
		super();
		UserId = userId;
		UserCode = userCode;
		UserName = userName;
		Password = password;
		IsProfileUpdated = isProfileUpdated;
		UserType = userType;
		FName = fName;
		MName = mName;
		LName = lName;
		DOB = dOB;
		Email = email;
		Contact = contact;
		Gender = gender;
		BloodGroup = bloodGroup;
		Image = image;
		CAddress1 = cAddress1;
		CAddress2 = cAddress2;
		CCountry = cCountry;
		CState = cState;
		CCity = cCity;
		CPincode = cPincode;
		PAddress1 = pAddress1;
		PAddress2 = pAddress2;
		PCountry = pCountry;
		PState = pState;
		PCity = pCity;
		PPincode = pPincode;
		EFName = eFName;
		EMName = eMName;
		ELName = eLName;
		EContact = eContact;
		EEmail = eEmail;
		ERelationship = eRelationship;
		Status = status;
		EntryDate = entryDate;
		ProfessionalExperience = professionalExperience;
		BranchId = branchId;
		AutoOrManual = autoOrManual;
		Academy = academy;
		ProfileImage = profileImage;
		WallpaperImageArray = wallpaperImageArray;
		BannerImageArray = bannerImageArray;
		BankName = bankName;
		AccountType = accountType;
		IfscCode = ifscCode;
		AccountNumber = accountNumber;
		AboutInfo = aboutInfo;
		Website = website;
		this.saveDirectory = saveDirectory;
		this.profileFileUploadFileName = profileFileUploadFileName;
		this.profileFileUploadContentType = profileFileUploadContentType;
		this.wallpaperFileUpload = wallpaperFileUpload;
		this.profileFileUpload = profileFileUpload;
		this.bannerFileUpload = bannerFileUpload;
		this.wallpaperFileUploadFileName = wallpaperFileUploadFileName;
		this.wallpaperFileUploadContentType = wallpaperFileUploadContentType;
		this.bannerFileUploadFileName = bannerFileUploadFileName;
		this.bannerFileUploadContentType = bannerFileUploadContentType;
	}
	public String getCCountry() {
		return CCountry;
	}
	public void setCCountry(String cCountry) {
		CCountry = cCountry;
	}
	public String getCState() {
		return CState;
	}
	public void setCState(String cState) {
		CState = cState;
	}
	public String getBannerFileUploadFileName() {
		return bannerFileUploadFileName;
	}
	public void setBannerFileUploadFileName(String bannerFileUploadFileName) {
		this.bannerFileUploadFileName = bannerFileUploadFileName;
	}
	public File[] getBannerFileUpload() {
		return bannerFileUpload;
	}
	public void setBannerFileUpload(File[] bannerFileUpload) {
		this.bannerFileUpload = bannerFileUpload;
	}
	public String[] getWallpaperFileUploadFileName() {
		return wallpaperFileUploadFileName;
	}
	public void setWallpaperFileUploadFileName(String[] wallpaperFileUploadFileName) {
		this.wallpaperFileUploadFileName = wallpaperFileUploadFileName;
	}
	public String[] getWallpaperFileUploadContentType() {
		return wallpaperFileUploadContentType;
	}
	public void setWallpaperFileUploadContentType(
			String[] wallpaperFileUploadContentType) {
		this.wallpaperFileUploadContentType = wallpaperFileUploadContentType;
	}
	
	public String[] getBannerFileUploadContentType() {
		return bannerFileUploadContentType;
	}
	public void setBannerFileUploadContentType(String[] bannerFileUploadContentType) {
		this.bannerFileUploadContentType = bannerFileUploadContentType;
	}
	public void setUserId(int userId) {
		UserId = userId;
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
		this.IsProfileUpdated = isProfileUpdated;
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
	public String getProfessionalExperience() {
		return ProfessionalExperience;
	}

	public void setProfessionalExperience(String professionalExperience) {
		ProfessionalExperience = professionalExperience;
	}

	public void setLName(String lName) {
		LName = lName;
	}
	public String getDOB() {
		return DOB;
	}
	public String getBankName() {
		return BankName;
	}

	public void setBankName(String bankName) {
		BankName = bankName;
	}

	public String getAccountType() {
		return AccountType;
	}

	public void setAccountType(String accountType) {
		AccountType = accountType;
	}

	public String getIfscCode() {
		return IfscCode;
	}

	public void setIfscCode(String ifscCode) {
		IfscCode = ifscCode;
	}

	public String getAccountNumber() {
		return AccountNumber;
	}

	public void setAccountNumber(String accountNumber) {
		AccountNumber = accountNumber;
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
	public String getEContact() {
		return EContact;
	}
	public void setEContact(String eContact) {
		EContact = eContact;
	}
	public String getERelationship() {
		return ERelationship;
	}
	public void setERelationship(String erelationship) {
		ERelationship = erelationship;
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
	public String getEEmail() {
		return EEmail;
	}
	public void setEEmail(String eEmail) {
		EEmail = eEmail;
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
	public String getProfileImage() {
		return ProfileImage;
	}
	public void setProfileImage(String profileImage) {
		ProfileImage = profileImage;
	}
	public String getWallpaperImageArray() {
		return WallpaperImageArray;
	}
	public void setWallpaperImageArray(String wallpaperImageArray) {
		WallpaperImageArray = wallpaperImageArray;
	}
	public String getBannerImageArray() {
		return BannerImageArray;
	}
	public void setBannerImageArray(String bannerImageArray) {
		BannerImageArray = bannerImageArray;
	}
	

	public String getSaveDirectory() {
		return saveDirectory;
	}
	public void setSaveDirectory(String saveDirectory) {
		this.saveDirectory = saveDirectory;
	}
	
	public String getProfileFileUploadFileName() {
		return profileFileUploadFileName;
	}
	public void setProfileFileUploadFileName(String profileFileUploadFileName) {
		this.profileFileUploadFileName = profileFileUploadFileName;
	}
	public String getProfileFileUploadContentType() {
		return profileFileUploadContentType;
	}
	public void setProfileFileUploadContentType(String profileFileUploadContentType) {
		this.profileFileUploadContentType = profileFileUploadContentType;
	}
	
	
	public String getAboutInfo() {
		return AboutInfo;
	}

	public void setAboutInfo(String aboutInfo) {
		AboutInfo = aboutInfo;
	}	
	public String getWebsite() {
		return Website;
	}

	public void setWebsite(String website) {
		Website = website;
	}

	


	public File getProfileFileUpload() {
		return profileFileUpload;
	}

	public void setProfileFileUpload(File profileFileUpload) {
		this.profileFileUpload = profileFileUpload;
	}

	

	public File[] getWallpaperFileUpload() {
		return wallpaperFileUpload;
	}

	public void setWallpaperFileUpload(File[] wallpaperFileUpload) {
		this.wallpaperFileUpload = wallpaperFileUpload;
	}
	
	
}
