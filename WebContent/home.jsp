<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title> Home Page </title>
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
	        <jsp:include page="header.jsp" />

	        <!--  LOGIN JSP  -->
	        <div class="home">
            <div class="title"> Kazhymukhan's Home Page </div>

            <div class="comment">
                <div class="comment__info">
                    <button class="button"> X </button>
                    <div class="name"> Kazhymukhan Yerkinov </div>
                    <div class="date">Posted on August 19, 2017 12:00 pm</div>
                </div>
                <div class="text"> Lorem ipsum, dolor sit amet consectetur adipisicing elit. Iure fuga ullam architecto cumque! Cumque quae reiciendis nemo repudiandae ratione. Incidunt sequi quisquam aperiam fugiat reprehenderit nam esse voluptate voluptatem quo. </div>
            </div>

            <div class="comment next__comment">
                <div class="comment__info">
                    <button class="button"> X </button>
                    <div class="name"> Kazhymukhan Yerkinov </div>
                    <div class="date">Posted on August 19, 2017 12:00 pm</div>
                </div>
                <div class="text"> Lorem ipsum, dolor sit amet consectetur adipisicing elit. Iure fuga ullam architecto cumque! Cumque quae reiciendis nemo repudiandae ratione. Incidunt sequi quisquam aperiam fugiat reprehenderit nam esse voluptate voluptatem quo. </div>
            </div>

            <div class="comment">
                <div class="comment__info">
                    <button class="button"> X </button>
                    <div class="name"> Kazhymukhan Yerkinov </div>
                    <div class="date">Posted on August 19, 2017 12:00 pm</div>
                </div>
                <div class="text"> Lorem ipsum, dolor sit amet consectetur adipisicing elit. Iure fuga ullam architecto cumque! Cumque quae reiciendis nemo repudiandae ratione. Incidunt sequi quisquam aperiam fugiat reprehenderit nam esse voluptate voluptatem quo. </div>
            </div>

            <div class="comment next__comment">
                <div class="comment__info">
                    <button class="button"> X </button>
                    <div class="name"> Kazhymukhan Yerkinov </div>
                    <div class="date">Posted on August 19, 2017 12:00 pm</div>
                </div>
                <div class="text"> Lorem ipsum, dolor sit amet consectetur adipisicing elit. Iure fuga ullam architecto cumque! Cumque quae reiciendis nemo repudiandae ratione. Incidunt sequi quisquam aperiam fugiat reprehenderit nam esse voluptate voluptatem quo. </div>
            </div>

            <div class="text__field">
                <div class="new__post"> New Post:  </div>
                <textarea class="textarea" name="comment" cols="70" rows="8"></textarea>
            </div>
            <button class="submit"> Submit </button>

        </div>
        </div>
        
        <div class="footer">
        	Copyright
    	</div>

	</body>
</html>