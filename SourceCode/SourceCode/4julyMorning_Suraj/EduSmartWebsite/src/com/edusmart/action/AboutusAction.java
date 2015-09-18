package com.edusmart.action;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.edusmart.controller.CommonController;
import com.edusmart.dao.AboutTB;
import com.edusmart.dao.AcademyTB;
import com.edusmart.dao.UserProfileTB;

public class AboutusAction {
	private AcademyTB academyTB;
    private UserProfileTB userProfileTB;
	private UserProfileTB user = UserProfileTB.class.cast(ServletActionContext.getRequest().getSession().getAttribute("USER"));
	private AboutTB aboutTB;
	private List<AboutTB> aboutUsPostList = new ArrayList<AboutTB>();
	private String qquery = "AcademyId = '" + user.getAcademy().getAcademyId() + "'";
	private String qquery2 = "userProfileTB = '" + user.getUserId() + "'";
	private List<AcademyTB> academyList = (List) CommonController.getAllObjects(AcademyTB.class, qquery);
	private Calendar cal = Calendar.getInstance();
	private DateFormat dateFormat = new SimpleDateFormat("dd-MMM-yyyy");
	private String upload_date;

	public String saveAboutDecription(){
		try{
		if (academyList.size() > 0) 
		{
			academyTB = AcademyTB.class.cast(academyList.get(0));
			aboutTB.setAcademyTB(academyTB);
			upload_date= dateFormat.format(cal.getTime());
			aboutTB.setDate(upload_date);
			CommonController.saveOrUpdateObject(aboutTB);
		}
		
		aboutUsPostList=(List)CommonController.getAllObjects(AboutTB.class,qquery2);
		}catch(Exception e){e.printStackTrace();}
		return "success";
	}
public String aboutUsShow(){
	
	/*List<AcademyTB> objects =(AcademyTB)CommonController.getAllObjects(AcademyTB.class, "AcademyId = '" + user.getAcademy() + "'");*/

	if (academyList.size() > 0) 
	{
		academyTB = AcademyTB.class.cast(academyList.get(0));
	}
	
	aboutUsPostList=(List)CommonController.getAllObjects(AboutTB.class,qquery2);
	userProfileTB=user;
	
	return "success";
}
private  AboutTB tempDesc;

public AboutTB getTempDesc() {
	return tempDesc;
}
public void setTempDesc(AboutTB tempDesc) {
	this.tempDesc = tempDesc;
}

public String editAboutDescription(){
	try{
    	aboutUsPostList=(List)CommonController.getAllObjects(AboutTB.class, "aboutId='"+aboutTB.getAboutId()+"'");
    	
    	if(aboutUsPostList.size()>0)
    	{
    		tempDesc=(AboutTB)aboutUsPostList.get(0);
    		aboutTB.setDate(tempDesc.getDate());
    		aboutTB.setUserProfileTB(tempDesc.getUserProfileTB());
        }
    	
		System.out.println("About Description"+aboutTB.getAboutId());
		
		CommonController.saveOrUpdateObject(aboutTB);
    	
	}catch(Exception e){
		e.printStackTrace();
	}
	return "success";
}


public String deleteAboutDescription(){
	
	try{
	HttpServletRequest request = ServletActionContext.getRequest();
	int aboutId =Integer.parseInt(request.getParameter("aboutId"));
	CommonController.deleteObject(aboutId, AboutTB.class);
	}catch(Exception e){
		e.printStackTrace();
	}
	return "success";
	
}

//edit about page Info Description
public String saveLongDescription() {
	
    System.out.println("saveDescription");
	HttpServletRequest request = ServletActionContext.getRequest();
	
	System.out.println(request.getParameter("description"));
	
	AcademyTB academy=(AcademyTB)CommonController.getObjectById(user.getAcademy().getAcademyId(),AcademyTB.class);
	academy.setDescription(request.getParameter("description"));
	CommonController.saveOrUpdateObject(academy);
	
	return "success";
}


// edit about page Info Address
public String saveInfoAddress() {
	
    System.out.println("saveAddress");
	HttpServletRequest request = ServletActionContext.getRequest();
	
	System.out.println(request.getParameter("address"));
	
	AcademyTB academy=(AcademyTB)CommonController.getObjectById(user.getAcademy().getAcademyId(),AcademyTB.class);
	academy.setAddress(request.getParameter("address"));
	CommonController.saveOrUpdateObject(academy);
	
	return "success";
}



public AcademyTB getAcademyTB() {
	return academyTB;
}

public void setAcademyTB(AcademyTB academyTB) {
	this.academyTB = academyTB;
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
public List<AboutTB> getAboutUsPostList() {
	return aboutUsPostList;
}
public void setAboutUsPostList(List<AboutTB> aboutUsPostList) {
	this.aboutUsPostList = aboutUsPostList;
}

}
