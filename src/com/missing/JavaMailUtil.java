package com.missing;

import java.util.Properties;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 public class JavaMailUtil {
	
	public static void sendmail(String recipient) throws Exception {
		System.out.println("Preparing to  send Email");
		Properties properties = new Properties();
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.port", "587");

		String myAccountEmail = "learninafunwaykids@gmail.com";
		String password = "riselearnshine";

		Session session = Session.getInstance(properties, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(myAccountEmail, password);
			}
		});
		Message message = prepareMessage(session, myAccountEmail, recipient);
		Transport.send(message);
		System.out.println("Message send successfully");
	}
	 
	 
	 
	private static Message prepareMessage(Session session, String myAccountEmail, String recipient) {
		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(myAccountEmail));
			message.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
			message.setSubject("Registered Successfully ");
			
			message.setText("You have been registered successfully"  );
			
			return message;
		} catch (Exception ex) {
			Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
		}
		return null;
	}
	 
  
}
 
 
