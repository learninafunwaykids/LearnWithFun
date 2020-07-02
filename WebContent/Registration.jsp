
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="shortcut icon" href="Img/favicon.ico" type="image/x-icon">
<title>Registration Page</title>
</head>
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
<body background="background/children.jpg">
	<center>
		<fieldset
			style="width: 600px; height: 300px; background-color: lightyellow; border-radius: 10px; border-bottom-left-radius: 50px; border-top-right-radius: 50px">
			<legend style="font: 20px cursive; color: green; font-weight: bold;">Register</legend>
			<form method=post action="register">
				<br>

				<h4
					style="font-family: cursive; color: red; font-weight: bold; margin-top: 4px">
					Full Name :&nbsp;&nbsp;<input type=text name="fname"
						id="txtNewPassword" value=""
						style="color: Blue; font: 15px cursive; text-align: center"
						required>
				</h4>
				<h4 style="font-family: cursive; color: red; font-weight: bold">
					Username :&nbsp;&nbsp;<input type=text name="userpass"
						id="txtConfirmPassword" value=""
						style="color: Blue; font: 15px cursive; text-align: center"
						required>
				</h4>
				<h4
					style="font-family: cursive; color: red; font-weight: bold; margin-top: 4px">
					Password :&nbsp;&nbsp;<input type=password name="password"
						id="txtNewPassword" value=""
						style="color: Blue; font: 15px cursive; text-align: center"
						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
						title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters"
						required>
				</h4>
				<h4 style="font-family: cursive; color: red; font-weight: bold">
					E-mail &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;<input type="email"
						name="mail" id="txtConfirmPassword" value="" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
						style="color: Blue; font: 15px cursive; text-align: center"
						required>
				</h4>
				<input type=submit value="Register" name="Submit1"
					style="height: 30px; font: 15px cursive; font-weight: bold" /> <br>

			</form>
</body>
</html>