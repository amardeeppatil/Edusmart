package com.edusmart.action;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpServletRequest;




import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.edusmart.controller.CommonController;
import com.edusmart.dao.AcademyTB;
import com.edusmart.dao.BranchTB;
import com.edusmart.dao.UserProfileTB;
import com.edusmart.utils.RandomPassword;
import com.edusmart.utils.SendMail;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
public class AcademyAccountAction extends ActionSupport 
{
	
	// Session Object
		UserProfileTB user = UserProfileTB.class.cast(ServletActionContext
				.getRequest().getSession().getAttribute("USER"));
		
		
		
	
	public UserProfileTB getUser() {
			return user;
		}

		public void setUser(UserProfileTB user) {
			this.user = user;
		}

	private AcademyTB academy=new AcademyTB();
	private BranchTB branch;
	private UserProfileTB userProfileTB;
	
	public AcademyTB getAcademy() {
		return academy;
	}

	public void setAcademy(AcademyTB academy) {
		this.academy = academy;
	}

	public UserProfileTB getUserProfileTB() {
		return userProfileTB;
	}

	public void setUserProfileTB(UserProfileTB userProfileTB) {
		this.userProfileTB = userProfileTB;
	}

	public HttpServletRequest getServletRequest() {
		return servletRequest;
	}

	public void setServletRequest(HttpServletRequest servletRequest) {
		this.servletRequest = servletRequest;
	}

	public BranchTB getBranch() {
		return branch;
	}

	public void setBranch(BranchTB branch) {
		this.branch = branch;
	}

	private HttpServletRequest servletRequest;
	
	/*String email=userProfileTB.getEmail();
	String mobile=userProfileTB.getContact();*/
	
	public String saveOrUpdateAcademyAccount() throws AddressException, MessagingException {
		
		try{
		System.out.println("in saveOrUpdateAcademyAccount");
				
		SendMail mail=new SendMail();
		mail.mailsend(userProfileTB.getEmail(), "");
		userProfileTB.setUserName(userProfileTB.getEmail());
		
		// user.setPassword(RandomPassword.generateRandomPassword());
		userProfileTB.setPassword("123456");
		userProfileTB.setUserType(2);
		userProfileTB.setFName(academy.getAcademyName());
		userProfileTB.setContact(academy.getPhone());
		userProfileTB.setEmail(userProfileTB.getEmail());
		userProfileTB.setIsProfileUpdated(0);
		userProfileTB.setBloodGroup(userProfileTB.getBloodGroup());
		userProfileTB.setEFName(userProfileTB.getEFName());
		userProfileTB.setEContact(userProfileTB.getEContact());
		userProfileTB.setEEmail(userProfileTB.getEEmail());
		userProfileTB.setERelationship(userProfileTB.getERelationship());
		userProfileTB.setBankName(academy.getBankName());
		userProfileTB.setBranchId(userProfileTB.getBranchId());
		userProfileTB.setAccountNumber(academy.getBankAccountNo());
		userProfileTB.setAccountType(userProfileTB.getAccountType());
		userProfileTB.setIfscCode(academy.getIFSCCode());
		academy = AcademyTB.class.cast(CommonController.saveOrUpdateObject(academy));
		userProfileTB.setAcademy(academy);
				
		userProfileTB = UserProfileTB.class.cast(CommonController
				.saveOrUpdateObject(userProfileTB));
		} catch(Exception e)
		{
			
			e.printStackTrace();
		}
		return "success";
	}


	

}
