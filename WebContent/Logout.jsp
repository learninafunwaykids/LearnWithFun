<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="shortcut icon" href="Img/favicon.ico" type="image/x-icon">
<title>Logout</title>
</head>
<body>
<%

response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
if(session.getAttribute("user")==null)
	{
	response.sendRedirect("Login.jsp");
	} 


HttpSession s=request.getSession();

s.removeAttribute("user");
s.invalidate();
response.sendRedirect("Login.jsp");


%>
</body>
</html>