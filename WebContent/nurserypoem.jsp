<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="Img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="Header.css">
<title>Nursery Poems</title>
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
<h1 style="color:#006400;text-align:center;font-family: cursive;">Nursery Poems</h1>
<tr>
<td>
<video width="300" poster="images/abc.jpg"  style="border-radius:30px 30px 30px 30px;" controls>
  <source src="Poems/Nur Poem/ABCD poem.mp4" type="video/mp4">
</video>
</td>
<td><video width="300" poster="images/ba.jpg"  style="border-radius:30px 30px 30px 30px;" controls>
  <source src="Poems/Nur Poem/Baa Baa Black Sheep - The Joy of Sharing!.mp4" type="video/mp4">
</video></td>
<td><video width="300" poster="images/jonny.jpg"  style="border-radius:30px 30px 30px 30px;" controls>
  <source src="Poems/Nur Poem/Johny Johny Yes Papa Nursery Rhyme - Part 6 - 3D Vehicles Rhymes & Songs for Children.mp4" type="video/mp4">
</video></td>
</tr>
<tr>
<td>
<video width="300" poster="images/rain.jpg"  style="border-radius:30px 30px 30px 30px;" controls>
  <source src="Poems/Nur Poem/Rain, Rain, Go Away Nursery Rhyme With Lyrics - Cartoon Animation Rhymes & Songs for Children.mp4" type="video/mp4">
</video>
</td>
<td><video width="300" poster="images/star.jpg" style="border-radius:30px 30px 30px 30px;" controls>
  <source src="Poems/Nur Poem/videoplayback.mp4" type="video/mp4">
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
