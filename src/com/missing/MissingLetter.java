package com.missing;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/miss")
public class MissingLetter extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		int id=0;
		String l1 = request.getParameter("letter1");
		String l2 = request.getParameter("letter2");
		if(request.getParameter("Submit1")!=null)
		{
			id=1;
		}
		else if(request.getParameter("Submit2")!=null)
		{
			id=2;
		}
		
				
		
		System.out.println( " Value entered by user " +l1 +"  " +l2 +"  "+id);

		try {
			String url = "jdbc:mysql://localhost:3306/demodb";
			String user = "root";
			String password = "prachi";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, password);
			Statement ps = con.createStatement();
			ResultSet rs = ps.executeQuery("select * from missingletter where id = "+id);
			List<String> list = new ArrayList();
			while (rs.next()) {
				list.add(rs.getString(2));
				list.add(rs.getString(3));

			}
			Iterator<String> it = list.iterator();
			String letter1=it.next();
			System.out.println( letter1);
			String letter2=it.next();
			System.out.println(letter2);
			if(l1.equals(letter1) && l2.equals(letter2))
				
			out.print("Correct");
			else
				out.print("InCorrect");
			

			ps.close();
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}



/*
 * //2ND CLASS
 * 
 * @WebServlet("/miss2") class MissingLetter2 extends HttpServlet { public void
 * doPost(HttpServletRequest request, HttpServletResponse response) throws
 * ServletException, IOException {
 * 
 * response.setContentType("text/html"); PrintWriter out = response.getWriter();
 * 
 * String l1 = request.getParameter("letter1"); String l2 =
 * request.getParameter("letter2"); System.out.println(
 * " Value entered by user " +l1 +"  " +l2);
 * 
 * try { String url = "jdbc:mysql://localhost:3306/demodb"; String user =
 * "root"; String password = "prachi"; Class.forName("com.mysql.jdbc.Driver");
 * Connection con = DriverManager.getConnection(url, user, password); Statement
 * ps = con.createStatement(); ResultSet rs =
 * ps.executeQuery("select * from missingletter"); List<String> list = new
 * ArrayList(); while (rs.next()) { list.add(rs.getString(2));
 * list.add(rs.getString(3));
 * 
 * } Iterator<String> it = list.iterator(); String letter1=it.next();
 * System.out.println( letter1); String letter2=it.next();
 * System.out.println(letter2); if(l1.equals(letter1) && l2.equals(letter2))
 * System.out.println("Correct"); else System.out.println("Incorrect");
 * 
 * 
 * ps.close(); con.close(); } catch (Exception e) { System.out.println(e); } } }
 */
