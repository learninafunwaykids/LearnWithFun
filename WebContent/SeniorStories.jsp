<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="Img/favicon.ico" type="image/x-icon">
<title>Senior KG Stories</title>
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
</div>
 -->
<table cellspacing="150" style="margin-top: -70px";>
<h1 style="color:#006400;text-align:center;font-family: cursive;">Senior KG Stories</h1>
<tr>
<td>
<video width="300" poster="images/bad.jpg"  style="border-radius:30px 30px 30px 30px;" controls>
  <source src="Stories/Senior Stories/BAD HABITS - MORAL STORIES FOR KIDS -- KIDS LEARNING VIDEOS (Animation) - KIDS HUT STORIES.mp4" type="video/mp4">
</video>
</td>
<td><video width="300" poster="images/Mo.jpg"  style="border-radius:30px 30px 30px 30px;" controls>
  <source src="Stories/Senior Stories/Lion and the Mouse in English - Story - English Fairy Tales.mp4" type="video/mp4">
</video></td>
<td><video width="300" poster="images/pot.jpg"  style="border-radius:30px 30px 30px 30px;" controls>
  <source src="Stories/Senior Stories/Magic Pot - English Moral Story for Kids.mp4" type="video/mp4">
</video></td>
</tr>
<tr>
<td>
<video width="300" poster="images/honest.jpg" style="border-radius:30px 30px 30px 30px;" controls>
  <source src="Stories/Senior Stories/The Gift Of Honesty - Cartoon In English For Kids - Moral Stories - Maha Cartoon TV English.mp4" type="video/mp4">
</video>
</td>
<td><video width="300" poster="images/dog.jpg" style="border-radius:30px 30px 30px 30px;" controls>
  <source src="Stories/Senior Stories/The Greedy Dog Moral story in English - Small Moral Story for kids - Kid2teentv.mp4" type="video/mp4">
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
