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

public class AcademyAccountAction extends ActionSupport implements ModelDriven<UserProfileTB>
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

	AcademyTB academy = new AcademyTB();
	BranchTB branch=new BranchTB();
	
	public BranchTB getBranch() {
		return branch;
	}

	public void setBranch(BranchTB branch) {
		this.branch = branch;
	}

	private HttpServletRequest servletRequest;
		
	public String saveOrUpdateAcademyAccount() throws AddressException, MessagingException {
		/*academy = AcademyTB.class.cast(CommonController
				.saveOrUpdateObject(academy));*/
		System.out.println("==================================");
		//UserProfileTB user = new UserProfileTB();
		
		SendMail mail=new SendMail();
		mail.mailsend(user.getEmail(), "");
		user.setUserName(user.getEmail());
		//user.setPassword(RandomPassword.generateRandomPassword());
		user.setPassword("123456");
		user.setUserType(2);
		user.setFName(user.getFName());
		
		user.setDOB(user.getDOB());
		
		user.setContact(user.getContact());
		
		user.setEmail(user.getEmail());
		user.setBloodGroup(user.getBloodGroup());
		user.setEFName(user.getEFName());
		user.setEContact(user.getEContact());
		user.setEEmail(user.getEEmail());
		user.setERelationship(user.getERelationship());
		user.setBankName(user.getBankName());
		user.setBranchId(user.getBranchId());
		user.setAccountNumber(user.getAccountNumber());
		user.setAccountType(user.getAccountType());
		user.setIfscCode(user.getIfscCode());
		user.setAcademy(academy);
		
		
		
		CommonController.saveOrUpdateObject(user);
		
		/*EmailUtil.sendEmail("ajinkya.marathe@excellenceit.in",
				"Edusmart Account Opening",
				"Your account has been succesfully created");*/
		return "success";
	}


	@Override
	public UserProfileTB getModel() {
		// TODO Auto-generated method stub
		return user;
	}

}
