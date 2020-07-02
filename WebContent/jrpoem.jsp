<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="Img/favicon.ico" type="image/x-icon">
<title>JR Poems</title>
<!-- <link rel="stylesheet" type="text/css" href="style1.css"> -->
<link rel="stylesheet" href="Header.css">
  </head>
  <header>
        <h2>LEARN<span>WITH</span><span style="color:yellow">FUN</span></h2>
        <nav>
            <ul>
            <li><a href="PoemSection.jsp">Poems</a></li>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="AboutUs.jsp">About</a></li>
                <li><a href="ContactUS.jsp">Contact Us</a></li>
                <li><a href="Logout.jsp">Logout</a></li>
            </ul>
        </nav>
  </header>  
</head>
<body  background="background/55e1c0d248a679ad24cc04ea694b78aa.jpg" width="auto">

<!-- <div class="header">
</div> -->

<table cellspacing="150" style="margin-top: -90px";>
<h1 style="color:#006400;text-align:center;font-family: cursive;">JR Poems</h1>
<tr>
<td>
<video width="300" poster="images/brush.jpg"  style="border-radius:30px 30px 30px 30px;" controls>
  <source src="Poems/Jr poem/Brush Brush Brush Your Teeth Nursery Rhymes -Popular Nursery Rhymes For Children-Best Songs For Kids.mp4" type="video/mp4">
</video>
</td>
<td><video width="300" poster="images/bell1.jpg" style="border-radius:30px 30px 30px 30px;" controls>
  <source src="Poems/Jr poem/Ding Dong Bell Poem I Ding Dong Bell Rhyme with Lyrics - English Rhymes For Babies - Poem For Kids.webm" type="video/mp4">
</video></td>
<td><video width="300" poster="images/numjpg.jpg" style="border-radius:30px 30px 30px 30px;"  controls>
  <source src="Poems/Jr poem/Engine Engine Number 9 Nursery Rhymes for Children.mp4" type="video/mp4">
</video></td>
</tr>
<tr>
<td>
<video width="300" poster="images/hg.jpg" style="border-radius:30px 30px 30px 30px;" controls>
  <source src="Poems/Jr poem/Hickory Dickory Dock - CoCoMelon Nursery Rhymes & Kids Songs.mp4" type="video/mp4">
</video>
</td>
<td><video width="300" poster="images/london.jpg" style="border-radius:30px 30px 30px 30px;" controls>
  <source src="Poems/Jr poem/London Bridge Is Falling Down Nursery Rhymes Popular Baby Songs.mp4" type="video/mp4">
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

