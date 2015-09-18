package com.edusmart.action;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.edusmart.controller.CommonController;
import com.edusmart.dao.UserProfileTB;
import com.opensymphony.xwork2.ActionContext;

public class UploadAction {
	private String fileName;
	private File userImage;
	private String userImageContentType;
	private String userImageFileName;
	private HttpServletRequest servletRequest;
	private	UserProfileTB userProfileTB;
	private String filePath;
	UserProfileTB user = UserProfileTB.class.cast(ServletActionContext.getRequest().getSession().getAttribute("USER"));

	public String uploadImage()
	{ 
		 //System.out.println("upload img "+userProfileTB.getBannerFileUploadFileName());
		
		try {
			filePath=userProfileTB.getBannerFileUploadFileName();
			String filePath = "D:\\EdueSmartSp\\EduSmartWorkspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EduSmartWebsite\\";
		    System.out.println("Server path>>>>:" + filePath);
		    //HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		    //userImage=(File)request.getParameter("selectedImage");
		    File fileToCreate = new File(filePath, this.userImageFileName);
		    FileUtils.copyFile(this.userImage, fileToCreate);
		    filePath=filePath+userImageFileName;
			user.setBannerFileUploadFileName(userImageFileName);
			CommonController.saveOrUpdateObject(user);
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		userProfileTB=user;
		return "success";
	}


	public String getFileName() {
		return fileName;
	}


	public void setFileName(String fileName) {
		this.fileName = fileName;
	}


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


	public HttpServletRequest getServletRequest() {
		return servletRequest;
	}


	public void setServletRequest(HttpServletRequest servletRequest) {
		this.servletRequest = servletRequest;
	}


	public UserProfileTB getUserProfileTB() {
		return userProfileTB;
	}


	public void setUserProfileTB(UserProfileTB userProfileTB) {
		this.userProfileTB = userProfileTB;
	}
	public String getFilePath() {
		return filePath;
	}


	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}


}
