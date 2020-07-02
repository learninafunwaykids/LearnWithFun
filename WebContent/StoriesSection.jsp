<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="Img/favicon.ico" type="image/x-icon">
<title>Stories</title>
<link rel="stylesheet" href="Header.css">
  </head>
  <header>
        <h2>LEARN<span>WITH</span><span style="color:yellow">FUN</span></h2>
        <nav>
            <ul>
            
                <li><a href="index.jsp">Home</a></li>
                <li><a href="AboutUs.jsp">About</a></li>
                <li><a href="ContactUS.jsp">Contact Us</a></li>
                <li><a href="Logout.jsp">Logout</a></li>
            </ul>
        </nav>
  </header>  	

 
</head>
<body  background="background/base.jpg" width="auto">
<div>
</div>
<center>

<table cellspacing="150" style="margin-top: -70px";>
<h1 style="color:#006400;text-align:center;font-family: cursive;">Stories</h1>
<tr>
<td>
<a href="nurserystory.jsp">
<img src="NGS/nr.jpg" height="250" width="250" style="border-radius:30px 30px 30px 30px;"></a></td>
<td>
<a href="JRStories.jsp">
<img src="NGS/jr2.jpg" height="250" width="250" style="border-radius:30px 30px 30px 30px;"></td>
<td>
<a href="SeniorStories.jsp">
<img src="NGS/sr2.jpg" height="250" width="250" style="border-radius:30px 30px 30px 30px;"></td>
</tr>
</table>
</center>
 <%
   response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        		 if(session.getAttribute("user")==null)
        			{
        			response.sendRedirect("Login.jsp");
        			} 
        		
    %> 
</body>
</html>
