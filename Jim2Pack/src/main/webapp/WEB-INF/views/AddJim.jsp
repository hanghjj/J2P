<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AddJim</title>
</head>
<body>
<%
 String UserID = (String)session.getAttribute("loggedID");
if(UserID.equals("null")){
	out.println("<script>");
	out.println("alert('로그인 후 이용 가능합니다.')");
	out.println("location.href = '/'");
	out.println("</script>");
}
%>
 <script>
        const add_textbox = () => {
            const box = document.getElementById("box");
            const newP = document.createElement('p');
            newP.innerHTML = "<div class='input-group mb-3'><input type='text' class='form-control' style='width:300px;'name = 'items' placeholder='item'><div class='input-group-append'><input type='button' class='btn btn-outline-secondary' value='삭제' onclick='remove(this)'></div></div>";
            box.appendChild(newP);
        }
        const remove = (obj) => {
            document.getElementById('box').removeChild(obj.parentNode.parentNode.parentNode);
        }
 </script>
<div class = "container-lg" >
<br>
<br>
<br>
	<form method = "post" id = 'box' >
		<label for="basic-url" class="form-label">Jim Registration</label>
		<div class="col-xs-3">
		<input type="hidden" class="form-control" value = <%=UserID %> name = "ID">
  		<input type="text" class="form-control" name = "name" placeholder="name" aria-label="Username" aria-describedby="basic-addon1">
		</div>
		<br>
		<div class="input-group mb-3">
  			<input type="text" class="form-control" name = 'items' style='width:300px;'placeholder='item'>
  			<div class="input-group-append">
    		<input type="button" class="btn btn-outline-secondary"value="추가" onclick="add_textbox()">
  			</div>
		</div>
		</form>
		<input type = 'submit' form = 'box'>
</div>
	
<%@ include file="footer.jsp"%>
</html>