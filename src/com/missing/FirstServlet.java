package com.missing;


	import java.io.IOException;  
	import java.io.PrintWriter;  
	  
	import javax.servlet.RequestDispatcher;  
	import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;  
	import javax.servlet.http.HttpServletRequest;  
	import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;  
	  
	  @WebServlet("/login")
	public class FirstServlet extends HttpServlet {  
	public void doPost(HttpServletRequest request, HttpServletResponse response)  
	        throws ServletException, IOException {  
	  
	    response.setContentType("text/html");  
	    PrintWriter out = response.getWriter();  
	          
	    String n=request.getParameter("new");  
	    String p=request.getParameter("Conf");  
	          
	    if(LoginDao.validate(n, p)){  
	    	response.sendRedirect("index.jsp");
	    	HttpSession session = request.getSession();
            session.setAttribute("user", n);
			
	    }  
	    else{  
	    	out.println(
					"<html><head></head><body onload=\"alert('Username or Password Incorrect')\"></body></html>");
	    	RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
				rd.include(request, response);
				
	    	
	
			
	    }  
	          
	    out.close();  
	    }  

}
