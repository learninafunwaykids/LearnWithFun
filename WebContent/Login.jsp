`<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="shortcut icon" href="Img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="Header.css">
<title>Login Page</title>


</head>
<header style="margin-top:-16px">
	<h2>
		LEARN<span>WITH</span><span style="color: yellow">FUN</span>
	</h2>
	<nav>
		<ul>
		 <li><a href="Registration.jsp">Register</a></li>    
			<li><a href="AboutUs.jsp">About</a></li>
			<li><a href="ContactUS.jsp">Contact Us</a></li>
		</ul>
	</nav>
</header>
<br>
<br>
<br>
<body background="background/children.jpg">
	<center>

		<fieldset style="width: 400px; height: 360px; background-color: #F0F8FF; border-radius: 10px; border-bottom-left-radius: 50px; border-top-right-radius: 50px">
			<legend style="font: 25px cursive; color: green; font-weight: bold;">LOGIN</legend>
			<form method=post action="login">
				<br>

				<h4
					style="font-family: cursive; color: red; font-weight: bold; margin-top: 4px"">
					Username :
					</h3>
					<input type=text name="new" id="txtNewPassword" value=""
						style="color: Blue; font: 15px cursive; text-align: center"
						required><br> <br>
					<h4 style="font-family: cursive; color: red; font-weight: bold">
						Password :
						</h3>
						<input type=password name="Conf" id="txtConfirmPassword" value=""
							style="color: Blue; font: 15px cursive; text-align: center" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
						title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters"
							required><br> <br> <input type=submit
							value="Login" name="Submit1"
							style="height: 30px; font: 15px cursive; font-weight: bold" /> <br>
							<br>
						<a href="otp.jsp" style="color:red";>Forgot Password?</a>
			</form>

		</fieldset>
	</center>
 
</body>
</html>