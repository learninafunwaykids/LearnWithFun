<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="Img/favicon.ico" type="image/x-icon">
<title>JR Stories</title>
<link rel="stylesheet" href="Header.css">
  </head>
  <header>
        <h2>LEARN<span>WITH</span><span style="color:yellow">FUN</span></h2>
        <nav>
            <ul>
            <li><a href="StoriesSection.jsp">Stories</a></li>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="AboutUs.jsp">About</a></li>
                <li><a href="ContactUS.jsp">Contact Us</a></li>
                <li><a href="Logout.jsp">Logout</a></li>
            </ul>
        </nav>
  </header>  	

</head>
<body background="background/55e1c0d248a679ad24cc04ea694b78aa.jpg" width="auto">



<table cellspacing="150" style="margin-top: -70px";>
<h1 style="color:#006400;text-align:center;font-family: cursive;">Junior KG Stories</h1>
<tr>
<td>
<video width="300" poster="images/milk.jpg" style="border-radius:30px 30px 30px 30px;"  controls>
  <source src="Stories/JR stories/A GLASS OF MILK - ENGLISH ANIMATED STORIES FOR KIDS - TRADITIONAL STORY - T-SERIES.mp4" type="video/mp4">
</video>
</td>
<td><video width="300" poster="images/fish.jpg" style="border-radius:30px 30px 30px 30px;"   controls>
  <source src="Stories/JR stories/Clever Fish - English Stories For Kids - Moral Stories In English - Short Story In English.mp4" type="video/mp4">
</video></td>
<td><video width="300" poster="images/ant.jpg"  style="border-radius:30px 30px 30px 30px;" controls>
  <source src="Stories/JR stories/The Ant and The Grasshopper Story (English Short Story for Kids).mp4" type="video/mp4">
</video></td>
</tr>
<tr>
<td>
<video width="300" poster="images/dove.jpg"  style="border-radius:30px 30px 30px 30px;" controls>
  <source src="Stories/JR stories/The Dove and Ant.mp4" type="video/mp4">
</video>
</td>
<td><video width="300" poster="images/grapes.jpg"  style="border-radius:30px 30px 30px 30px;" controls>
  <source src="Stories/JR stories/THE FOX and THE SOUR GRAPES Story in English - Short Story for Kids.mp4" type="video/mp4">
</video></td>
</tr>
</table>
  <%
   response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        		 if(session.getAttribute("user")==null)
        			{
        			response.sendRedirect("Login.jsp");
        			} 
        		
    %> 
</body>
</html>
