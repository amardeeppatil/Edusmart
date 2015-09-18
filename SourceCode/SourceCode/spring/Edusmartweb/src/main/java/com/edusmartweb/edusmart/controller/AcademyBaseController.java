package com.edusmartweb.edusmart.controller;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.edusmartweb.edusmart.dao.CommonController;
import com.edusmartweb.edusmart.model.AboutTB;
import com.edusmartweb.edusmart.model.AcademyTB;
import com.edusmartweb.edusmart.model.UserProfileTB;
import com.edusmartweb.edusmart.service.AcademyLevelService;

@Controller
public class AcademyBaseController {
	private UserProfileTB userProfileTB;
	//private AboutTB aboutTB =new AboutTB();
	private AcademyTB academy;
	private Calendar calendar = Calendar.getInstance();
	private DateFormat dateFormat = new SimpleDateFormat("dd-MMM-yyyy");
	private String pickdate;
	private List<AboutTB> aboutUsPostList = new ArrayList<AboutTB>();
	
	AcademyLevelService academyServiceobj=new AcademyLevelService();
	
	
	
	@RequestMapping(value="academyProfile")
	public String timeLinePage(HttpServletRequest request,Model model) {
		System.out.println(" tine LinePage method");
		academyServiceobj.listAllInfo(request, model);
	return "academyProfile";
	
	}
	
	
	
	@RequestMapping(value="saveAcademyPost")
	public String aboutPage(@ModelAttribute("postData") AboutTB aboutTB,HttpServletRequest request,Model model) {
		
		UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
		try{
		System.out.println(" About page method");
		String qquery3 = "academyTB = '" + user.getAcademy().getAcademyId() + "'  ORDER BY aboutId DESC";
		String qquery = "AcademyId = '" + user.getAcademy().getAcademyId() + "'";
		String qquery2 = "academyTB = '" + user.getAcademy().getAcademyId() + "'";
		List<AcademyTB> academyPostList = (List) CommonController.getAllObjects(AcademyTB.class, qquery);
		
		if (academyPostList.size() > 0) 
		{
			academy = AcademyTB.class.cast(academyPostList.get(0));
			aboutTB.setAcademyTB(academy);
			pickdate= dateFormat.format(calendar.getTime());
			aboutTB.setDate(pickdate);
			CommonController.saveOrUpdateObject(aboutTB);
		}
		aboutUsPostList=(List)CommonController.getAllObjects(AboutTB.class,qquery3);
		academyServiceobj.listAllInfo(request, model);
		}
		catch(Exception e){
			e.printStackTrace();
		}
	return "academyProfilePost";

	}
	private  AboutTB tempDesc;
	
	@RequestMapping(value="editPost")
	public String editAcademyPost(@ModelAttribute("editData") AboutTB aboutTB,HttpServletRequest request,Model model){
		try{
	    	aboutUsPostList=(List)CommonController.getAllObjects(AboutTB.class, "aboutId='"+aboutTB.getAboutId()+"'");
	    	
	    	if(aboutUsPostList.size()>0)
	    	{
	    		tempDesc=(AboutTB)aboutUsPostList.get(0);
	    		aboutTB.setDate(tempDesc.getDate());
	    		//aboutTB.setUserProfileTB(tempDesc.getUserProfileTB());
	    		aboutTB.setAcademyTB(tempDesc.getAcademyTB());
	        }
	    	
			System.out.println("About Description"+aboutTB.getAboutId());
			
			CommonController.saveOrUpdateObject(aboutTB);
	    	
		}catch(Exception e){
			e.printStackTrace();
		}
		academyServiceobj.listAllInfo(request, model);
		return "editAcademyPost";
	}
	
	
	@RequestMapping(value="removePost")
	@ResponseBody
	public void removePost(HttpServletRequest request,Model model){
		
		int aboutId;
		
		aboutId=Integer.parseInt(request.getParameter("aboutId"));
		CommonController.deleteObject(aboutId,AboutTB.class);
		academyServiceobj.listAllInfo(request, model);	
	}
	
}
