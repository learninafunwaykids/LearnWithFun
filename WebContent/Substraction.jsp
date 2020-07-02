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
<link rel="shortcut icon" href="Img/favicon.ico" type="image/x-icon">
<title>Subtraction</title>
<link rel="stylesheet" href="Header.css">
</head>
<header>
	<h2>
		LEARN<span>WITH</span><span style="color: yellow">FUN</span>
	</h2>
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

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<br>
<body background="background/hd1.jpg">
	<table cellspacing="20" align="center">
		<tr>
		<h1 style="color:#DB7093;text-align:center;font-family: cursive;">Subtraction of Numbers</h1>
		
			<form method="post">
					<td><img src="images\8.png" style="height: 100px; width: 100px" /></td> 
					<td><img src="images\-.png" style="height: 100px; width: 100px" /></td> 
					<td><img src="images\four.jpg" style="height: 100px; width: 100px" /></td> 
					<td><span style="font : 30px cursive;color:yellow">=</span></td>
					<td><input type="text" name="n" style="height:60px;width:50px;border-radius:5px;color:Blue;font:30px cursive;text-align:center" maxlength=1/></td>
					<td><input type="submit" name="s1" style="height:30px; font:15px cursive; font-weight:bold	"></td>
				</form>
				<td></td><td></td><td></td><td></td><td>
			
				<form method="post">
					<td><img src="images\six.png" style="height: 100px; width: 100px" /></td> 
					<td><img src="images\-.png" style="height: 100px; width: 100px" /></td> 
					<td><img src="images\one.jpg" style="height: 100px; width: 100px" /></td> 
					<td><span style="font : 30px cursive;color:yellow">=</span></td>
					<td><input type="text" name="n" style="height:60px;width:50px;border-radius:5px;color:Blue;font:30px cursive;text-align:center" maxlength=1/></td> 
					<td><input type="submit" name="s2" style="height:30px; font:15px cursive; font-weight:bold	"></td>
				</form>
		</tr>
		<tr></tr>
		<tr></tr>
		<tr></tr>
		<tr>
		<form method="post">
					<td><img src="images\two.png" style="height: 100px; width: 100px" /></td> 
					<td><img src="images\-.png" style="height: 100px; width: 100px" /></td> 
					<td><img src="images\two.png" style="height: 100px; width: 100px" /></td> 
					<td><span style="font : 30px cursive;color:yellow">=</span></td>
					<td><input type="text" name="n" style="height:60px;width:50px;border-radius:5px;color:Blue;font:30px cursive;text-align:center" maxlength=1/></td>
					<td><input type="submit" name="s3" style="height:30px; font:15px cursive; font-weight:bold	"></td>
				</form>
				<td></td><td></td><td></td><td></td><td>
				<form method="post">
					<td><img src="images\nine.png" style="height: 100px; width: 100px" /></td> 
					<td><img src="images\-.png" style="height: 100px; width: 100px" /></td> 
					<td><img src="images\8.png" style="height: 100px; width: 100px" /></td> 
					<td><span style="font : 30px cursive;color:yellow">=</span></td>
					<td><input type="text" name="n" style="height:60px;width:50px;border-radius:5px;color:Blue;font:30px cursive;text-align:center" maxlength=1/></td> 
					<td><input type="submit" name="s4" style="height:30px; font:15px cursive; font-weight:bold	"></td>
				</form>
		</tr>		
		<tr></tr>
		<tr></tr>
		<tr></tr>
		<tr>
		<form method="post">
					<td><img src="images\four.jpg" style="height: 100px; width: 100px" /></td> 
					<td><img src="images\-.png" style="height: 100px; width: 100px" /></td> 
					<td><img src="images\two.png" style="height: 100px; width: 100px" /></td> 
					<td><span style="font : 30px cursive;color:yellow">=</span></td>
					<td><input type="text" name="n" style="height:60px;width:50px;border-radius:5px;color:Blue;font:30px cursive;text-align:center" maxlength=1/></td> 
					<td><input type="submit" name="s5" style="height:30px; font:15px cursive; font-weight:bold	"></td>
				</form>
				<td></td><td></td><td></td><td></td><td>
				<form method="post">
					<td><img src="images\8.png" style="height: 100px; width: 100px" /></td> 
					<td><img src="images\-.png" style="height: 100px; width: 100px" /></td> 
					<td><img src="images\six.png" style="height: 100px; width: 100px" /></td> 
					<td><span style="font : 30px cursive;color:yellow">=</span></td>
					<td><input type="text" name="n" style="height:60px;width:50px;border-radius:5px;color:Blue;font:30px cursive;text-align:center" maxlength=1/></td> 
					<td><input type="submit" name="s6" style="height:30px; font:15px cursive; font-weight:bold	"></td>
				</form>
		</tr>
			
			



	</table>
	<%
		int id = 0;
		String l = request.getParameter("n");

		if (request.getParameter("s1") != null) {
			id = 1;

		}
		if (request.getParameter("s2") != null) {
			id = 2;

		}
		if (request.getParameter("s3") != null) {
			id = 3;

		}
		if (request.getParameter("s4") != null) {
			id = 4;

		}
		if (request.getParameter("s5") != null) {
			id = 5;

		}
		if (request.getParameter("s6") != null) {
			id = 6;

		}

		try {
			String url = "jdbc:mysql://localhost:3306/demodb";
			String user = "root";
			String password = "prachi";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, password);
			Statement ps = con.createStatement();
			ResultSet rs = ps.executeQuery("select* from subtraction where id = " + id);
			List<Integer> list = new ArrayList();
			while (rs.next()) {
				list.add(rs.getInt(2));

			}

			Iterator<Integer> it = list.iterator();
			String letter = it.next().toString();

			if (l.equals(letter)) {
				out.println("<audio autoplay>");
				out.println("<source src=audio/Correct.mp3 type=audio/mpeg>");
			}

			else
				out.println("<audio autoplay>");
			out.println("<source src=audio/incorrect.mp3 type=audio/mpeg>");
		} catch (Exception e) {
			System.out.print(e);
		}
		 response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        if(session.getAttribute("user")==null)
        {
        response.sendRedirect("Login.jsp");
        }  
	%>




</body>
</html>



