<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
    
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="shortcut icon" href="Img/favicon.ico" type="image/x-icon">
<title>Enter OTP</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="Header.css">
</head>
<header>
        <h2>LEARN<span>WITH</span><span style="color:yellow">FUN</span></h2>
        <nav>
            <ul>
               
                <li><a href="AboutUs.jsp">About</a></li>
                <li><a href="ContactUS.jsp">Contact Us</a></li>
              
            </ul>
        </nav>
  </header>  	
  <br><br><br>
<body background="background/kids-wallpaper-5.jpg">
<center>
<fieldset style="width:400px;height:200px;background-color:lightyellow;border-radius:10px">
<form method=post >
<br>
<h3 style="font-family: cursive; color: red; font-weight: bold">Enter OTP :</h3><br><input type=text name="o" style=" color:Blue;font:15px cursive;text-align:center"><br><br>
<input type=submit value="Submit" name="Submit" style="height:30px; font:15px cursive; font-weight:bold	"/>
<br>
</form>
</fieldset>
</center>
<%

String otpmailed = request.getParameter("o");

HttpSession sess=request.getSession();

String otpg =(String)sess.getAttribute("otpg");

HttpSession sess1=request.getSession();

String abc =(String)sess1.getAttribute("email");

 if(request.getParameter("o")==null)
{
	//System.out.print("OTP equals to null");
}
else
{      
        if(otpg.equals(otpmailed))
        {
        	HttpSession sess2=request.getSession();
        	sess2.setAttribute("mailabc", abc);
        	response.sendRedirect("UpdatePassword.jsp");
        	
        }
        else
        {
        	out.println("<html><head></head><body onload=\"alert('Please enter Correct OTP')\"></body></html>");
			 
			
        }

}

%>
</body>
</html>

