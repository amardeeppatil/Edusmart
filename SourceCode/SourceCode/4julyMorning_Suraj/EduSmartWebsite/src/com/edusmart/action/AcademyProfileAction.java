package com.edusmart.action;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.edusmart.controller.CommonController;
import com.edusmart.dao.AboutTB;
import com.edusmart.dao.AcademyTB;
import com.edusmart.dao.GetList;
import com.edusmart.dao.MessageTB;
import com.edusmart.dao.NewsTB;
import com.edusmart.dao.NotificationTb;
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

public class AcademyProfileAction extends ActionSupport implements ModelDriven<AcademyTB> {
	
	 String page;
	 
	 UserProfileTB user = UserProfileTB.class.cast(ServletActionContext.getRequest().getSession().getAttribute("USER"));

     private static final long serialVersionUID = -209154693354258165L;
     private String academyheader;
     private List<AboutTB> academyProfilePostList = new ArrayList<AboutTB>();
	 private AcademyPostAction academyPostAction =new AcademyPostAction();
	 private AcademyAction academyAction=new AcademyAction();
	 
	 private NotificationTb notificationTb;
	 List<UserProfileTB> facultyList1=new ArrayList<UserProfileTB>();
	 List<UserProfileTB> centerList1=new ArrayList<UserProfileTB>();
	 private List<NewsTB> newsList1 = new ArrayList<NewsTB>();
	 private String qquery = "userProfileTB not in('" + user.getUserId()+ "')";
	 private List<NotificationTb> notificationList = new ArrayList<NotificationTb>();
     private int notificationCount;
     private List<MessageTB> messageList1=new ArrayList<MessageTB>();
	 private MessageAction messageAction=new MessageAction();

	 public String viewAcademyProfile(){
		notificationList = (List) CommonController.getAllObjects(NotificationTb.class,qquery);
		if(notificationList.size()>0)
		{
			
			notificationTb=notificationList.get(0);
			HttpSession notificationSession=ServletActionContext.getRequest().getSession(false);
			notificationSession.setAttribute("notificationList",notificationList );
			
		}
		
		facultyList1=academyAction.getAllFaculties();
		centerList1=academyAction.getAllCenters();
		newsList1=academyAction.getAllNews();
		UserProfileTB userProfileTB=(UserProfileTB) CommonController.getObjectById(user.getUserId(),UserProfileTB.class);
		academyProfilePostList=academyPostAction.displayAcademyPost();	 
		
		messageList1=messageAction.displayMessage();

		
		
		setPage("Academy");
		setAcademyheader("academyheader");
		
		return "success";
	}

	
	public List<NewsTB> getNewsList1() {
		return newsList1;
	}
	public void setNewsList1(List<NewsTB> newsList1) {
		this.newsList1 = newsList1;
	}
	public String getAcademyProfileAbout(){
		return "success";
	}

	
	public List<AboutTB> getAcademyProfilePostList() {
		return academyProfilePostList;
	}
	public void setAcademyProfilePostList(List<AboutTB> academyProfilePostList) {
		this.academyProfilePostList = academyProfilePostList;
	}
	public AcademyPostAction getAcademyPostAction() {
		return academyPostAction;
	}
	public void setAcademyPostAction(AcademyPostAction academyPostAction) {
		this.academyPostAction = academyPostAction;
	}
	@Override
	public AcademyTB getModel() {
		// TODO Auto-generated method stub
		return academy;
	}
	 public NotificationTb getNotificationTb() {
			return notificationTb;
		}
		public void setNotificationTb(NotificationTb notificationTb) {
			this.notificationTb = notificationTb;
		}
				
		public List<UserProfileTB> getCenterList1() {
			return centerList1;
		}
		public void setCenterList1(List<UserProfileTB> centerList1) {
			this.centerList1 = centerList1;
		}
		public UserProfileTB getFaculty() {
			return faculty;
		}
		public void setFaculty(UserProfileTB faculty) {
			this.faculty = faculty;
		}
		UserProfileTB faculty=new UserProfileTB();
		 
		 public List<UserProfileTB> getFacultyList1() {
			return facultyList1;
		}
		public void setFacultyList1(List<UserProfileTB> facultyList1) {
			this.facultyList1 = facultyList1;
		}
		
		 
		//Session Object
		
		
		public String getAcademyheader() {
			return academyheader;
		}

		public UserProfileTB getUser() {
			return user;
		}

		public void setUser(UserProfileTB user) {
			this.user = user;
		}

		public void setAcademyheader(String academyheader) {
			this.academyheader = academyheader;
		}

		private AcademyTB academy = new AcademyTB();

		

		public AcademyTB getAcademy() {
			return academy;
		}

		public void setAcademy(AcademyTB academy) {
			this.academy = academy;
		}

		public String getPage() {
			return page;
		}

		public void setPage(String page) {
			this.page = page;
		}

}
