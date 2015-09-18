package com.edusmart.action;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.edusmart.controller.CommonController;
import com.edusmart.dao.UserProfileTB;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeFlow;
import com.google.api.client.googleapis.auth.oauth2.GoogleCredential;
import com.google.api.client.googleapis.auth.oauth2.GoogleTokenResponse;
import com.google.api.client.http.FileContent;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.services.drive.Drive;
import com.google.api.services.drive.DriveScopes;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class FacultyProfileAction extends ActionSupport implements ModelDriven<UserProfileTB> {
	
	String page;

	//Session Object
	UserProfileTB user = UserProfileTB.class.cast(ServletActionContext.getRequest().getSession().getAttribute("USER"));

	private static final long serialVersionUID = -209154693354258165L;
	private String header;
	private UserProfileTB faculty = new UserProfileTB();

	@Override
	public UserProfileTB getModel() {
		return faculty;
	}

	public String getHeader() {
		return header;
	}
	public void setHeader(String header) {
		this.header = header;
	}

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	public String viewFacultyProfile(){
		setPage("Faculty");
		setHeader("header2");
		/*try {
			uploadFileToGoogleDrive();
		} catch (IOException e) {
			e.printStackTrace();
		}*/
		return "success";
	}

	public String getFacultyProfileAbout(){
		return "success";
	}

	public String getFacultyProfileProducts(){
		return "success";
	}

	public String updateFacultyProfile(){
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		faculty = user;
		if("updateFacultyProfileAbout".equals(request.getParameter("url"))){
			return "about";
		} else if("collapseContactInfo".equals(request.getParameter("url"))){
			return "contact";
		} else if("updateFacultyProfileAddress".equals(request.getParameter("url"))){
			return "address";
		} else if("updateFacultyProfileEmergency".equals(request.getParameter("url"))){
			return "emergency";
		} else if("updateFacultyProfessional".equals(request.getParameter("url"))){
			return "professional";
		} else if("updateFacultyBankDetails".equals(request.getParameter("url"))){
			return "bank";
		}

		return "success";
	}

	public String updateOrSaveFacultyProfile(){
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		faculty.setUserId(user.getUserId());
		faculty.setAcademy(user.getAcademy());
		switch (request.getParameter("FormType")) {		
		case "professionalInfo":
			String professionalExperience = faculty.getProfessionalExperience();
			faculty = user;
			faculty.setProfessionalExperience(professionalExperience);
			
			setUpdatedDataToUserSession();
			if(checkProfileIsUploaded()){
				faculty.setIsProfileUpdated(1);
				user.setIsProfileUpdated(1);
			} else {
				faculty.setIsProfileUpdated(0);
			}
			CommonController.saveOrUpdateObject(faculty);
			return "success";

		case "emergency":
			String efname = faculty.getEFName();
			String emname = faculty.getEMName();
			String elname = faculty.getELName();
			String eemail = faculty.getEEmail();
			String econt = faculty.getEContact();
			String erelation = faculty.getERelationship();
			faculty = user;
			faculty.setEFName(efname);
			faculty.setEMName(emname);
			faculty.setELName(elname);
			faculty.setEEmail(eemail);
			faculty.setEContact(econt);
			faculty.setERelationship(erelation);
			
			setUpdatedDataToUserSession();
			if(checkProfileIsUploaded()){
				faculty.setIsProfileUpdated(1);
				user.setIsProfileUpdated(1);
			} else {
				faculty.setIsProfileUpdated(0);
			}
			CommonController.saveOrUpdateObject(faculty);
			return "success";

		case "address":
			String add1 = faculty.getCAddress1();
			String add2 = faculty.getCAddress2();
			String city = faculty.getCCity();
			String padd1 = faculty.getPAddress1();
			String padd2 = faculty.getPAddress2();
			String pcity = faculty.getPCity();
			faculty = user;
			faculty.setCAddress1(add1);
			faculty.setCAddress2(add2);
			faculty.setCCity(city);
			faculty.setPAddress1(padd1);
			faculty.setPAddress2(padd2);
			faculty.setPCity(pcity);

			setUpdatedDataToUserSession();
			if(checkProfileIsUploaded()){
				faculty.setIsProfileUpdated(1);
				user.setIsProfileUpdated(1);
			} else {
				faculty.setIsProfileUpdated(0);
			}
			CommonController.saveOrUpdateObject(faculty);
			setUpdatedDataToUserSession();
			return "success";

		case "contact":
			String contact = faculty.getContact();
			String altEmail = faculty.getEmail();
			faculty = user;
			faculty.setContact(contact);
			faculty.setEmail(altEmail);
			
			setUpdatedDataToUserSession();
			if(checkProfileIsUploaded()){
				faculty.setIsProfileUpdated(1);
				user.setIsProfileUpdated(1);
			} else {
				faculty.setIsProfileUpdated(0);
			}
			CommonController.saveOrUpdateObject(faculty);
			return "success";

		case "about":
			String fname = faculty.getFName();
			String mname = faculty.getMName();
			String lname = faculty.getLName();
			String email = faculty.getEmail();
			String bloodGroup = faculty.getBloodGroup();
			File profileUploadImage = faculty.getProfileFileUpload();
			faculty = user;
			faculty.setFName(fname);
			faculty.setMName(mname);
			faculty.setLName(lname);
			faculty.setEmail(email);
			faculty.setBloodGroup(bloodGroup);
			faculty.setProfileFileUpload(profileUploadImage);
			
			try {
				if(user.getProfileFileUpload() != null){
					String filePath = request.getSession().getServletContext().getRealPath("/");
//					File uploadedFile = faculty.getProfileFileUpload();
					faculty.setSaveDirectory(filePath);
					String fileName = user.getFName() + "_" + user.getLName() + "_logo.jpg";
					File destFile = new File(faculty.getSaveDirectory()+"Upload\\" + fileName);
					
					try {
						FileUtils.copyFile(profileUploadImage, destFile);
					} catch (IOException ex) {
						System.out.println("Could not copy file " + fileName);
						ex.printStackTrace();
					}
				}
				faculty.setProfileImage("Upload/" + user.getFName() + "_" + user.getLName() + "_logo.jpg");

				// copy the uploaded banner files into pre-configured location

				String bannerImages = "";
				if(user.getBannerFileUpload() != null){
					for (int i = 0; i < user.getBannerFileUpload().length; i++) {
						File uploadedFile = user.getBannerFileUpload()[i];
						String fileName = user.getBannerFileUploadFileName()[i];
						bannerImages = fileName + "," + bannerImages;
						File destFile = new File(user.getSaveDirectory() + File.separator + fileName);
						try {
							FileUtils.copyFile(uploadedFile, destFile);
						} catch (IOException ex) {
							System.out.println("Could not copy file " + fileName);
							ex.printStackTrace();
						}
					}
				}
				faculty.setBannerImageArray(bannerImages);

				// copy the uploaded wallpaper files into pre-configured location

				String wallpaperImages = "";
				if(user.getWallpaperFileUpload() != null){
					for (int i = 0; i < user.getWallpaperFileUpload().length; i++) {
						File uploadedFile = user.getWallpaperFileUpload()[i];
						String fileName = user.getWallpaperFileUploadFileName()[i];
						wallpaperImages = fileName + "," + wallpaperImages;
						File destFile = new File(user.getSaveDirectory() + File.separator + fileName);
						try {
							FileUtils.copyFile(uploadedFile, destFile);
						} catch (IOException ex) {
							System.out.println("Could not copy file " + fileName);
							ex.printStackTrace();
						}
					}
				}
				faculty.setWallpaperImageArray(wallpaperImages);

			} catch (Exception e) {
				e.printStackTrace();
				addActionError(e.getMessage());
			}
			
			setUpdatedDataToUserSession();
			if(checkProfileIsUploaded()){
				faculty.setIsProfileUpdated(1);
				user.setIsProfileUpdated(1);
			} else {
				faculty.setIsProfileUpdated(0);
			}
			CommonController.saveOrUpdateObject(faculty);
			return "success";

		case "bank":
			String bankName = faculty.getBankName();
			String AccountType = faculty.getAccountType();
			String ifsc_code = faculty.getIfscCode();
			String account_number = faculty.getAccountNumber();
			faculty = user;
			faculty.setBankName(bankName);
			faculty.setAccountType(AccountType);;
			faculty.setIfscCode(ifsc_code);
			faculty.setAccountNumber(account_number);
			
			setUpdatedDataToUserSession();
			if(checkProfileIsUploaded()){
				faculty.setIsProfileUpdated(1);
				user.setIsProfileUpdated(1);
			} else {
				faculty.setIsProfileUpdated(0);
			}
			CommonController.saveOrUpdateObject(faculty);
			return "success";
		default:
			break;
		}


		return "success";
	}	

	private static String CLIENT_ID = "100759349464-kra688e5mflgv4tuj5fjp5b61e5rgs12.apps.googleusercontent.com";
	private static String CLIENT_SECRET = "m6eZudzulvLr48Y-sf2rupjP";
	private static String REDIRECT_URI = "http://localhost:8089/EduSmartWebsite";

	public com.google.api.services.drive.model.File uploadFileToGoogleDrive() throws IOException{
		HttpTransport httpTransport = new NetHttpTransport();
		JsonFactory jsonFactory = new JacksonFactory();

		GoogleAuthorizationCodeFlow flow = new GoogleAuthorizationCodeFlow.Builder(
				httpTransport, jsonFactory, CLIENT_ID, CLIENT_SECRET, Arrays.asList(DriveScopes.DRIVE))
		.setAccessType("online")
		.setApprovalPrompt("auto").build();

		String url = flow.newAuthorizationUrl().setRedirectUri(REDIRECT_URI).build();
		System.out.println("Please open the following URL in your browser then type the authorization code:");
		System.out.println("  " + url);
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		String code = br.readLine();

		GoogleTokenResponse response = flow.newTokenRequest(code).setRedirectUri(REDIRECT_URI).execute();
		GoogleCredential credential = new GoogleCredential().setFromTokenResponse(response);

		//Create a new authorized API client
		Drive service = new Drive.Builder(httpTransport, jsonFactory, credential).build();

		//Insert a file  
		com.google.api.services.drive.model.File body = new com.google.api.services.drive.model.File();
		body.setTitle("My document");
		body.setDescription("A test document");
		body.setMimeType("text/plain");

		java.io.File fileContent = new java.io.File("D:/Prathamesh Talathi/Java/Struts_Projects/EduSmartWebsite/Web/Upload/Lighthouse.jpg");
		FileContent mediaContent = new FileContent("text/plain", fileContent);

		com.google.api.services.drive.model.File file = service.files().insert(body, mediaContent).execute();
		System.out.println("File ID: " + file.getId());
		return file;
	}

	public void setUpdatedDataToUserSession(){
		user = faculty; 
	}

	public boolean checkProfileIsUploaded(){
		if(user.getProfessionalExperience() != null &&
				user.getEFName() != null &&
				user.getEMName() != null &&
				user.getELName() != null &&
				user.getEEmail() != null &&
				user.getEContact() != null &&
				user.getERelationship() != null &&
				user.getCAddress1() != null &&
				user.getCAddress2() != null &&
				user.getCCity() != null &&
				user.getPAddress1() != null &&
				user.getPAddress2() != null &&
				user.getPCity() != null &&
				user.getContact() != null &&
				user.getEmail() != null &&
				user.getFName() != null &&
				user.getMName() != null &&
				user.getLName() != null &&
				user.getEmail() != null &&
				user.getBloodGroup() != null &&
				user.getBankName() != null &&
				user.getAccountType() != null &&  
				user.getIfscCode() != null &&
				user.getAccountNumber() != null){
			return true;
		}

		return false;
	}

}
