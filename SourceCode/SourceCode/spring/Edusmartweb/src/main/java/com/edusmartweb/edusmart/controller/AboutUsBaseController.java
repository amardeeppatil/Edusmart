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
	private DateFormat dateFormat = new SimpleDateFormat("dd-MMM-yyyy");
	private Calendar cal = Calendar.getInstance();
	
	AboutUsService aboutUsServiceObj=new AboutUsService();
	
	@RequestMapping("saveAboutDescription")
	public String saveAboutDescription(@ModelAttribute("somedata") AboutTB aboutTB,HttpServletRequest request,Model model) {
		
		UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
		try{
			String qquery2 = "userProfileTB = '" + user.getUserId() + "'";
			 String qquery = "AcademyId = '" + user.getAcademy().getAcademyId() + "'";
			 String qquery3 = "academyTB ='" +user.getAcademy().getAcademyId()+ "'  ORDER BY aboutId DESC";
			 List<AcademyTB> academyList = (List) CommonController.getAllObjects(AcademyTB.class, qquery);
			
			if (academyList.size() > 0) 
			{
				academyTB = AcademyTB.class.cast(academyList.get(0));
				aboutTB.setAcademyTB(academyTB);
				upload_date= dateFormat.format(cal.getTime());
				aboutTB.setDate(upload_date);
				CommonController.saveOrUpdateObject(aboutTB);
			}
			
			aboutUsPostList=(List)CommonController.getAllObjects(AboutTB.class,qquery3);
			model.addAttribute("aboutUsPostList", aboutUsPostList);
			}catch(Exception e){e.printStackTrace();}
		     
	        return "aboutPageDescription";
	   }
	
	@RequestMapping(value="aboutPage")
	public String aboutUsShow(HttpServletRequest request,Model model){
				
		aboutUsServiceObj.aboutUsList(request, model);
				
		return "aboutPage";
	}
	
	
private  AboutTB tempDesc;
	
	@RequestMapping(value="editAboutDesc")
	public String editAboutDescription(@ModelAttribute("editDescData") AboutTB aboutTB,HttpServletRequest request,Model model){
		try{
	    	aboutUsPostList=(List)CommonController.getAllObjects(AboutTB.class, "aboutId='"+aboutTB.getAboutId()+"'");
	    	
	    	if(aboutUsPostList.size()>0)
	    	{
	    		tempDesc=(AboutTB)aboutUsPostList.get(0);
	    		aboutTB.setDate(tempDesc.getDate());
		    	aboutTB.setAcademyTB(tempDesc.getAcademyTB());
	        }
	    	
			System.out.println("About Description"+aboutTB.getAboutId());
			
			CommonController.saveOrUpdateObject(aboutTB);
	    	
		}catch(Exception e){
			e.printStackTrace();
		}
		aboutUsServiceObj.aboutUsList(request, model);
		return "editAboutDescription";
	}
	
	
	@RequestMapping(value="deleteAboutDescription")
	@ResponseBody
	public void removePost(HttpServletRequest request,Model model){
		
		int aboutId;
		
		aboutId=Integer.parseInt(request.getParameter("aboutId"));
		CommonController.deleteObject(aboutId,AboutTB.class);
		aboutUsServiceObj.aboutUsList(request, model);
		
	}
	
	
}
