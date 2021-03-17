<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">	
		<title> HW3 </title>
		<link rel="stylesheet" href="style.css">
	</head>
	<body>
		
		<header class="header">
	        <div class="header__title"> BLOG </div>
	        <div class="header__desc"> Share your story ! </div>
	        <div class="header__buttons">
	            <a href="/javaee-app/Login" class="button__login"> Login </a>
	            <a href="/javaee-app/Register" class="button__egster"> Register </a>
	        </div>
    	</header>
    	
    	<div class="content">
	        <jsp:include page="header.jsp" />
	        

	        <!--  LOGIN JSP  -->
	        <form class="login" method = "POST">
	        	<%
	        	List<String> errors = (List<String>) request.getAttribute("errors");
	       		if (errors != null) {
	       			for ( String error: errors ) {
	       		%>
	       			<h3 style="color: red; display: block"> <%= error %> </h3>
	       		<%
	       			}
	       		}
	        	%>
	            <div class="login__title"> Login to your blog </div>
	            <div class="input__group">
	                <div class="label"> Email: </div>
	                <input class="input__class" name = "email" type="email" placeholder="Enter username">
	            </div>
	
	            <div class="input__group">
	                <div class="label"> Password: </div>
	                <input class="input__class" name = "password" type="password" placeholder="Enter password">
	            </div>
	
	            <button class="submit" type="submit" name = "button" value="Login"> Submit </button>
	        </form>
        </div>
        
        <div class="footer">
        	Copyright
    	</div>
		
	</body>
</html>