package com.edusmart.dao;

import java.io.File;


public class AcademyTB {
	int AcademyId;
	String OwnerFirstName;
	String OwnerMiddleName;
	String OwnerLastName;
	String AcademyName;
	String EmailId;
	String Phone;
	String Logo;
	String Wallpaper;
	String AboutInfo;
	String Banner;
	String Videos;
	String Pics;
	String BankAccountNo;
	String BankName;
	String IFSCCode;
	int Country;
	int State;
	int City;
	private String address;
	private String Website;
	private String lattitude;
	private String Longitude;

	int Status;
	
	private String saveDirectory;
	   
	private File logoImage;
	private String logoImageContentType;
	private String logoImageFileName;
	private File[] wallpaperFileUpload;
    private String[] wallpaperFileUploadFileName;
    private String[] wallpaperFileUploadContentType; 
	private File[] bannerFileUpload;
    private String[] bannerFileUploadFileName;
    private String[] bannerFileUploadContentType;    
    
    
    
	public int getAcademyId() {
		return AcademyId;
	}
	public void setAcademyId(int academyId) {
		AcademyId = academyId;
	}
	public String getAcademyName() {
		return AcademyName;
	}
	public void setAcademyName(String academyName) {
		AcademyName = academyName;
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
	public int getCountry() {
		return Country;
	}
	public void setCountry(int country) {
		Country = country;
	}
	public int getState() {
		return State;
	}
	public void setState(int state) {
		State = state;
	}
	public int getCity() {
		return City;
	}
	public void setCity(int city) {
		City = city;
	}
	
	public int getStatus() {
		return Status;
	}
	public void setStatus(int status) {
		Status = status;
	}
	
	
	public File getLogoImage() {
		return logoImage;
	}
	public void setLogoImage(File logoImage) {
		this.logoImage = logoImage;
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
	public File[] getWallpaperFileUpload() {
		return wallpaperFileUpload;
	}
	public void setWallpaperFileUpload(File[] wallpaperFileUpload) {
		this.wallpaperFileUpload = wallpaperFileUpload;
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
	public File[] getBannerFileUpload() {
		return bannerFileUpload;
	}
	public void setBannerFileUpload(File[] bannerFileUpload) {
		this.bannerFileUpload = bannerFileUpload;
	}
	public String[] getBannerFileUploadFileName() {
		return bannerFileUploadFileName;
	}
	public void setBannerFileUploadFileName(String[] bannerFileUploadFileName) {
		this.bannerFileUploadFileName = bannerFileUploadFileName;
	}
	public String[] getBannerFileUploadContentType() {
		return bannerFileUploadContentType;
	}
	public void setBannerFileUploadContentType(String[] bannerFileUploadContentType) {
		this.bannerFileUploadContentType = bannerFileUploadContentType;
	}
	public String getSaveDirectory() {
        return saveDirectory;
    }
 
    public void setSaveDirectory(String saveDir) {
        this.saveDirectory = saveDir;
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

	
}
