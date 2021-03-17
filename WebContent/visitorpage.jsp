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
	            <a href="home.jsp" class="button__login"> Home </a>
	            <a href="index.jsp" class="button__egster"> Logout </a>
	        </div>
    	</header>
    	
    	<div class="content">
	        <jsp:include page="header.jsp" />

	        <div class="visit">
            <div class="title"> Kazhymukhan's Blog </div>

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
            <div class="comment__area">
                <textarea class="comment_area"></textarea>
                <button class="submit submit__right"> Comment </button>
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
            <div class="comment__area">
                <textarea class="comment_area"></textarea>
                <button class="submit submit__right"> Comment </button>
            </div>
        </div>
	        
	    </div>
        
        <div class="footer">
        	Copyright
    	</div>

	</body>
</html>