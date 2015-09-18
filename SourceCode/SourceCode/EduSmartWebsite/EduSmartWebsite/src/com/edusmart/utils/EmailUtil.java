package com.edusmart.utils;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EmailUtil {

	public static void sendEmail(String toEmail, String subject, String body){
		try {
	        
			Properties props = System.getProperties();
	        props.put("mail.smtp.host", "mail.excellenceserver.com"); //SMTP Host
//	        props.put("mail.smtp.host", "smtp.gmail.com"); //SMTP Host
	        props.put("mail.smtp.port", "27"); //TLS Port
	        props.put("mail.smtp.auth", "true"); //enable authentication
	        props.put("mail.smtp.starttls.enable", "true"); //enable STARTTLS
	        
	        Authenticator auth = new Authenticator() {
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication("madhukar.hunde@excellenceit.in", "user@#123");
	            }
	        };
	        Session session = Session.getInstance(props, auth);
			
			MimeMessage msg = new MimeMessage(session);
			//set message headers
			msg.addHeader("Content-type", "text/HTML; charset=UTF-8");
			msg.addHeader("format", "flowed");
			msg.addHeader("Content-Transfer-Encoding", "8bit");
			msg.setFrom(new InternetAddress("madhukar.hunde@excellenceit.in", "user@#123"));
			msg.setReplyTo(InternetAddress.parse("madhukar.hunde@excellenceit.in", false));
			msg.setSubject(subject, "UTF-8");
			msg.setText(body, "UTF-8");
			msg.setSentDate(new Date());
			msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail, false));
			
			Transport.send(msg); 
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
