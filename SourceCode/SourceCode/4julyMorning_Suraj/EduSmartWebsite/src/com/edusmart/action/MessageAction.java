package com.edusmart.action;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.edusmart.controller.CommonController;
import com.edusmart.dao.AcademyTB;
import com.edusmart.dao.MessageTB;
import com.edusmart.dao.UserProfileTB;
import com.opensymphony.xwork2.ActionContext;

public class MessageAction {
	
	private AcademyTB academyTB;
	private UserProfileTB userProfileTB;
	private UserProfileTB user = UserProfileTB.class.cast(ServletActionContext.getRequest().getSession().getAttribute("USER"));
	private MessageTB messageTB;
	private List<MessageTB> messageList = new ArrayList<MessageTB>();
	private String qquery = "AcademyId = '" + user.getAcademy().getAcademyId() + "'";
	private String qquery2 = "userProfileTB = '" + user.getUserId() + "'";
	private List<AcademyTB> academyList = (List) CommonController.getAllObjects(AcademyTB.class, qquery);
	private Date now = new Date();
	private String dateFormat = new SimpleDateFormat("EEE, d MMM yyyy hh:mm a").format(now);
	private String message_date;
	private String userName;
	
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public List<MessageTB> displayMessage(){
		
		System.out.println("display msg...");
		try{
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		if (academyList.size() > 0) 
		{
			academyTB = AcademyTB.class.cast(academyList.get(0));
		}	
		messageList=(List)CommonController.getAllObjects(MessageTB.class,qquery2);
		System.out.println(messageList);
		HttpSession session=request.getSession(false);
		session.setAttribute("messageList", messageList);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return messageList;
	}
	
	
	
	
	
    public AcademyTB getAcademyTB() {
		return academyTB;
	}
	public void setAcademyTB(AcademyTB academyTB) {
		this.academyTB = academyTB;
	}
	public UserProfileTB getUserProfileTB() {
		return userProfileTB;
	}
	public void setUserProfileTB(UserProfileTB userProfileTB) {
		this.userProfileTB = userProfileTB;
	}
	public UserProfileTB getUser() {
		return user;
	}
	public void setUser(UserProfileTB user) {
		this.user = user;
	}
	public MessageTB getMessageTB() {
		return messageTB;
	}
	public void setMessageTB(MessageTB messageTB) {
		this.messageTB = messageTB;
	}
	
	public List<MessageTB> getMessageList() {
		return messageList;
	}

	public void setMessageList(List<MessageTB> messageList) {
		this.messageList = messageList;
	}

	public List<AcademyTB> getAcademyList() {
		return academyList;
	}
	public void setAcademyList(List<AcademyTB> academyList) {
		this.academyList = academyList;
	}
	public Date getNow() {
		return now;
	}
	public void setNow(Date now) {
		this.now = now;
	}
	public String getDateFormat() {
		return dateFormat;
	}
	public void setDateFormat(String dateFormat) {
		this.dateFormat = dateFormat;
	}
	public String getMessage_date() {
		return message_date;
	}
	public void setMessage_date(String message_date) {
		this.message_date = message_date;
	}
	

}
