<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
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

	        <form class="register" method = "POST">
	        	<%
	        	List<String> errors = (List<String>) request.getAttribute("email_errors");
	       		if (errors != null) {
	       			for ( String error: errors ) {
	       		%>
	       			<h3 style="color: red; display: block"> <%= error %> </h3>
	       		<%
	       			}
	       		}
	        	%>
	            <div class="title"> Register to the Blog </div>
	
	            <div class="input__group">
	                <div class="label"> Email: </div>
	                <input class="input__class" type="email" placeholder="Enter email" name = "email">
	            </div>
	
	            <div class="input__group">
	                <div class="label"> Password: </div>
	                <input class="input__class" type="password" placeholder="Enter password" name = "password">
	            </div>
	
	            <div class="input__group">
	                <div class="label"> Confirm Password: </div>
	                <input class="input__class" type="password" placeholder="Confirm password" name = "re_password">
	            </div>
	
	            <div class="input__group">
	                <div class="label"> First Name: </div>
	                <input class="input__class" type="text" placeholder="First Name" name = "firstName">
	            </div>
	
	            <div class="input__group">
	                <div class="label"> Last Name: </div>
	                <input class="input__class" type="text" placeholder="Last Name" name = "lastName">
	            </div>
				
				<button class = "submit" type="submit" value = "Register"> submit </button>
        </form>
	        
	    </div>
        
        <div class="footer">
        	Copyright
    	</div>

	</body>
</html>