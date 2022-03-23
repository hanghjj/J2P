<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AddJim</title>
<link rel="stylesheet" href="/resources/css/Loginmain.css">
<link rel="stylesheet" href="/resources/css/Loginutil.css">
<script src="/resources/js/Loginmain.js"></script>
</head>
<body>
<%
 String UserID = (String)session.getAttribute("loggedID");
%>
<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form" method = "post">
					<span class="login100-form-title p-b-26">
						Jim Registration
					</span>
				
					<div class="wrap-input100 validate-input" >
						<input class="input100" type="hidden" name="ID" value = <%=UserID%>>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<input class="input100" type="text" name="name">
						<span class="focus-input100" data-placeholder="Jim Name"></span>
					</div>
					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="item">
						<span class="focus-input100" data-placeholder="Item"></span>

					</div>
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								Register
							</button>
						</div>
					</div>

				</form>
			</div>
		</div>
	</div>
</body>
<%@ include file="footer.jsp"%>
</html>