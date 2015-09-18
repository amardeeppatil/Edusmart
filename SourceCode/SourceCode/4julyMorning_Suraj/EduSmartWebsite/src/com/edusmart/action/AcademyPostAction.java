package com.edusmart.action;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.edusmart.controller.CommonController;
import com.edusmart.dao.AboutTB;
import com.edusmart.dao.AcademyTB;
import com.edusmart.dao.EventsTB;
import com.edusmart.dao.UserProfileTB;
import com.opensymphony.xwork2.ActionContext;

public class AcademyPostAction {
	
	private UserProfileTB user = UserProfileTB.class.cast(ServletActionContext.getRequest().getSession().getAttribute("USER"));
	
	private UserProfileTB userProfileTB;
	
	private AboutTB aboutTB =new AboutTB();
	private AcademyTB academy;
	private List<AboutTB> aboutUsPostList = new ArrayList<AboutTB>();
	private String qquery3 = "academyTB = '" + user.getAcademy().getAcademyId() + "'  ORDER BY aboutId DESC";
	
	private String qquery = "AcademyId = '" + user.getAcademy().getAcademyId() + "'";
	private String qquery2 = "academyTB = '" + user.getAcademy().getAcademyId() + "'";
	private List<AcademyTB> academyPostList = (List) CommonController.getAllObjects(AcademyTB.class, qquery);
	private Calendar calendar = Calendar.getInstance();
	private DateFormat dateFormat = new SimpleDateFormat("dd-MMM-yyyy");
	private String pickdate;
	
	private AboutTB about;
	int aboutId;
	/*String title=about.getTitle();
	String subTitle=about.getSubTitle();*/
	
	public AboutTB getAbout() {
		return about;
	}


	public void setAbout(AboutTB about) {
		this.about = about;
	}


	public UserProfileTB getUser() {
		return user;
	}


	public void setUser(UserProfileTB user) {
		this.user = user;
	}


	public UserProfileTB getUserProfileTB() {
		return userProfileTB;
	}


	public void setUserProfileTB(UserProfileTB userProfileTB) {
		this.userProfileTB = userProfileTB;
	}


	public AboutTB getAboutTB() {
		return aboutTB;
	}


	public void setAboutTB(AboutTB aboutTB) {
		this.aboutTB = aboutTB;
	}


	public AcademyTB getAcademy() {
		return academy;
	}


	public void setAcademy(AcademyTB academy) {
		this.academy = academy;
	}

	

	public List<AcademyTB> getAcademyPostList() {
		return academyPostList;
	}


	public void setAcademyPostList(List<AcademyTB> academyPostList) {
		this.academyPostList = academyPostList;
	}


	public Calendar getCalendar() {
		return calendar;
	}


	public void setCalendar(Calendar calendar) {
		this.calendar = calendar;
	}


	public DateFormat getDateFormat() {
		return dateFormat;
	}


	public void setDateFormat(DateFormat dateFormat) {
		this.dateFormat = dateFormat;
	}


	public String getPickdate() {
		return pickdate;
	}


	public void setPickdate(String pickdate) {
		this.pickdate = pickdate;
	}

	
	/*Add academy profile post*/	
	public String saveAcademyPost(){
		
		try{
			
		HttpServletRequest request = (HttpServletRequest) ActionContext
				.getContext().get(ServletActionContext.HTTP_REQUEST);
			
			if (academyPostList.size() > 0) 
			{
				academy = AcademyTB.class.cast(academyPostList.get(0));
				aboutTB.setAcademyTB(academy);
				pickdate= dateFormat.format(calendar.getTime());
				aboutTB.setDate(pickdate);
				CommonController.saveOrUpdateObject(aboutTB);
			}
			aboutUsPostList=(List)CommonController.getAllObjects(AboutTB.class,qquery3);
			
		}
		catch(Exception e){
			
			e.printStackTrace();
		}
			return "success";
		}

	
	 /*Display academy profile post*/
	
	
	public List<AboutTB> displayAcademyPost(){
		
		try{
		if (academyPostList.size() > 0) 
		{
		academy = AcademyTB.class.cast(academyPostList.get(0));
		System.out.println("in disp. academy post.....");
		}
		
		aboutUsPostList=(List)CommonController.getAllObjects(AboutTB.class,qquery3);
		
		}
		catch(Exception e){
			
			e.printStackTrace();
		}
		return aboutUsPostList;
	}

	public List<AboutTB> getAboutUsPostList() {
		return aboutUsPostList;
	}


	public void setAboutUsPostList(List<AboutTB> aboutUsPostList) {
		this.aboutUsPostList = aboutUsPostList;
	}
	
	
	/*public String editAcademyPost() {
	    System.out.println("editAcademyPost");
		HttpServletRequest request = ServletActionContext.getRequest();
		 
		System.out.println(request.getParameter("title"));
		
		AboutTB aboutTB=(AboutTB)CommonController.getObjectById(about.getAboutId(),AboutTB.class);
		aboutTB.setTitle(request.getParameter("title"));
		aboutTB.setSubTitle(request.getParameter("subTitle"));
		CommonController.saveOrUpdateObject(aboutTB);
		
		return "success";
	}
	*/
		
public String flushPost(){
    	
    	try{
    		
    	HttpServletRequest request = ServletActionContext.getRequest();
    	aboutId=Integer.parseInt(request.getParameter("aboutId"));
		
		CommonController.deleteObject(aboutId,AboutTB.class);
    	}catch(Exception e){
    		
    		e.printStackTrace();
    		
    	}
    	System.out.println("object deleted....");
		return "success";
    	
    }
	
	

}
