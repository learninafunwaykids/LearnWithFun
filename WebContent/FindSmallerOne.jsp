<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="Img/favicon.ico" type="image/x-icon">
<title>Find Smaller one</title>
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

<body background="background/mdNcfl.jpg">



	<table cellspacing="110" style="margin-top:-1000px";>

		
		<tr>
		<h1 style="color:white;text-align:center;font-family: cursive; margin-top:60px">Which One is Smaller?</h1>
		<tr>
			<td><img src="images\ic.jpg" style="height: 200px; width: 200px" />&nbsp;&nbsp;&nbsp;
				<img src="images\ic.jpg" style="height: 100px; width: 100px" /> </br> <audio
					id="sound2" src="audio\incorrect.mp3" preload="auto"></audio> <input
				type="radio" value="test2" name="rad"
				onclick="document.getElementById('sound2').play();"> A
				&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

				<audio id="sound1" src="audio\Correct.mp3" preload="auto"></audio> <input
				type="radio" value="test2" name="rad"
				onclick="document.getElementById('sound1').play();"> B</td>

			<td><img src="images\books.jpg"
				style="height: 100px; width: 100px" /> &nbsp;&nbsp;&nbsp; <img
				src="images\books.jpg" style="height: 200px; width: 200px" /> </br> <audio
					id="sound1" src="audio\Correct.mp3" preload="auto"></audio> <input
				type="radio" value="test2" name="rad"
				onclick="document.getElementById('sound1').play();"> A
				&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<audio id="sound2" src="audio\incorrect.mp3" preload="auto"></audio>
				<input type="radio" value="test2" name="rad"
				onclick="document.getElementById('sound2').play();">B</td>

			<td><img src="images\but.jpg"
				style="height: 100px; width: 100px" /> &nbsp;&nbsp;&nbsp; <img
				src="images\but.jpg" style="height: 200px; width: 200px" /> </br> <audio
					id="sound1" src="audio\Correct.mp3" preload="auto"></audio> <input
				type="radio" value="test2" name="rad"
				onclick="document.getElementById('sound1').play();"> A
				&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<audio id="sound2" src="audio\incorrect.mp3" preload="auto"></audio>
				<input type="radio" value="test2" name="rad"
				onclick="document.getElementById('sound2').play();"> B</td>
		</tr>

		<tr>
			<td><img src="images\eraser.png"
				style="height: 100px; width: 100px" /> &nbsp;&nbsp;&nbsp; <img
				src="images\eraser.png" style="height: 200px; width: 200px" /> </br> <audio
					id="sound1" src="audio\Correct.mp3" preload="auto"></audio> <input
				type="radio" value="test2" name="rad"
				onclick="document.getElementById('sound1').play();"> A
				&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

				<audio id="sound2" src="audio\incorrect.mp3" preload="auto"></audio>
				<input type="radio" value="test2" name="rad"
				onclick="document.getElementById('sound2').play();"> B</td>

			<td><img src="images\bag.jpg"
				style="height: 200px; width: 200px" />&nbsp;&nbsp;&nbsp; <img
				src="images\bag.jpg" style="height: 100px; width: 100px" /> </br> <audio
					id="sound2" src="audio\incorrect.mp3" preload="auto"></audio> <input
				type="radio" value="test2" name="rad"
				onclick="document.getElementById('sound2').play();"> A
				&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<audio id="sound1" src="audio\Correct.mp3" preload="auto"></audio> <input
				type="radio" value="test2" name="rad"
				onclick="document.getElementById('sound1').play();"> B</td>

			<td><img src="images\car.png"
				style="height: 200px; width: 200px" />&nbsp;&nbsp;&nbsp; <img
				src="images\car.png" style="height: 100px; width: 100px" /> </br> <audio
					id="sound2" src="audio\inorrect.mp3" preload="auto"></audio> <input
				type="radio" value="test2" name="rad"
				onclick="document.getElementById('sound2').play();"> A
				&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<audio id="sound1" src="audio\Correct.mp3" preload="auto"></audio> <input
				type="radio" value="test2" name="rad"
				onclick="document.getElementById('sound1').play();"> B</td>
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
