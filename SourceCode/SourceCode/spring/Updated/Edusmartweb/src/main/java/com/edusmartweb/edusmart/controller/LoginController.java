
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
import com.edusmartweb.edusmart.model.MessageTB;
import com.edusmartweb.edusmart.model.NotificationTb;
import com.edusmartweb.edusmart.model.Product;
import com.edusmartweb.edusmart.model.UserProfileTB;
import com.edusmartweb.edusmart.service.NewsService;

@Controller
public class LoginController {
	private UserProfileTB user;// UserProfileTB.class.cast(ServletActionContext. getRequest().getSession().getAttribute("USER"));
	private String qquery3 = "academyTB = 1";// +// user.getAcademy().getAcademyId()+ "'  ORDER BY aboutId DESC";
	private List<AboutTB> academyProfilePostList = new ArrayList<AboutTB>();
	private List<UserProfileTB> facultyList=new ArrayList<UserProfileTB>();
	private NewsService newsService=new NewsService();
	private List<MessageTB> messageList = new ArrayList<MessageTB>();
	private List<NotificationTb> notificationList = new ArrayList<NotificationTb>();
	//private List<Product> CartProductList = new ArrayList<Product>();
	
	@RequestMapping(value = "/loginAction")
	public String userLogin(@ModelAttribute("loginAuth") UserProfileTB user ,HttpSession userSession ,Model model,HttpServletRequest request) {
		
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
			String qquery3 = "academyTB = '" + userLogin.getAcademy().getAcademyId()+ "'  ORDER BY aboutId DESC";
			System.out.println("in user type 2...............");
			academyProfilePostList=(List)CommonController.getAllObjects(AboutTB.class,qquery3);
            facultyList=(List)CommonController.getAllObjects(UserProfileTB.class, "Status = 1 and UserType = 3");
            model.addAttribute("facultyList", facultyList);
            model.addAttribute("kk", "sp");
			model.addAttribute("academyProfilePostList", academyProfilePostList);
		    try{
			model=newsService.newsDisplayService(model,request);
			newsService.eventDisplay(model,request);
			

			String qquery2 = "userProfileTB = '" + userLogin.getUserId() + "'";	
			messageList=(List)CommonController.getAllObjects(MessageTB.class,qquery2);
			System.out.println("Msg List size"+messageList.size());
			userSession=request.getSession(false);
			userSession.setAttribute("messageList", messageList);
			
			String qquery = "userProfileTB not in('" + userLogin.getUserId()+ "')";
			notificationList = (List) CommonController.getAllObjects(NotificationTb.class,qquery);
			userSession.setAttribute("notificationList", notificationList);
			
			
			/*CartProductList = (List) CommonController.getAllObjects(Product.class,qquery);
			userSession.setAttribute("CartProductList", CartProductList);*/
			
		    }catch(Exception e){e.printStackTrace();}
			flag="academyProfile";
			
		}

		else if (userLogin.getUserType() == 3)
		{
			
			String qquery2 = "userProfileTB = '" + userLogin.getUserId() + "'";	
			messageList=(List)CommonController.getAllObjects(MessageTB.class,qquery2);
			System.out.println("Msg List size"+messageList.size());
			userSession=request.getSession(false);
			userSession.setAttribute("messageList", messageList);
			
			String qquery = "userProfileTB not in('" + userLogin.getUserId()+ "')";
			notificationList = (List) CommonController.getAllObjects(NotificationTb.class,qquery);
			userSession.setAttribute("notificationList", notificationList);
			
			model.addAttribute("facultyId",userLogin);
			
			model=newsService.newsDisplayService(model,request);
			newsService.eventDisplay(model,request);
			flag="facultyProfile";
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
