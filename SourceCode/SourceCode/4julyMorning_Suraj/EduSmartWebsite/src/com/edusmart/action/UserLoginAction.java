package com.edusmart.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.management.Notification;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.edusmart.controller.CommonController;
import com.edusmart.dao.Faculty;
import com.edusmart.dao.GetList;
import com.edusmart.dao.NotificationTb;
import com.edusmart.dao.UserProfileTB;
import com.google.api.services.drive.model.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UserLoginAction extends ActionSupport implements SessionAware,
		ModelDriven<UserProfileTB> {


	private static final long serialVersionUID = 1L;
	private UserProfileTB user = new UserProfileTB();
	private Map<String, Object> sessionAttributes = null;
	HttpServletRequest request;
	List<UserProfileTB> facultyList1 = new ArrayList<UserProfileTB>();
	private AcademyAction academyAction = new AcademyAction();
    private NotificationTb notificationTb=new NotificationTb();
	
	public String execute() {
		System.out.println("mi login");
		
		List<Class<?>> objects = CommonController.getAllObjects(UserProfileTB.class, "UserName = '" + user.getUserName()+ "' and Password = '" + user.getPassword() + "'");

		if (objects.size() != 0) {
			sessionAttributes.clear();
			UserProfileTB userLogin = UserProfileTB.class.cast(objects.get(0));
			sessionAttributes.put("USER", userLogin);
			HttpSession userDetails=ServletActionContext.getRequest().getSession(false);
			userDetails.setAttribute("sessionUser", userLogin);
			System.out.println("Before login");

			if (userLogin.getUserType() == 1) {

				return "incompleteProfile";

			}

			else if (userLogin.getUserType() == 2) {
				System.out.println("in user type 2...............");

				return "success";
			}

			else if (userLogin.getUserType() == 3) {

				return "student";
			}
		}

		else {

			return "home";
		}

		return "error";
	}

	public NotificationTb getNotificationTb() {
		return notificationTb;
	}

	public void setNotificationTb(NotificationTb notificationTb) {
		this.notificationTb = notificationTb;
	}

	public AcademyAction getAcademyAction() {
		return academyAction;
	}

	public void setAcademyAction(AcademyAction academyAction) {
		this.academyAction = academyAction;
	}
	public UserProfileTB getUser() {
		return user;
	}

	public void setUser(UserProfileTB user) {
		this.user = user;
	}

	public String openDashboard() {
		return "success";
	}

	public String logout() {
		sessionAttributes.put("USER", null);
		sessionAttributes.clear();
	
		return "success";
	}

	public String profile() {
		user = (UserProfileTB) sessionAttributes.get("USER");

		return "success";
	}

	@Override
	public UserProfileTB getModel() {
		return user;
	}

	@Override
	public void setSession(Map<String, Object> sessionAttributes) {
		this.sessionAttributes = sessionAttributes;
	}

}
