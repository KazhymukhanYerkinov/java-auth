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
	
		<header class="header">
	        <div class="header__title"> BLOG </div>
	        <div class="header__desc"> Share your story ! </div>
	        <div class="header__buttons">
	            <a href="/javaee-app/Blog" class="button__login"> Home </a>
	            <form method="POST" action="Logout">
        			<button type="submit" class="button__egster">Logout</button>
    			</form>
	        </div>
    	</header>
    	
    	<div class="content">
    		<jsp:include page="header.jsp">
    			<jsp:param name="users" value="${users}" />
    		</jsp:include>
    		
			<table>
				<thead>
					<tr>
	                   	<th scope="col">ID</th>
	                      <th scope="col">Email</th>
	                      <th scope="col">Password</th>
	                      <th scope="col">DELETE</th>
	                    </tr>
				</thead>
				
				<tbody>
					<%
						User[] users = (User[])request.getAttribute("users");
						if (users != null) {
							for (User user: users) {
					%>
						<tr>
		                	<th scope="row"><%= user.getId() %></th>
		                   	<td><%= user.getEmail() %></td>
		                   	<td><%= user.getPassword() %></td>
		                   	<td>
		                   		<form action="Users" method="POST">
		                        	<input type="text" name="id" value="<%= user.getId() %>" hidden>
		                            <input type="text" name="method" value="DELETE" hidden>
		                            <input type="submit" class='btn  btn-danger' value="delete">
		                        </form>
		                   	</td>
		                    </tr>
					<%
							}
						}
						
					%>
					
				</tbody>
			</table>
		</div>
		
		<div class="footer">
        	Copyright
    	</div>s
		
	</body>
