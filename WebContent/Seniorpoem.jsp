<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="Img/favicon.ico" type="image/x-icon">
<title>SR Poems</title>
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
<body background="background/55e1c0d248a679ad24cc04ea694b78aa.jpg" width="auto">

<!-- <div class="header">
</div> -->

<table cellspacing="150" style="margin-top: -90px";>
<h1 style="color:#006400;text-align:center;font-family: cursive;">SR Poems</h1>
<tr>
<td>
<video width="300" poster="images/hop.jpg"  style="border-radius:30px 30px 30px 30px;" controls>
  <source src="Poems/Sr poem/Hop A Little Jump A Little - Kids English Rhymes.mp4" type="video/mp4">
</video>
</td>
<td><video width="300" poster="images/humpty.jpg"  style="border-radius:30px 30px 30px 30px;" controls>
  <source src="Poems/Sr poem/Humpty Dumpty Nursery Rhyme - 3D Animation English Rhymes for children.webm" type="video/mp4">
</video></td>
<td><video width="300" poster="images/roses.jpg" style="border-radius:30px 30px 30px 30px;"  controls>
  <source src="Poems/Sr poem/Ringa Ringa Roses - Ring Around the Rosie -3D Kid's Songs & Nursery Rhymes for children.mp4" type="video/mp4">
</video></td>
</tr>
<tr>
<td>
<video width="300" poster="images/teddy.jpg" style="border-radius:30px 30px 30px 30px;"  controls>
  <source src="Poems/Sr poem/Teddy Bear Teddy Bear turn around - 3D Animation English Nursery rhyme song for children.mp4" type="video/mp4">
</video>
</td>
<td><video width="300" poster="images/wi.jpg"  style="border-radius:30px 30px 30px 30px;" controls>
  <source src="Poems/Sr poem/Wee Willie Winkie - Nursery Rhyme with Karaoke.mp4" type="video/mp4">
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