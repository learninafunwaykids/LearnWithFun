package com.missing;

import java.io.*;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;
import java.util.Properties;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet("/register")
public class Register extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		String fullname = request.getParameter("fname");
		String pass = request.getParameter("password");
		String username = request.getParameter("userpass");
		String email = request.getParameter("mail");
		try {

			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demodb", "root", "prachi");
			PreparedStatement ps1 = con.prepareStatement("select* from userreg where EmailId=? ");
			ps1.setString(1, email);
			ResultSet rs = ps1.executeQuery();
			String dbemail = "";
			while (rs.next()) {
				dbemail = rs.getString(4);

				System.out.println(dbemail);
				System.out.println(email);
			}

			if (dbemail.equals(email)) {
				out.println(
						"<html><head></head><body onload=\"alert('You have already used this email-id.Register with another mail id or login with the previous mail-id')\"></body></html>");
				RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
				rd.include(request, response);
				
			}

			else {
				PreparedStatement ps = con.prepareStatement("insert into userreg values(?,?,?,?)");

				ps.setString(1, fullname);
				ps.setString(2, pass);
				ps.setString(3, username);
				ps.setString(4, email);
				int count = ps.executeUpdate();
				System.out.println("Count of the  no of rows added: " + count);

				PreparedStatement st = con.prepareStatement("select EmailId from userreg where EmailId = ?");
				st.setString(1, email);
				ResultSet rs1 = st.executeQuery();
				String databaseemail = "";
				while (rs1.next()) {
					databaseemail = rs1.getString(1);
					System.out.println("The value from db is " + databaseemail);
					System.out.println("The value from user " + email);
				}
				if (databaseemail.equals(email)) {
                 
                
                 
                 out.println(
 						"<html><head></head><body onload=\"alert('Registered Successfully..! ')\"></body></html>");
 				RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
 				rd.include(request, response);
 				
                 
					JavaMailUtil.sendmail(email);

				}
			}

		} catch (Exception se) {
			se.printStackTrace();
		}

	}
}
