package com.edusmartweb.edusmart.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.edusmartweb.edusmart.dao.CommonController;
import com.edusmartweb.edusmart.model.AboutTB;
import com.edusmartweb.edusmart.model.AcademyTB;
import com.edusmartweb.edusmart.model.FacultyTb;
import com.edusmartweb.edusmart.model.SendRequestDetails;
import com.edusmartweb.edusmart.model.UserProfileTB;
import com.edusmartweb.edusmart.service.FacultyCenterRequest;

@Controller
public class RequestHandlerController {
	private List<FacultyTb> facultyList = new ArrayList<FacultyTb>();
	private List<AcademyTB> academyList = new ArrayList<AcademyTB>();
	private List<UserProfileTB> UserProfileTBList = new ArrayList<UserProfileTB>();
	private FacultyTb faculty;
	private AcademyTB academyTB;
	private UserProfileTB userProfileTB;
	private SendRequestDetails sendRequestDetails=new SendRequestDetails();
	private DateFormat dateFormatWithTime = new SimpleDateFormat("d MMM yyyy hh:mm a");
	private Calendar calendar = Calendar.getInstance();
	
	@RequestMapping("/facultyRequest")
	public String facultyRequestToCenter(@ModelAttribute("facultyData") FacultyCenterRequest facultyCenterRequest,HttpServletRequest request){
		try{
		UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
		
		if(user.getUserType()==3){
		
			System.out.println("object "+facultyCenterRequest);
		System.out.println(facultyCenterRequest.getSendRequestDetails().getAcademyTB().getAcademyName());
		facultyList=(List)CommonController.getAllObjects(FacultyTb.class,"userProfileTB='"+user.getUserId()+"'");
		faculty=facultyList.get(0);
		academyList=(List)CommonController.getAllObjects(AcademyTB.class,"AcademyName='"+facultyCenterRequest.getSendRequestDetails().getAcademyTB().getAcademyName()+"'");
		academyTB=academyList.get(0);
		UserProfileTBList=(List)CommonController.getAllObjects(UserProfileTB.class,"Academy='"+academyTB.getAcademyId()+"'");
		userProfileTB=UserProfileTBList.get(0);
		
		sendRequestDetails.setFromWho(user.getUserId());
		sendRequestDetails.setToWhom(userProfileTB.getUserId());
		sendRequestDetails.setStatus("Pending");
		sendRequestDetails.setDate(dateFormatWithTime.format(calendar.getTime()));
		sendRequestDetails.setFacultyTb(faculty);
		sendRequestDetails.setAcademyTB(academyTB);
		sendRequestDetails.setUserProfileTB(user);
		sendRequestDetails.setSubject(facultyCenterRequest.getSendRequestDetails().getSubject());
		CommonController.saveOrUpdateObject(sendRequestDetails);
		       }
		}catch (Exception e)
		{
			e.printStackTrace();
		} 
		return "facultyProfile";
	}
}
