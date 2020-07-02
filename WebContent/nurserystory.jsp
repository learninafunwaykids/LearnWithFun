<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="Img/favicon.ico" type="image/x-icon">
<title>Nursery Stories</title>
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

<!-- <div class="header">
</div> -->

<table cellspacing="150" style="margin-top: -70px";> 
<tr>
<h1 style="color:#006400;text-align:center;font-family: cursive;">Nursery Stories </h1>
<td>
<video width="300" poster="images/manku.jpg" style="border-radius:30px 30px 30px 30px;" controls>
  <source src="Stories/NURSERY Stories/The Monkey and The Cap Seller Story - English Story For Kids.mp4" type="video/mp4">
</video>
</td>
<td><video width="300" poster="images/ea.jpg"  style="border-radius:30px 30px 30px 30px;" controls>
  <source src="Stories/NURSERY Stories/THE ELEPHANT AND THE ANT FULL STORY -  ENGLISH ANIMATED STORIES FOR KIDS - TRADITIONAL STORY.mp4" type="video/mp4">
</video></td>
<td><video width="300" poster="images/hat.jpg"  style="border-radius:30px 30px 30px 30px;" controls>
  <source src="Stories/NURSERY Stories/The Hare and The Tortoise Story - Bedtime Story by Kids Hut - English Stories For Kids.mp4" type="video/mp4">
</video></td>
</tr>
<tr>
<td>
<video width="300" poster="images/frog.jpg"  style="border-radius:30px 30px 30px 30px;" controls>
  <source src="Stories/NURSERY Stories/The Two Frogs - English Short Stories For Children - KidsOne.mp4" type="video/mp4">
</video>
</td>
<td><video width="300" poster="images/q.jpg"  style="border-radius:30px 30px 30px 30px;" controls>
  <source src="Stories/NURSERY Stories/The Clever Queen and Farmer's Wife - English World Folk Tales - Fairy Tales for Kids.mp4" type="video/mp4">
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
