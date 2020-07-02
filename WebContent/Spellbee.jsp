<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Iterator"%>



<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="Header.css">
<link rel="stylesheet" href="spellbee.css">
<link rel="shortcut icon" href="Img/favicon.ico" type="image/x-icon">
<meta charset="ISO-8859-1">
<title>SPELLBEE</title>
</head>
<header>
        <h2>LEARN<span>WITH</span><span style="color:yellow">FUN</span></h2>
        <nav>
            <ul>
            <li><a href="GamesHomePage.jsp">Games</a></li>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="AboutUs.jsp">About</a></li>
                <li><a href="ContactUS.jsp">Contact Us</a></li>
                 <li><a href="Logout.jsp">Logout</a></li>
            </ul>
        </nav>
  </header>  

<br>
<form method=post >
<body background="background/cloud.jpg" style="height:100%">
<center>
<h1 style="font-family: cursive; color: red; font-weight: bold;margin-top: -5px">
SPELLBEE</h1></center>
<center>
<table border="0" cellspacing="5" cellpadding="5" style="background-color:white; border-radius:5px; border-color:gray">
<tr>
<td>
<form method=post >
<br>
<center>
<img src="Img/Apple.jpg" height="80" width="100">
</center>
<br>
<center>
<input type=text name="letter1" class="A" value="" >
<input type=text name="P1" value="P" class="A" readonly>
<input type=text name="letter2" class="A" value="" >
<input type=text name="L" value="L" class="A" readonly>
<input type=text name="E" value="E" class="A" readonly>
<br>
<br>
<input type=submit value="Submit" name="Submit1">
</center>
</form>
</td>

<td>
<form method=post >
<br>
<center>
<img src="Img/Ball.png" height="80" width="85">
</center>
<br>
<center>
<input type=text name="B" value="B" class="A" readonly>
<input type=text name="letter1" class="A" value="" >
<input type=text name="letter2" value="" class="A" >
<input type=text name="L" value="L" class="A" readonly >
<br>
<br>
<input type=submit value="Submit" name="Submit2">
</center>
</td>
</form>
<td>
<form method=post >
<br>
<center>
<img src="Img/Cat.jpg" height="80" width="70">
</center>
<br>
<center>
<input type=text name="letter1" class="A" value="" >
<input type=text name="letter2" value="" class="A" >
<input type=text name="T" class="A" value="T" readonly>
<br>
<br>
<input type=submit value="Submit" name="Submit3">
</center>
</td>
</form>
<td>
<form method=post >
<br>
<center>
<img src="Img/drum.png" height="80" width="80">
</center>
<br>
<center>
<input type=text name="D" class="A" value="D" readonly>
<input type=text name="letter1" value="" class="A" >
<input type=text name="letter2" class="A" value="">
<input type=text name="M" class="A" value="M" readonly>
<br>
<br>
<input type=submit value="Submit" name="Submit4">
</center>
</td>
</form>
<td>
<form method=post >
<br>
<center>
<img src="Img/Eggs.png" height="80" width="70">
</center>
<br>
<center>
<input type=text name="letter1" class="A" value="">
<input type=text name="G" value="G" class="A" readonly>
<input type=text name="letter2" class="A" value="">
<input type=text name="S" class="A" value="S" readonly>
<br>
<br>
<input type=submit value="Submit" name="Submit5">
</center>
</form>
</td>

<td>
<form method=post >
<br>
<center>
<img src="Img/fish.jpg" height="80" width="70">
</center>
<br>
<center>
<input type=text name="letter1" class="A" value="" >
<input type=text name="I" value="I" class="A" readonly>
<input type=text name="S" class="A" value="S" readonly>
<input type=text name="letter2" value="" class="A" >
<br>
<br>
<input type=submit value="Submit" name="Submit6">
</center>
</td>
</form>
<td>
<form method=post >
<br>
<center>
<img src="Img/Goat.jpg" height="80" width="70">
</center>
<br>
<center>
<input type=text name="letter1" class="A" value="" >
<input type=text name="letter2" value="" class="A" >
<input type=text name="A" class="A" value="A" readonly>
<input type=text name="T" class="A" value="T" readonly>
<br>
<br>
<input type=submit value="Submit" name="Submit7">
</center>
</form>
</td>

<td>
<form method=post >
<br>
<center>
<img src="Img/Horse.jpg" height="80" width="70">
</center>
<br>
<center>
<input type=text name="H1" class="A" value="H" readonly>
<input type=text name="letter1" value="" class="A" >
<input type=text name="letter2" class="A" value="">
<input type=text name="S" class="A" value="S" readonly>
<input type=text name="E" class="A" value="E" readonly>
<br>
<br>
<input type=submit value="Submit" name="Submit8">
</center>
</form>
</td>

<td>
<form method=post >
<br>
<center>
<img src="Img/India.jpg" height="80" width="70">
</center>
<br>
<center>
<input type=text name="letter1" class="A" value="">
<input type=text name="N1" value="N" class="A" readonly>
<input type=text name="letter2" class="A" value="">
<input type=text name="I2" value="I" class="A" readonly>
<input type=text name="A3" value="A" class="A">
<br>
<br>
<input type=submit value="Submit" name="Submit9">
</center>
</form>
</td>


</tr>

<!-- 2nd row -->
<tr>
<td>
<form method=post >
<br>
<center>
<img src="Img/Joker.jpg" height="80" width="70">
</center>
<br>
<center>
<input type=text name="letter1" class="A" value="" >
<input type=text name="O" value="O" class="A" readonly>
<input type=text name="K" class="A" value="K" >
<input type=text name="E" class="A" value="E" >
<input type=text name="letter2" class="A" value="" >
<br>
<br>
<input type=submit value="Submit" name="Submit10">
</center>
</form>
</td>
<td>
<form method=post >
<br>
<center>
<img src="Img/Kite.jpg" height="80" width="70">
</center>
<br>
<center>
<input type=text name="K" class="A" value="K" readonly>
<input type=text name="I3" value="I" class="A" readonly>
<input type=text name="letter1" class="A" value=""> 
<input type=text name="letter2" class="A" value="">
<br>
<br>
<input type=submit value="Submit" name="Submit11">
</center>
</form>
</td>

<td>
<form method=post >
<br>
<center>
<img src="Img/Lion.jpg" height="80" width="80">
</center>
<br>
<center>
<input type=text name="L2" class="A" value="L" readonly>
<input type=text name="letter1" value="" class="A" >
<input type=text name="letter2" class="A" value="">
<input type=text name="N2" class="A" value="N" readonly>
<br>
<br>
<input type=submit value="Submit" name="Submit12">
</center>
</form>
</td>

<td>
<form method=post >
<br>
<center>
<img src="Img/Mango.jpg" height="80" width="70">
</center>
<br>
<center>
<input type=text name="letter1" class="A" value="">
<input type=text name="A4" value="A" class="A" readonly>
<input type=text name="letter2" class="A" value="" >
<input type=text name="G3" value="G" class="A" readonly >
<input type=text name="O2" class="A" value="O" readonly>
<br>
<br>
<input type=submit value="Submit" name="Submit13">
</center>
</form>
</td>

<td>
<form method=post >
<br>
<center>
<img src="Img/Nose.jpg" height="80" width="70">
</center>
<br>
<center>
<input type=text name="letter1" class="A" value="" >
<input type=text name="O3" value="O" class="A" readonly>
<input type=text name="S1" class="A" value="S" readonly>
<input type=text name="letter2" value="" class="A" >
<br>
<br>
<input type=submit value="Submit" name="Submit14">
</center>
</td>
</form>
<td>
<form method=post >
<br>
<center>
<img src="Img/Orange.jpg" height="80" width="70">
</center>
<br>
<center>
<input type=text name="O4" value="O" class="A" readonly>
<input type=text name="R" class="A" value="R" >
<input type=text name="A" class="A" value="A">
<input type=text name="letter1" class="A" value="">
<input type=text name="letter2" class="A" value="">
<input type=text name="A" class="A" value="E">
<br>
<br>
<input type=submit value="Submit" name="Submit15">
</center>
</td>
</form>
<td>
<form method=post >
<br>
<center>
<img src="Img/Pen.jpg" height="80" width="70">
</center>
<br>
<center>
<input type=text name="letter1" class="A" value="" >
<input type=text name="letter2" value="" class="A" >
<input type=text name="N5" class="A" value="N" readonly>
<br>
<br>
<input type=submit value="Submit" name="Submit16">
</center>
</form>
</td>

<td>
<form method=post >
<br>
<center>
<img src="Img/Queen.jpg" height="80" width="70">
</center>
<br>
<center>
<input type=text name="letter1" class="A" value="">
<input type=text name="U" value="U" class="A" readonly>
<input type=text name="letter2" class="A" value="" >
<input type=text name="E" class="A" value="E" readonly>
<input type=text name="N" class="A" value="N" readonly>
<br>
<br>
<input type=submit value="Submit" name="Submit17">
</center>
</form>
</td>

<td>
<form method=post >
<br>
<center>
<img src="Img/Rose.png" height="80" width="70">
</center>
<br>
<center>
<input type=text name="letter1" class="A" value="">
<input type=text name="letter2" value="" class="A" >
<input type=text name="S" class="A" value="S" readonly>
<input type=text name="E" class="A" value="E" readonly>

<br>
<br>
<input type=submit value="Submit" name="Submit18">
</center>
</form>
</td>


</tr>
<!-- 3rd row -->
<tr>

<td>
<form method=post >
<br>
<center>
<img src="Img/Sun.jpg" height="80" width="70">
</center>
<br>
<center>
<input type=text name="letter1" class="A" value="" >
<input type=text name="letter2" value="" class="A" >
<input type=text name="N" class="A" value="N" readonly>
<br>
<br>
<input type=submit value="Submit" name="Submit19">
</center>
</form>
</td>
<td>
<form method=post >
<br>
<center>
<img src="Img/Tree.jpg" height="80" width="70">
</center>
<br>
<center>
<input type=text name="letter1" class="A" value="" >
<input type=text name="letter2" value="" class="A"  >
<input type=text name="E" class="A" value="E" readonly>
<input type=text name="E" class="A" value="E"  readonly>
<br>
<br>
<input type=submit value="Submit" name="Submit20">
</center>
</form>
</td>

<td>
<form method=post >
<br>
<center>
<img src="Img/Uncle.jpg" height="80" width="70">
</center>
<br>
<center>
<input type=text name="U" class="A" value="U" readonly>
<input type=text name="N" value="N" class="A" readonly>
<input type=text name="letter1" class="A" value="" >
<input type=text name="letter2" value="" class="A"  >
<input type=text name="E" class="A" value="E" readonly>

<br>
<br>
<input type=submit value="Submit" name="Submit21">
</center>
</form>
</td>

<td>
<form method=post >
<br>
<center>
<img src="Img/Vase.jpg" height="80" width="70">
</center>
<br>
<center>
<input type=text name="V" class="A" value="V" readonly >
<input type=text name="A" value="A" class="A" readonly >
<input type=text name="letter1" class="A" value="" >
<input type=text name="letter2" class="A" value="" >
<br>
<br>
<input type=submit value="Submit" name="Submit22">
</center>
</form>
</td>
<td>
<form method=post >
<br>
<center>
<img src="Img/olf.jpg" height="80" width="70">
</center>
<br>
<center>
<input type=text name="letter1" class="A" value=""  >
<input type=text name="O" value="O" class="A" readonly>
<input type=text name="L" class="A" value="L" readonly>
<input type=text name="letter2" class="A" value="" >
<br>
<br>
<input type=submit value="Submit" name="Submit23">
</center>
</form>
</td>
<td>
<form method=post >
<br>
<center>
<img src="Img/Xmas.png" height="80" width="70">
</center>
<br>
<center>
<input type=text name="X" class="A" value="X" readonly >
<input type=text name="letter1" value="" class="A" >
<input type=text name="letter2" class="A" value="" >
<input type=text name="S" class="A" value="S" readonly>
<br>
<br>
<input type=submit value="Submit" name="Submit24" >
</center>
</form>
</td>

<td>
<form method=post >
<br>
<center>
<img src="Img/Yawn.jpg" height="80" width="70">
</center>
<br>
<center>
<input type=text name="letter1" class="A" value="" >
<input type=text name="A" value="A" class="A" readonly>
<input type=text name="letter2" class="A" value="" >
<input type=text name="N" value="N" class="A" readonly>
<br>
<br>
<input type=submit value="Submit" name="Submit25">
</center>
</form>
</td>

<td>
<form method=post >
<br>
<center>
<img src="Img/Zebra.jpg" height="80" width="70">
</center>
<br>
<center>
<input type=text name="letter1" class="A" value="" >
<input type=text name="letter2" value="" class="A" >
<input type=text name="B" class="A" value="B" readonly>
<input type=text name="R" class="A" value="R" readonly>
<input type=text name="A" class="A" value="A" readonly>
<br>
<br>
<input type=submit value="Submit" name="Submit26">
</center>
</form>
</td>
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
<%
int id=0;
String l1 = request.getParameter("letter1");
String l2 = request.getParameter("letter2");
/* System.out.print(l1);
System.out.print(l2); */
if(request.getParameter("Submit1")!=null)
{
	id=1;
		
	}
if(request.getParameter("Submit2")!=null)
{
	id=2;
		
	}
if(request.getParameter("Submit3")!=null)
{
	id=3;
		
	}
if(request.getParameter("Submit4")!=null)
{
	id=4;
		
	}
if(request.getParameter("Submit5")!=null)
{
	id=5;
		
	}
if(request.getParameter("Submit6")!=null)
{
	id=6;
		
	}
if(request.getParameter("Submit7")!=null)
{
	id=7;
		
	}
if(request.getParameter("Submit8")!=null)
{
	id=8;
		
	}
if(request.getParameter("Submit9")!=null)
{
	id=9;
		
	}
if(request.getParameter("Submit10")!=null)
{
	id=10;
		
	}
if(request.getParameter("Submit11")!=null)
{
	id=11;
		
	}
if(request.getParameter("Submit12")!=null)
{
	id=12;
		
	}
if(request.getParameter("Submit13")!=null)
{
	id=13;
		
	}
if(request.getParameter("Submit14")!=null)
{
	id=14;
		
	}
if(request.getParameter("Submit15")!=null)
{
	id=15;
		
	}
if(request.getParameter("Submit16")!=null)
{
	id=16;
		
	}
if(request.getParameter("Submit17")!=null)
{
	id=17;
		
	}
if(request.getParameter("Submit18")!=null)
{
	id=18;
		
	}
if(request.getParameter("Submit19")!=null)
{
	id=19;
		
	}
if(request.getParameter("Submit20")!=null)
{
	id=20;
		
	}
if(request.getParameter("Submit21")!=null)
{
	id=21;
		
	}
if(request.getParameter("Submit22")!=null)
{
	id=22;
		
	}
if(request.getParameter("Submit23")!=null)
{
	id=23;
		
	}
if(request.getParameter("Submit24")!=null)
{
	id=24;
		
	}
if(request.getParameter("Submit25")!=null)
{
	id=25;
		
	}
if(request.getParameter("Submit26")!=null)
{
	id=26;
		
	}
	
try
{
	if(id!=0)
	{

String url = "jdbc:mysql://localhost:3306/demodb";
String user = "root";
String password = "prachi";
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection(url, user, password);
 Statement ps = con.createStatement();
 ResultSet rs = ps.executeQuery("select * from spellbee where id = "+id);
List<String> list = new ArrayList();
while (rs.next()) {
	list.add(rs.getString(2));
	list.add(rs.getString(3));

}


Iterator<String> it = list.iterator();
String letter1=it.next();
String letter2=it.next();
	if(l1.equals(letter1) && l2.equals(letter2))
	{
		out.println("<audio autoplay>"); 
		out.println("<source src=audio/Correct.mp3>");
	}
	else
	{
		out.println("<audio autoplay>"); 
		out.println("<source src=audio/incorrect.mp3 type=audio/mpeg>");
			
	}
	}
}
catch(Exception e) {
	System.out.print(e);
  }


     		
 
%>

</body>
</html>
