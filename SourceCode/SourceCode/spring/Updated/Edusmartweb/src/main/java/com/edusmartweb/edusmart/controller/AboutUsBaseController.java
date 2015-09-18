package com.edusmartweb.edusmart.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.edusmartweb.edusmart.dao.CommonController;
import com.edusmartweb.edusmart.model.AboutTB;
import com.edusmartweb.edusmart.model.AcademyTB;
import com.edusmartweb.edusmart.model.UserProfileTB;
import com.edusmartweb.edusmart.service.AboutUsService;
import com.edusmartweb.edusmart.service.AcademyLevelService;

@Controller
public class AboutUsBaseController {
	
	
	private List<AboutTB> aboutUsPostList = new ArrayList<AboutTB>();
	private AcademyTB academyTB;
	private UserProfileTB userProfileTB;
	private String upload_date;
	private DateFormat dateFormat = new SimpleDateFormat("d MMM yyyy hh:mm a");
	private Calendar cal = Calendar.getInstance();
	private AboutUsService aboutUsServiceObj=new AboutUsService();
	
	@RequestMapping("saveAboutDescription")
	@ResponseBody
	public void saveAboutDescription(@ModelAttribute AboutTB aboutTB,HttpServletRequest request,Model model) {
		
		UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
		String qquery3 ="";
		try{
			
			if(user.getUserType()==3){
		        qquery3 = "userProfileTB ='" +user.getUserId()+ "'  ORDER BY aboutId DESC";
				aboutTB.setUserProfileTB(user);
				upload_date= dateFormat.format(cal.getTime());
				aboutTB.setDate(upload_date);
				CommonController.saveOrUpdateObject(aboutTB);
			}
			
			else{
			
			String qquery2 = "userProfileTB = '" + user.getUserId() + "'";
			 String qquery = "AcademyId = '" + user.getAcademy().getAcademyId() + "'";
			 qquery3 = "academyTB ='" +user.getAcademy().getAcademyId()+ "'  ORDER BY aboutId DESC";
			 List<AcademyTB> academyList = (List) CommonController.getAllObjects(AcademyTB.class, qquery);
			
			if (academyList.size() > 0) 
			 {
				academyTB = AcademyTB.class.cast(academyList.get(0));
				aboutTB.setAcademyTB(academyTB);
				upload_date= dateFormat.format(cal.getTime());
				aboutTB.setDate(upload_date);
				CommonController.saveOrUpdateObject(aboutTB);
			 }
			}
			aboutUsPostList=(List)CommonController.getAllObjects(AboutTB.class,qquery3);
			model.addAttribute("aboutUsPostList", aboutUsPostList);
			}catch(Exception e){e.printStackTrace();}
		     
	        
	   }
	
	
	@RequestMapping(value="saveLongDescription")
	@ResponseBody
	public void saveDescription(HttpServletRequest request){
		UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
		try{
			if(user.getUserType()==3){
				user.setAboutInfo(request.getParameter("description"));
				CommonController.saveOrUpdateObject(user);
			}
		else{
			AcademyTB academy=(AcademyTB)CommonController.getObjectById(user.getAcademy().getAcademyId(),AcademyTB.class);
			academy.setDescription(request.getParameter("description"));
			CommonController.saveOrUpdateObject(academy);
			}  
			}catch(Exception e){e.printStackTrace();}
		
		
	}
	
	@RequestMapping(value="saveInfoAddress")
	@ResponseBody
	public void saveInfoAddress(HttpServletRequest request) {
		
	    System.out.println("saveAddress");
	    try{
	    	  UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
	    	if(user.getUserType()==3){
				user.setPAddress1(request.getParameter("address"));
				CommonController.saveOrUpdateObject(user);
			}
		else{
		AcademyTB academy=(AcademyTB)CommonController.getObjectById(user.getAcademy().getAcademyId(),AcademyTB.class);
		academy.setAddress(request.getParameter("address"));
		CommonController.saveOrUpdateObject(academy);
		}
		}catch(Exception e){e.printStackTrace();}
		
	}
	
	
	@RequestMapping(value="aboutPage")
	public String aboutUsShow(HttpServletRequest request,Model model){
		UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
		String qquery = "AcademyId = '" + user.getAcademy().getAcademyId() + "'";	
		 List<AcademyTB> academyList = (List) CommonController.getAllObjects(AcademyTB.class, qquery);
		 
		 model=aboutUsServiceObj.aboutUsList(request, model);
		 model.addAttribute("academyList", academyList);
		return "aboutPage";
	}
	
	
private  AboutTB tempDesc;
	
	@RequestMapping(value="editAboutDesc")
	@ResponseBody
	public void editAboutDescription(@ModelAttribute("editDescData") AboutTB aboutTB,HttpServletRequest request,Model model){
		try{
			 UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
	    	aboutUsPostList=(List)CommonController.getAllObjects(AboutTB.class, "aboutId='"+aboutTB.getAboutId()+"'");
	    	
	    	if(aboutUsPostList.size()>0)
	    	{
	    		tempDesc=(AboutTB)aboutUsPostList.get(0);
	    		aboutTB.setDate(tempDesc.getDate());
	    		
	    		if(user.getUserType()==2)
	    		{
		    	aboutTB.setAcademyTB(tempDesc.getAcademyTB());
	        
	    		}
	    		if(user.getUserType()==3)
	    		{
		    	aboutTB.setUserProfileTB(tempDesc.getUserProfileTB());
	        
	    		}
	    		
	    		}
	    	
			System.out.println("About Description"+aboutTB.getAboutId());
			
			CommonController.saveOrUpdateObject(aboutTB);
	    	
		}catch(Exception e){
			e.printStackTrace();
		}
		aboutUsServiceObj.aboutUsList(request, model);
		
	}
	
	
	@RequestMapping(value="deleteAboutDescription")
	@ResponseBody
	public void removePost(HttpServletRequest request,Model model){
		int aboutId;
		aboutId=Integer.parseInt(request.getParameter("aboutId"));
		CommonController.deleteObject(aboutId,AboutTB.class);
		model=aboutUsServiceObj.aboutUsList(request, model);
		
	}
	
	
}
