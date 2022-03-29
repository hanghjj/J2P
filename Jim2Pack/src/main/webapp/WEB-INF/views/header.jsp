<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<title>Jim2Pack</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="/resources/css/styles.css">
	<link rel="stylesheet" href="/resources/css/JimList.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
	
</head>
<body class="pt-5">
<%
	String id = (String)request.getAttribute("loggedID");
	if(id==null){
		id = (String)session.getAttribute("loggedID");
	}
	if(!id.equals("null")){
	session.setAttribute("loggedID", id);
%>
	<nav
		class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="/">Jim2Pack</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="navbarDropdownPortfolio" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> Jim </a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPortfolio">
							<a class="dropdown-item" href="AddJim">Add Jim Set</a>
							<% 
							   request.setAttribute("ID", id);
							%>
							<a class="dropdown-item" href="JimList">View Jim List</a> 
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Blog </a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownBlog">
							<a class="dropdown-item" href="blog-home-1.html">Blog Home 1</a>
							<a class="dropdown-item" href="blog-home-2.html">Blog Home 2</a>
							<a class="dropdown-item" href="blog-post.html">Blog Post</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdownPages"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Other Pages </a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPages">
							<a class="dropdown-item" href="full-width.html">Full Width
								Page</a> <a class="dropdown-item" href="sidebar.html">Sidebar
								Page</a> <a class="dropdown-item" href="faq.html">FAQ</a> <a
								class="dropdown-item" href="404.html">404</a> <a
								class="dropdown-item" href="pricing.html">Pricing Table</a>
						</div></li>
					<li class="nav-item"><a class="nav-link" href="MyPage">My page</a></li>
					<li class="nav-item"><a class="nav-link" href="Logout">Logout</a>
					</li>
					
				</ul>
			</div>
		</div>
	</nav>
<%
} else{session.setAttribute("loggedID", "null");
%>	
	<nav
		class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="/">Jim2Pack</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="navbarDropdownPortfolio" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> Jim </a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPortfolio">
							<a class="dropdown-item" href="AddJim">Add Jim Set</a>
							<a class="dropdown-item" href="JimList">View Jim List</a> 
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Blog </a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownBlog">
							<a class="dropdown-item" href="blog-home-1.html">Blog Home 1</a>
							<a class="dropdown-item" href="blog-home-2.html">Blog Home 2</a>
							<a class="dropdown-item" href="blog-post.html">Blog Post</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdownPages"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Other Pages </a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPages">
							<a class="dropdown-item" href="full-width.html">Full Width
								Page</a> <a class="dropdown-item" href="sidebar.html">Sidebar
								Page</a> <a class="dropdown-item" href="faq.html">FAQ</a> <a
								class="dropdown-item" href="404.html">404</a> <a
								class="dropdown-item" href="pricing.html">Pricing Table</a>
						</div></li>
					<li class="nav-item"><a class="nav-link" href="SignIn">Sign In</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="SignUp">Sign Up</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<%
	}
%>
</body>
</html>