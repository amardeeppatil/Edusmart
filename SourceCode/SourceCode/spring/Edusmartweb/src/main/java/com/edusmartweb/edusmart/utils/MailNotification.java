package com.edusmartweb.edusmart.utils;



public class MailNotification {

	private String fromEmail;
	private String toEmail;
	
	private String subject;
	private String body;
	
	private Boolean isMimeMessage;
	
	
	/* Constructors */
	
	public MailNotification(String toEmail, String subject, String body) {
		super();
		this.fromEmail = "testmailsp77@gmail.com";
		this.toEmail = toEmail;
		this.subject = subject;
		this.body = body;
		this.isMimeMessage = true;
	}


	/* Getters and Setters */

	public String getFromEmail() {
		return fromEmail;
	}

	public void setFromEmail(String fromEmail) {
		this.fromEmail = fromEmail;
	}

	public String getToEmail() {
		return toEmail;
	}

	public void setToEmail(String toEmail) {
		this.toEmail = toEmail;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	public Boolean getIsMimeMessage() {
		return isMimeMessage;
	}

	public void setIsMimeMessage(Boolean isMimeMessage) {
		this.isMimeMessage = isMimeMessage;
	}
	
}
