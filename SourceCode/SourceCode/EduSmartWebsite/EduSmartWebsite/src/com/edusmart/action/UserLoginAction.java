package com.edusmart.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.edusmart.controller.CommonController;
import com.edusmart.dao.Faculty;
import com.edusmart.dao.GetList;
import com.edusmart.dao.UserProfileTB;
import com.google.api.services.drive.model.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UserLoginAction extends ActionSupport implements SessionAware, ModelDriven<UserProfileTB> {
	
	//UserProfileTB user = UserProfileTB.class.cast(ServletActionContext.getRequest().getSession().getAttribute("USER"));

	private static final long serialVersionUID = 1L;
	private UserProfileTB user = new UserProfileTB();
	private Map<String, Object> sessionAttributes = null;
    HttpServletRequest request;


    List<UserProfileTB> facultyList1=new ArrayList<UserProfileTB>();
	
private AcademyAction academyAction=new AcademyAction();
	//private UserProfileTB faculty=new UserProfileTB();
	
	
	
	
	/*public UserProfileTB getFaculty() {
		return faculty;
	}
	public void setFaculty(UserProfileTB faculty) {
		this.faculty = faculty;
	}*/


	public AcademyAction getAcademyAction() {
		return academyAction;
	}

	public void setAcademyAction(AcademyAction academyAction) {
		this.academyAction = academyAction;
		}

	public String execute() {

		// EmailUtil.sendEmail("prathamesh.talathi@excellenceit.in","Email Subject",
		// "Email Body");

		/*
		 * List<Class<?>> objects =
		 * CommonController.getAllObjects(UserProfileTB.class, "UserName = '" +
		 * user.getUserName() + "' and Password = '" + user.getPassword() +
		 * "' and (USERTYPE=1 or USERTYPE=2)"); if(objects.size() != 0){
		 * UserProfileTB userLogin = UserProfileTB.class.cast(objects.get(0));
		 * sessionAttributes.put("USER", userLogin); return "success"; } else {
		 * return "error"; }
		 */
		List<Class<?>> objects = CommonController.getAllObjects(
				UserProfileTB.class, "UserName = '" + user.getUserName()
						+ "' and Password = '" + user.getPassword() + "'");
				
		if (objects.size() != 0) {
			sessionAttributes.clear();
			UserProfileTB userLogin = UserProfileTB.class.cast(objects.get(0));
			sessionAttributes.put("USER", userLogin);
			System.out.println("Before login");
			// if(userLogin.getIsProfileUpdated() == 0){
			if (userLogin.getUserType() == 1) {
				
				/*list=academyAction.getAllFaculties();
				System.out.println(list.size());*/
				return "incompleteProfile";
				
				 }
			
			//}
		else if (userLogin.getUserType() == 2)
			{
				/*System.out.println(" academy getfaculty list");
				facultyList1=academyAction.getAllFaculties();
				System.out.println(" academy return list");
				System.out.println(facultyList1.size());
				System.out.println(" academy return list final");*/
				System.out.println("in user type 2...............");
			
				return "success";
			}
			
		else if (userLogin.getUserType() == 3)
		{
			
			return "student";
		}
		} 
		
		else {
			
			return "home";
		}

		return "error";
		}
	//}
	public UserProfileTB getUser() {
		return user;
	}
	public void setUser(UserProfileTB user) {
		this.user = user;
	}

	public String openDashboard(){
		return "success";
	}

	public String logout(){
		sessionAttributes.put("USER", null);
		sessionAttributes.clear();
		return "success";
	}

	public String profile(){
		user = (UserProfileTB) sessionAttributes.get("USER");
		//		Employee e = (Employee) CommonController.getObjectById(u.getEmployeeID(), Employee.class);
		//		user.setFName(e.getFName());
		//		user.setMName(e.getMName());
		//		user.setLName(e.getLName());
		//		user.setAddress(e.getAddress());
		//		user.setBirthDate(e.getBirthDate());
		//		user.setGender(e.getGender());
		//		user.setEmail(e.getEmail());
		//		user.setJoiningDate(e.getJoiningDate());
		//		user.setMarried(e.getMarried());
		//		user.setMobile(e.getMobile());
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
