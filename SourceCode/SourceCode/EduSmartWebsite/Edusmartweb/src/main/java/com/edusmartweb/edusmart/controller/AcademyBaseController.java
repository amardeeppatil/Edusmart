package com.edusmartweb.edusmart.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.edusmartweb.edusmart.dao.CommonController;
import com.edusmartweb.edusmart.model.AboutTB;
import com.edusmartweb.edusmart.model.AcademyTB;
import com.edusmartweb.edusmart.model.UserProfileTB;

@Controller
public class AcademyBaseController {

	private AcademyTB academyTB;
	private AboutTB aboutTB=new AboutTB();
	private String qquery2 = "userProfileTB =1";
	private String qquery = "AcademyId =1";
	private List<AcademyTB> academyList = (List) CommonController.getAllObjects(AcademyTB.class, qquery);
	private Calendar cal = Calendar.getInstance();
	private DateFormat dateFormat = new SimpleDateFormat("dd-MMM-yyyy");
	private String upload_date;
	private List<AboutTB> aboutUsPostList = new ArrayList<AboutTB>();
	
	@RequestMapping(value="aboutPage")
	public String aboutPage(HttpServletRequest request) {
		System.out.println(" About page method");
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
			request.setAttribute("aboutUsPostList", aboutUsPostList);
			}catch(Exception e){e.printStackTrace();}
			//return "success";
		//}
	return "aboutPage";
	
	}
	
	
	/*@RequestMapping(value="academyProfile")
	public String timeLinePage() {
		System.out.println(" tine LinePage method");
	
	return "academyProfile";
	
	}*/

public List<AboutTB> getAboutUsPostList() {
	return aboutUsPostList;
}

public void setAboutUsPostList(List<AboutTB> aboutUsPostList) {
	this.aboutUsPostList = aboutUsPostList;
}
	
	public AcademyTB getAcademyTB() {
		return academyTB;
	}

	public void setAcademyTB(AcademyTB academyTB) {
		this.academyTB = academyTB;
	}
	
	public AboutTB getAboutTB() {
		return aboutTB;
	}

	public void setAboutTB(AboutTB aboutTB) {
		this.aboutTB = aboutTB;
	}
	
	public List<AcademyTB> getAcademyList() {
		return academyList;
	}
	
	public void setAcademyList(List<AcademyTB> academyList) {
		this.academyList = academyList;
	}

	public Calendar getCal() {
		return cal;
	}

	public void setCal(Calendar cal) {
		this.cal = cal;
	}

	public String getUpload_date() {
		return upload_date;
	}

	public void setUpload_date(String upload_date) {
		this.upload_date = upload_date;
	}
	
}
