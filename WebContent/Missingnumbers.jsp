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
<html>
<head>
<link rel="shortcut icon" href="Img/favicon.ico" type="image/x-icon">
<title>Find the Missing Numbers</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="Header.css">
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
<br>
<br>
<br>
<br> 
<body background="background/86947.jpg" style="height:100%;">

<form method="post">

<center>
<table border="0" cellspacing="5" cellpadding="5" style="border-radius:5px; border-color:gray;margin-top: 50px ">
	<tr>
	<h1 style="color:red;text-align:center;font-family: cursive; margin-top: -30px">Find the Missing Numbers</h1>
		<td>
		<h1 style="font-family : cursive; color:green">1</h1>
		</td>
		<td>
		<h1 style="font-family : cursive; color:green">2</h1>
		</td>
		<td>	
		<input type=text name="3" maxlength="1" value=""  required style="width : 40px; height : 40px; color:red; font:32px cursive; text-align: center; font-weight: bold">
		</td>
		<td>
		<h1 style="font-family : cursive; color:green">4</h1>
		</td>
		<td>
		<input type=text name="5"  required style="width : 40px; height : 40px; color:red; font:32px cursive; text-align: center; font-weight: bold" maxlength="1" value="" >
		</td>
		<td>
		<input type=text name="6"  required style="width : 40px; height : 40px; color:red; font:32px cursive; text-align: center; font-weight: bold" maxlength="1" value="" >
		</td>
		<td>
		<h1 style="font-family : cursive; color:green">7</h1>
		</td>
		<td>
		<input type=text name="8" required style="width : 40px; height : 40px; color:red; font:32px cursive; text-align: center; font-weight: bold" maxlength="1" value="">
		</td>
		<td>
		<h1 style="font-family : cursive; color:green">9</h1>
		</td>
		<td>
		<h1 style="font-family : cursive; color:green">10</h1>
		</td>
	</tr>
	<tr>
		<td>
		<h1 style="font-family : cursive; color:green">11</h1>
		</td>
		<td>
		<input type=text name="12"  required style="width : 40px; height : 40px; color:red; font:32px cursive; text-align: center; font-weight: bold" maxlength="2" value="">
		</td>
		<td>
		<input type=text name="13" required style="width : 40px; height : 40px; color:red; font:32px cursive; text-align: center; font-weight: bold" maxlength="2" value="">
		</td>
		<td>
		<h1 style="font-family : cursive; color:green">14</h1>
		</td>
		<td>
		<h1 style="font-family : cursive; color:green">15</h1>
		</td>
		<td>
		<input type=text name="16"  required  style="width : 40px; height : 40px; color:red; font:32px cursive; text-align: center; font-weight: bold" maxlength="2" value="" >
		</td>
		<td>
		<h1 style="font-family : cursive; color:green">17</h1>
		</td>
		<td>
		<input type=text name="18"  required style="width : 40px; height : 40px; color:red; font:32px cursive; text-align: center; font-weight: bold" maxlength="2" value="">
		</td>
		<td>
		<h1 style="font-family : cursive; color:green">19</h1>
		</td>
		<td>
		<input type=text name="20" required style="width : 40px; height : 40px; color:red; font:32px cursive; text-align: center; font-weight: bold" maxlength="2" value="">
		</td>
	<tr >
		<td colspan="10" align="center">
		<input type=submit value="Submit" name="Submit" style="height:30px; font:15px cursive; font-weight:bold	">
		</td>
	</tr>
</table>
</center>
</form>
</body>
<%
int id=0;
String missing[]= new String[9];
 missing[0] = request.getParameter("3");
 missing[1] = request.getParameter("5");
 missing[2] = request.getParameter("6");
 missing[3] = request.getParameter("8");
 missing[4] = request.getParameter("12");
 missing[5] = request.getParameter("13");
 missing[6] = request.getParameter("16");
 missing[7] = request.getParameter("18");
 missing[8] = request.getParameter("20");


try
{
String url = "jdbc:mysql://localhost:3306/demodb";
String user = "root";
String password = "prachi";
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection(url, user, password);
 Statement ps = con.createStatement();
 ResultSet rs = ps.executeQuery("select * from missingnumber");
List<String> list = new ArrayList();
while (rs.next()) {
	list.add(rs.getString(2));
}
Iterator<String> it = list.iterator();
String letter[]= new String[9];
for(int i=0; i<9; i++)
{
	letter[i]=it.next();
}


for(int j=0;j<9;j++)
{
	if(missing[j].equals(letter[j]) )
	{
		out.println("<audio autoplay>"); 
		out.println("<source src=audio/Correct.mp3 type=audio/mpeg>");
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
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
if(session.getAttribute("user")==null)
{
response.sendRedirect("Login.jsp");
}  
%>
</html>