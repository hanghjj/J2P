<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout</title>
</head>
<body>
<% session.setAttribute("loggedID", "null");
		out.println("<script>");
 		out.println("alert('로그아웃이 완료되었습니다.')");
 		out.println("location.href = '/'");
 		out.println("</script>");
 %>
</body>
</html>