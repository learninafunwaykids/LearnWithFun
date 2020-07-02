<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="Img/favicon.ico" type="image/x-icon">
<title>IdentifyShape</title>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Header.css">
  </head>
  <header>
        <h2 style="color:green">LEARN<span>WITH</span><span style="color:yellow">FUN</span></h2>
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
<body background= "background/679ad026baa7bab024733b3dae152087.jpg">
<center>
<h1 style="font-family: cursive; color:white; font-weight: bold">
IDENTIFY THE SHAPE</h1></center>
<center>
<audio id="sound1" src="audio/Correct.mp3" preload="auto"></audio>
<audio id="sound2" src="audio/incorrect.mp3" preload="auto"></audio>
<table cellspacing="20">
<tr>
<td colspan=2 style="font : 20px cursive">Which Shape is Rectangle?</td>
<td></td><td></td><td></td><td></td><td></td><td></td>
<td colspan=2 style="font : 20px cursive">Which Shape is Circle?</td>
<td></td><td></td><td></td><td></td><td></td><td></td>
<td colspan=2 style="font : 20px cursive">Which Shape is Triangle?</td>
</tr>
<tr>
<td><img src="shapes/circ.png" style="height: 100px; width: 100px"/></td>
<td><img src="shapes/recta.png" style="height: 100px; width: 170px"/></td>
<td></td><td></td><td></td><td></td><td></td><td></td>
<td><img src="shapes/square.png" style="height: 100px; width: 100px"/></td>
<td><img src="shapes/circ.png" style="height: 100px; width: 100px"/></td>
<td></td><td></td><td></td><td></td><td></td><td></td>
<td><img src="shapes/trai.png" style="height: 100px; width: 110px"/></td>
<td><img src="shapes/st.png" style="height: 100px; width: 100px"/></td>
</tr>
<tr>
<td><input type="radio" value="test2" name="rad"  onclick="document.getElementById('sound2').play();"><span style="font : 20px cursive">A</span></td>
<td><input type="radio" value="test2" name="rad"  onclick="document.getElementById('sound1').play();"><span style="font : 20px cursive">B</span></td>
<td></td><td></td><td></td><td></td><td></td><td></td>
<td><input type="radio" value="test2" name="rad" onclick="document.getElementById('sound2').play();"><span style="font : 20px cursive">A</span></td>
<td><input type="radio" value="test2" name="rad" onclick="document.getElementById('sound1').play();"><span style="font : 20px cursive">B</span></td>
<td></td><td></td><td></td><td></td><td></td><td></td>
<td><input type="radio" value="test2" name="rad" onclick="document.getElementById('sound1').play();"><span style="font : 20px cursive">A</span></td>
<td><input type="radio" value="test2" name="rad" onclick="document.getElementById('sound2').play();"><span style="font : 20px cursive">B</span></td>
</tr>
<tr></tr>
<tr></tr>

<tr>
<td colspan=2 style="font : 20px cursive">Which Shape is Square?</td>
<td></td><td></td><td></td><td></td><td></td><td></td>
<td colspan=2 style="font : 20px cursive">Which Shape is Star?</td>
<td></td><td></td><td></td><td></td><td></td><td></td>
<td colspan=2 style="font : 20px cursive">Which Shape is Oval?</td>
</tr>
<tr>
<td><img src="shapes/oval.png" style="height: 100px; width: 100px"/></td>
<td><img src="shapes/square.png" style="height: 100px; width: 100px"/></td>
<td></td><td></td><td></td><td></td><td></td><td></td>
<td><img src="shapes/square.png" style="height: 100px; width: 100px"/></td>
<td><img src="shapes/st.png" style="height: 100px; width: 100px"/></td>
<td></td><td></td><td></td><td></td><td></td><td></td>
<td><img src="shapes/oval.png" style="height: 100px; width: 80px"/></td>
<td><img src="shapes/st.png" style="height: 100px; width: 110px"/></td>
</tr>

<tr>
<td><input type="radio" value="test2" name="rad" onclick="document.getElementById('sound2').play();"><span style="font : 20px cursive">A</span></td>
<td><input type="radio" value="test2" name="rad" onclick="document.getElementById('sound1').play();"><span style="font : 20px cursive">B</span></td>
<td></td><td></td><td></td><td></td><td></td><td></td>
<td><input type="radio" value="test2" name="rad" onclick="document.getElementById('sound2').play();"><span style="font : 20px cursive">A</span></td>
<td><input type="radio" value="test2" name="rad" onclick="document.getElementById('sound1').play();"><span style="font : 20px cursive">B</span></td>
<td></td><td></td><td></td><td></td><td></td><td></td>
<td><input type="radio" value="test2" name="rad" onclick="document.getElementById('sound1').play();"><span style="font : 20px cursive">A</span></td>
<td><input type="radio" value="test2" name="rad" onclick="document.getElementById('sound2').play();"><span style="font : 20px cursive">B</span></td>
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