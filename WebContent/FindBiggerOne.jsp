<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="Img/favicon.ico" type="image/x-icon">
<title>Find bigger One</title>
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

<body background="background/mdNcfl.jpg" width="auto">



	<table cellspacing="110" style="margin-top: -70px";>

		
		<tr>
		<h1 style="color:white;text-align:center;font-family: cursive; margin-top:60px">Which One is Bigger?</h1>
			<td><img src="images\ball1.jpg"
				style="height: 200px; width: 200px" />&nbsp;&nbsp;&nbsp; <img
				src="images\ball1.jpg" style="height: 100px; width: 100px" /> </br> <audio
					id="sound1" src="audio\Correct.mp3" preload="auto"></audio> <input
				type="radio" value="test2" name="rad"
				onclick="document.getElementById('sound1').play();"> A
				</button>&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

				<audio id="sound2" src="audio\incorrect.mp3" preload="auto"></audio>
				<input type="radio" value="test2" name="rad"
				onclick="document.getElementById('sound2').play();"> B
				</button></td>

			<td><img src="images\apple.jpg"
				style="height: 100px; width: 100px" /> &nbsp;&nbsp;&nbsp; <img
				src="images\apple.jpg" style="height: 200px; width: 200px" /> </br> <audio
					id="sound2" src="audio\incorrect.mp3" preload="auto"></audio> <input
				type="radio" value="test2" name="rad"
				onclick="document.getElementById('sound2').play();"> A
				</button>&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<audio id="sound1" src="audio\Correct.mp3" preload="auto"></audio> <input
				type="radio" value="test2" name="rad"
				onclick="document.getElementById('sound1').play();"> B
				</button></td>

			<td><img src="images\pencil1png.png"
				style="height: 100px; width: 100px" /> &nbsp;&nbsp;&nbsp; <img
				src="images\pencil1png.png" style="height: 200px; width: 200px" />
				</br> <audio id="sound2" src="audio\incorrect.mp3" preload="auto"></audio>
				<input type="radio" value="test2" name="rad"
				onclick="document.getElementById('sound2').play();"> A
				</button>&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<audio id="sound1" src="audio\Correct.mp3" preload="auto"></audio> <input
				type="radio" value="test2" name="rad"
				onclick="document.getElementById('sound1').play();"> B
				</button></td>
		</tr>

		<tr>
			<td><img src="images\bike.jpg"
				style="height: 100px; width: 100px" /> &nbsp;&nbsp;&nbsp; <img
				src="images\bike.jpg" style="height: 200px; width: 200px" /> </br> <audio
					id="sound2" src="audio\incorrect.mp3" preload="auto"></audio> <input
				type="radio" value="test2" name="rad"
				onclick="document.getElementById('sound2').play();"> A
				&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

				<audio id="sound1" src="audio\Correct.mp3" preload="auto"></audio> <input
				type="radio" value="test2" name="rad"
				onclick="document.getElementById('sound1').play();"> B</td>

			<td><img src="images\cocojpg.jpg"
				style="height: 200px; width: 200px" />&nbsp;&nbsp;&nbsp; <img
				src="images\cocojpg.jpg" style="height: 100px; width: 100px" /> </br> <audio
					id="sound1" src="audio\Correct.mp3" preload="auto"></audio> <input
				type="radio" value="test2" name="rad"
				onclick="document.getElementById('sound1').play();"> A
				&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<audio id="sound2" src="audio\incorrect.mp3" preload="auto"></audio>
				<input type="radio" value="test2" name="rad"
				onclick="document.getElementById('sound2').play();"> B</td>

			<td><img src="images\ice1.jpg"
				style="height: 200px; width: 200px" />&nbsp;&nbsp;&nbsp; <img
				src="images\ice1.jpg" style="height: 100px; width: 100px" /> </br> <audio
					id="sound1" src="audio\Correct.mp3" preload="auto"></audio> <input
				type="radio" value="test2" name="rad"
				onclick="document.getElementById('sound1').play();"> A
				</button>&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<audio id="sound2" src="audio\incorrect.mp3" preload="auto"></audio>
				<input type="radio" value="test2" name="rad"
				onclick="document.getElementById('sound2').play();"> B
				</button></td>
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
