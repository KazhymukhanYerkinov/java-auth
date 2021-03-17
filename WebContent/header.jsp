<%@page pageEncoding="UTF-8"%>
<%@page import="databean.User"%>
<%@page import="java.util.List"%>

<!doctype html>
<html lang="en">


<head>
	<meta charset="ISO-8859-1">
	<title> Users Page </title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
	<div class="sidebar">
		<%
			User[] users = (User[])request.getAttribute("users");
			if (users != null) {
				for (User user : users) {
		%>
			<a href="visitorpage.jsp" class="sidebar__link"> <%= user.getFirstName()  %> </a>
			<a href="visitorpage.jsp" class = "linkeeee"> <%= user.getLastName()  %> </a>
		<%
				}
			}
		%>
		
	</div>
</body>