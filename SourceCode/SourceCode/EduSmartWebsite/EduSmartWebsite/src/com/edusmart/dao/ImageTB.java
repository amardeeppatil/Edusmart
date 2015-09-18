package com.edusmart.dao;

import java.io.File;

public class ImageTB {
	private File userImage;
    private String userImageContentType;
    private String userImageFileName;    
    public File getUserImage() {
		return userImage;
	}
	public void setUserImage(File userImage) {
		this.userImage = userImage;
	}
	public String getUserImageContentType() {
		return userImageContentType;
	}
	public void setUserImageContentType(String userImageContentType) {
		this.userImageContentType = userImageContentType;
	}
	public String getUserImageFileName() {
		return userImageFileName;
	}
	public void setUserImageFileName(String userImageFileName) {
		this.userImageFileName = userImageFileName;
	}
	
	
	
	private String saveDirectory;
    private File[] fileUpload;
    private String[] fileUploadFileName;
    private String[] fileUploadContentType;    
    
	public File[] getFileUpload() {
        return fileUpload;
    }
 
    public void setFileUpload(File[] fileUploads) {
        this.fileUpload = fileUploads;
    }
 
    public String[] getFileUploadFileName() {
        return fileUploadFileName;
    }
 
    public void setFileUploadFileName(String[] fileUploadFileNames) {
        this.fileUploadFileName = fileUploadFileNames;
    }
 
    public String[] getFileUploadContentType() {
        return fileUploadContentType;
    }
 
    public void setFileUploadContentType(String[] fileUploadContentTypes) {
        this.fileUploadContentType = fileUploadContentTypes;
    }
        
	public String getSaveDirectory() {
        return saveDirectory;
    }
 
    public void setSaveDirectory(String saveDir) {
        this.saveDirectory = saveDir;
    }
	
}
