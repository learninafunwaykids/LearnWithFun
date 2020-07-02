package com.mail;



import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import java.util.Random;
import javax.mail.Authenticator;
import javax.mail.Message;

import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;

import javax.mail.internet.MimeMessage;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;

@WebServlet("/otpvalidate")
public class Otp extends HttpServlet {
String email;

    /**
     *
     * @param request
     * @param response
     * @return
     * @throws ServletException
     * @throws IOException
     */
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		
		 email = request.getParameter("mail");
		 final String myAccountEmail = "learninafunwaykids@gmail.com";
	 final	String password = "riselearnshine";
		
		Properties properties = new Properties();
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.port", "587");
		
		Session session = Session.getInstance(properties, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(myAccountEmail, password);
			}
		});
        
		
	try {
		Connection con=null;
		String url = "jdbc:mysql://localhost:3306/demodb";
		String user = "root";
		String password1 = "prachi";
		Class.forName("com.mysql.jdbc.Driver");
		 con= DriverManager.getConnection(url, user, password1);
		 PreparedStatement ps = con.prepareStatement("select  EmailId from userreg where EmailId = ?");
		 ps.setString(1, email);
		 ResultSet rs=ps.executeQuery()	;
		 String l1=null;
		 
		 while (rs.next())
		 {
				l1=rs.getString(1);		
		 }

		 
		 if(email.equals(l1))
			{
		
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(myAccountEmail));
			message.setRecipient(Message.RecipientType.TO, new InternetAddress(email));
			message.setSubject("My first mail ");
			Random rand = new Random();
			String otpgenerated=Integer.toString(rand.nextInt(900000) + 100000);
                       
			message.setText("Ur OTP is:" + otpgenerated);
                        
                        Transport.send(message);
                       
		System.out.println("Message send successfully");
                response.sendRedirect("EnterOTP.jsp");
                 HttpSession  ses=request.getSession();
                  ses.setAttribute("otpg",otpgenerated);
                  
                  HttpSession  ses1=request.getSession();
                  ses1.setAttribute("email", email);
					
              
			
		}
		 else
		 {
			
			 out.println("<html><head></head><body onload=\"alert('Please enter valid emailid')\"></body></html>");
				
				  RequestDispatcher rd=request.getRequestDispatcher("otp.jsp");
				 rd.include(request, response);
				 
			
		 }
	}catch (Exception ex) {
			out.println(ex);
		}
        }
}
        
