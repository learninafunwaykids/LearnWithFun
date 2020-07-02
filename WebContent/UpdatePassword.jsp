<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.PreparedStatement"%>
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
<meta charset="ISO-8859-1">
<title>UpdatePassword</title>


<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="Header.css">
</head>
<header>
	<h2>
		LEARN<span>WITH</span><span style="color: yellow">FUN</span>
	</h2>
	<nav>
		<ul>
			<li><a href="Login.jsp">Login</a></li>

			<li><a href="AboutUs.jsp">About</a></li>
			<li><a href="ContactUS.jsp">Contact Us</a></li>

		</ul>
	</nav>
</header>
<br>
<br>
<br>
<body background="background/kids-wallpaper-5.jpg">
	<center>
		<fieldset
			style="width: 400px; height: 300px; background-color: lightyellow; border-radius: 10px">
			<form method="post">
				<br>

				<h4 style="font-family: cursive; color: red; font-weight: bold">
					New Password :
					</h3>
					<input type="password" name="new" id="txtNewPassword" value=""
						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
						title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters"
						style="color: Blue; font: 15px cursive; text-align: center"
						required><br> <br>
					<h4 style="font-family: cursive; color: red; font-weight: bold">
						Confirm Password :
						</h3>
						<input type="password" name="Conf" id="txtConfirmPassword"
							pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
							title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters"
							value=""
							style="color: Blue; font: 15px cursive; text-align: center"
							required><br> <br> <input type=submit
							value="Submit" name="Submit1"
							style="height: 30px; font: 15px cursive; font-weight: bold" />
			</form>
		</fieldset>
	</center>
</body>
</html>
<%
	Object a = session.getAttribute("mailabc");
	String abcdmail = a.toString();

	try {
		String newp = request.getParameter("new");
		String confirm = request.getParameter("Conf");
		Connection con = null;
		if (newp == null && confirm == null || confirm!=newp) {
			out.println(
					"<html><head></head><body onload=\"alert('Please enter new password')\"></body></html>");
		} 
	
		else if (newp.equals(confirm)) {
			String url = "jdbc:mysql://localhost:3306/demodb";
			String user = "root";
			String password = "prachi";
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, user, password);
			PreparedStatement ps = con.prepareStatement("Update userreg set Password=? where EmailId=?");
			ps.setString(1, newp);
			ps.setString(2, abcdmail);

			int count = 0;

			count = ps.executeUpdate();
			if (count > 0) {

				out.println(
						"<html><head></head><body onload=\"alert('Updated successfully,login with Updated Password.')\"></body></html>");

			}
			else if(count==0)
			{
				out.println(
						"<html><head></head><body onload=\"alert('not updated')\"></body></html>");
						
			}
			
		
		}
		/* else{
			out.println(
					"<html><head></head><body onload=\"alert('Password's doesn't match')\"></body></html>");
		}  */
		
			

	} catch (Exception r) {
		System.out.print(r);
	}
%>


