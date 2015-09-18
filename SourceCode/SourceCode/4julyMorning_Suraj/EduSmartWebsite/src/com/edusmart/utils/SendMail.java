package com.edusmart.utils;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.edusmart.dao.UserProfileTB;

public class SendMail {
	Properties emailProperties;
	Session mailSession;
	
	MimeMessage emailMessage;
	
	UserProfileTB user=new UserProfileTB();
	static String passwordData="";
	public UserProfileTB getUser() {
		return user;
	}

	public void setUser(UserProfileTB user) {
		this.user = user;
	}

	public void mailsend(String UserName,String data) throws AddressException,
			MessagingException {
		passwordData=data;
        System.out.println("In mail Code class");
		SendMail javaEmail = new SendMail();
		javaEmail.setMailServerProperties();
		javaEmail.createEmailMessage(UserName);
		javaEmail.sendEmail();
	}

	public void setMailServerProperties() {

		String emailPort = "587";//gmail's smtp port

		emailProperties = System.getProperties();
		emailProperties.put("mail.smtp.port", emailPort);
		emailProperties.put("mail.smtp.auth", "true");
		emailProperties.put("mail.smtp.starttls.enable", "true");

	}

	public void createEmailMessage(String UserName) throws AddressException,MessagingException 
	{
		String[] toEmails = { UserName };
		String emailBody;
		String emailSubject = "EduSmart Account Activation";
		//user_details.setEmail(userName);
		if(passwordData.equals("")){
			emailBody = "This is an email sent From EduSmart your Account is Created Successfully.Your User Name is <h1>"+UserName+"</h1> and Password is 123456   Demo link"+"<a href=\"http://localhost:8085/EduSmartWebsite/home.action\">click here</a> to use account";
			
		}
		else{
		   emailBody = "Password is "+passwordData;
		
		}
		System.out.println("in mailing functionality ");
		mailSession = Session.getDefaultInstance(emailProperties, null);
		emailMessage = new MimeMessage(mailSession);
		
		
		for (int i = 0; i < toEmails.length; i++) {
			emailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmails[i]));
		}

		emailMessage.setSubject(emailSubject);
		emailMessage.setContent(emailBody, "text/html");//for a html email
		//emailMessage.setText(emailBody);// for a text email

	}

	public void sendEmail() throws AddressException, MessagingException {

		String emailHost = "smtp.gmail.com";
		String fromUser = "testmailsp77@gmail.com";//just the id alone without @gmail.com
		String fromUserEmailPassword = "suraj777";

		Transport transport = mailSession.getTransport("smtp");

		transport.connect(emailHost, fromUser, fromUserEmailPassword);
		transport.sendMessage(emailMessage, emailMessage.getAllRecipients());
		transport.close();
		System.out.println("Email sent successfully.");
		
		
	}
}
