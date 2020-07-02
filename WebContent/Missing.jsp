<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post"><br>
 <input type="text" name="letter1" width=50px required><br>
<input type="text" name="letter2" width=50px required><br>
<input type="submit" value ="Submit" name="Submit1">
</form>
<form method="post"><br>
 <input type="text" name="letter1" width=50px required><br>
<input type="text" name="letter2" width=50px required><br>
<input type="submit" value ="Submit" name="Submit2">
</form>
<%
int id=0;
String l1 = request.getParameter("letter1");
String l2 = request.getParameter("letter2");
if(request.getParameter("Submit1")!=null)
{
	id=1;
		
	}
if(request.getParameter("Submit2")!=null)
{
	id=2;
		
	}
	
try
{
String url = "jdbc:mysql://localhost:3306/demodb";
String user = "root";
String password = "prachi";
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection(url, user, password);
 Statement ps = con.createStatement();
 ResultSet rs = ps.executeQuery("select * from missingletter where id = "+id);
List<String> list = new ArrayList();
while (rs.next()) {
	list.add(rs.getString(2));
	list.add(rs.getString(3));

}


Iterator<String> it = list.iterator();
String letter1=it.next();
String letter2=it.next();
	if(l1.equals(letter1) && l2.equals(letter2))
		
	out.print("Correct");
	else
		out.print("InCorrect");
}
catch(Exception e) {
	System.out.print(e);
  }


	
%>
</body>
</html>