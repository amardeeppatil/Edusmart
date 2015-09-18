package com.edusmart.dao;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class AcademyTB {
	
	/**
	 * 
	 */
//	private static final long serialVersionUID = -1072631803667328125L;
	
	@Id
	@GeneratedValue
	private int AcademyId;
	private String OwnerFirstName;
	private String OwnerMiddleName;
	private String OwnerLastName;
	private String AcademyName;
	private String EmailId;
	private String Phone;
	private String Logo;
	private String Wallpaper;
	private String AboutInfo;
	private String Banner;
	private String Videos;
	private String Pics;
	private String establishment;
	private String tagLine;
	private String objectives;
	private String description;
	private String BankAccountNo;
	private String BankName;
	private String IFSCCode;
	private String Country;
	private String State;
	private String City;
	private String address;
	private String Website;
	private String lattitude;
	private String Longitude;
	private int Status;
	private String saveDirectory;
	private String logoImageContentType;
	private String logoImageFileName;
	
	private String joinDate;

	
	public AcademyTB() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AcademyTB(int academyId, String ownerFirstName,
			String ownerMiddleName, String ownerLastName, String academyName,
			String emailId, String phone, String logo, String wallpaper,
			String aboutInfo, String banner, String videos, String pics,
			String establishment, String tagLine, String objectives,
			String description, String bankAccountNo, String bankName,
			String iFSCCode, String country, String state, String city,
			String address, String website, String lattitude, String longitude,
			int status, String saveDirectory, String logoImageContentType,
			String logoImageFileName, String joinDate) {
		super();
		AcademyId = academyId;
		OwnerFirstName = ownerFirstName;
		OwnerMiddleName = ownerMiddleName;
		OwnerLastName = ownerLastName;
		AcademyName = academyName;
		EmailId = emailId;
		Phone = phone;
		Logo = logo;
		Wallpaper = wallpaper;
		AboutInfo = aboutInfo;
		Banner = banner;
		Videos = videos;
		Pics = pics;
		this.establishment = establishment;
		this.tagLine = tagLine;
		this.objectives = objectives;
		this.description = description;
		BankAccountNo = bankAccountNo;
		BankName = bankName;
		IFSCCode = iFSCCode;
		Country = country;
		State = state;
		City = city;
		this.address = address;
		Website = website;
		this.lattitude = lattitude;
		Longitude = longitude;
		Status = status;
		this.saveDirectory = saveDirectory;
		this.logoImageContentType = logoImageContentType;
		this.logoImageFileName = logoImageFileName;
		this.joinDate = joinDate;
	}

	public int getAcademyId() {
		return AcademyId;
	}

	public void setAcademyId(int academyId) {
		AcademyId = academyId;
	}

	public String getOwnerFirstName() {
		return OwnerFirstName;
	}

	public void setOwnerFirstName(String ownerFirstName) {
		OwnerFirstName = ownerFirstName;
	}

	public String getOwnerMiddleName() {
		return OwnerMiddleName;
	}

	public void setOwnerMiddleName(String ownerMiddleName) {
		OwnerMiddleName = ownerMiddleName;
	}

	public String getOwnerLastName() {
		return OwnerLastName;
	}

	public void setOwnerLastName(String ownerLastName) {
		OwnerLastName = ownerLastName;
	}

	public String getAcademyName() {
		return AcademyName;
	}

	public void setAcademyName(String academyName) {
		AcademyName = academyName;
	}

	public String getEmailId() {
		return EmailId;
	}

	public void setEmailId(String emailId) {
		EmailId = emailId;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}

	public String getLogo() {
		return Logo;
	}

	public void setLogo(String logo) {
		Logo = logo;
	}

	public String getWallpaper() {
		return Wallpaper;
	}

	public void setWallpaper(String wallpaper) {
		Wallpaper = wallpaper;
	}

	public String getAboutInfo() {
		return AboutInfo;
	}

	public void setAboutInfo(String aboutInfo) {
		AboutInfo = aboutInfo;
	}

	public String getBanner() {
		return Banner;
	}

	public void setBanner(String banner) {
		Banner = banner;
	}

	public String getVideos() {
		return Videos;
	}

	public void setVideos(String videos) {
		Videos = videos;
	}

	public String getPics() {
		return Pics;
	}

	public void setPics(String pics) {
		Pics = pics;
	}

	public String getEstablishment() {
		return establishment;
	}

	public void setEstablishment(String establishment) {
		this.establishment = establishment;
	}

	public String getTagLine() {
		return tagLine;
	}

	public void setTagLine(String tagLine) {
		this.tagLine = tagLine;
	}

	public String getObjectives() {
		return objectives;
	}

	public void setObjectives(String objectives) {
		this.objectives = objectives;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getBankAccountNo() {
		return BankAccountNo;
	}

	public void setBankAccountNo(String bankAccountNo) {
		BankAccountNo = bankAccountNo;
	}

	public String getBankName() {
		return BankName;
	}

	public void setBankName(String bankName) {
		BankName = bankName;
	}

	public String getIFSCCode() {
		return IFSCCode;
	}

	public void setIFSCCode(String iFSCCode) {
		IFSCCode = iFSCCode;
	}

	public String getCountry() {
		return Country;
	}

	public void setCountry(String country) {
		Country = country;
	}

	public String getState() {
		return State;
	}

	public void setState(String state) {
		State = state;
	}

	public String getCity() {
		return City;
	}

	public void setCity(String city) {
		City = city;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getWebsite() {
		return Website;
	}

	public void setWebsite(String website) {
		Website = website;
	}

	public String getLattitude() {
		return lattitude;
	}

	public void setLattitude(String lattitude) {
		this.lattitude = lattitude;
	}

	public String getLongitude() {
		return Longitude;
	}

	public void setLongitude(String longitude) {
		Longitude = longitude;
	}

	public int getStatus() {
		return Status;
	}

	public void setStatus(int status) {
		Status = status;
	}

	public String getSaveDirectory() {
		return saveDirectory;
	}

	public void setSaveDirectory(String saveDirectory) {
		this.saveDirectory = saveDirectory;
	}

	public String getLogoImageContentType() {
		return logoImageContentType;
	}

	public void setLogoImageContentType(String logoImageContentType) {
		this.logoImageContentType = logoImageContentType;
	}

	public String getLogoImageFileName() {
		return logoImageFileName;
	}

	public void setLogoImageFileName(String logoImageFileName) {
		this.logoImageFileName = logoImageFileName;
	}

	public String getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}
	
	
	
	
	
	
	/*private File[] wallpaperFileUpload;
    private String[] wallpaperFileUploadFileName;
    private String[] wallpaperFileUploadContentType; 
	private File[] bannerFileUpload;
    private String[] bannerFileUploadFileName;
    private String[] bannerFileUploadContentType;   
    private File logoImage;
     */
    
    
    
	

	
}
