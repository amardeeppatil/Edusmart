package com.edusmartweb.edusmart.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.edusmartweb.edusmart.dao.CommonController;
import com.edusmartweb.edusmart.model.AboutTB;
import com.edusmartweb.edusmart.model.AcademyTB;
import com.edusmartweb.edusmart.model.UserProfileTB;

@Controller
public class LoginController {
	private UserProfileTB user;// UserProfileTB.class.cast(ServletActionContext. getRequest().getSession().getAttribute("USER"));
	private String qquery3 = "academyTB = 1";// +// user.getAcademy().getAcademyId()+ "'  ORDER BY aboutId DESC";
	private List<AboutTB> academyProfilePostList = new ArrayList<AboutTB>();
	private List<UserProfileTB> facultyList=new ArrayList<UserProfileTB>();
	
	@RequestMapping(value = "login")
	public String userLogin(@ModelAttribute UserProfileTB user ,HttpSession userSession ,Model model) {
		
    List<Class<?>> objects = CommonController.getAllObjects(UserProfileTB.class, "UserName = '" + user.getUserName()+ "' and Password = '" + user.getPassword() + "'");
    String flag="home";
if (objects.size() != 0) {
	UserProfileTB userLogin = UserProfileTB.class.cast(objects.get(0));
	userSession.setAttribute("USER", userLogin);	
	
	 if (userLogin.getUserType() == 1) 
	   {
		 flag="incompleteProfile";

		}

		else if (userLogin.getUserType() == 2) {
			System.out.println("in user type 2...............");
			academyProfilePostList=(List)CommonController.getAllObjects(AboutTB.class,qquery3);
            facultyList=(List)CommonController.getAllObjects(UserProfileTB.class, "Status = 1 and UserType = 3");
            model.addAttribute("facultyList", facultyList);
            model.addAttribute("kk", "sp");
			model.addAttribute("academyProfilePostList", academyProfilePostList);
		
			flag="academyProfile";
			
		}

		else if (userLogin.getUserType() == 3)
		{
			flag="student";
		}
	 }

      else {flag="home";}
            return flag;
   }

	
	@RequestMapping(value = "logout")
	public String logOut(HttpSession currentSession)
	{
		System.out.println("user logout");
		currentSession.invalidate();
		
		return "home";
	}
}
