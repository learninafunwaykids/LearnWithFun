<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="Img/favicon.ico" type="image/x-icon">
<title>GamesHomePage</title>
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

<!-- <br>
<br> -->
<!-- <br>
<br>
<br>  -->
</head>
<body background="background/cloud.jpg">
<div>
</div>
<center>
<table cellspacing="70"  style="margin-top: -70px";>
<h1 style="color:#006400;text-align:center;font-family: cursive;">Games</h1>
<tr>
<td>
<a href="AdditionOfNumbers.jsp">
<img src="games/addition.jpg" height="200" width="300" style="border-radius:30px 30px 30px 30px;"></a></td>

<td>
<a href="CounttheObjects.jsp">
<img src="games/c.jpg" height="200"  width="300" style="border-radius:30px 30px 30px 30px;"></a></td>
<td>
<a href="Substraction.jsp">
<img src="games/substract.jpg" height="200"  width="300" style="border-radius:30px 30px 30px 30px;"></a></td>
</tr>
<tr>
<td>
<a href="FindBiggerOne.jsp">
<img src="games/big.jpg" height="200" width="300" style="border-radius:30px 30px 30px 30px;"></a></td>

<td>
<a href="IdentifyShape.jsp">
<img src="games/shape.jpg" height="200"  width="300" style="border-radius:30px 30px 30px 30px;"></a></td>
<td>
<a href="FindSmallerOne.jsp">
<img src="games/small.jpg" height="200"  width="300" style="border-radius:30px 30px 30px 30px;"></a></td>
</tr>
<tr>
<td>
<a href="MissingLetters.jsp">
<img src="games/missing2.png" height="200"  width="300" style="border-radius:30px 30px 30px 30px;"></a></td>
<td>
<a href="Missingnumbers.jsp">
<img src="games/missingnumbers.jpg" height="200"  width="300" style="border-radius:30px 30px 30px 30px;"></a></td>
<td>
<a href="Spellbee.jsp">
<img src="games/sb.jpg" height="200"  width="300" style="border-radius:30px 30px 30px 30px;"></a></td>
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
