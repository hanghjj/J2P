<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="header.jsp"%>
<%@ page  import = "java.util.List"%>
<%@ page  import = "java.util.ArrayList"%>
<%@ page  import = "com.Jim2Pack.main.VO.Jim"%>
<%@ page  import = "com.Jim2Pack.main.config.SplitString"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Jim List</title>
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
 List<Jim> list = (List<Jim>)request.getAttribute("list");
%>

<div class="container d-flex justify-content-left">
    <ul class="list-group mt-5 text-white">
        <%  
          for(int i=0; i<list.size(); i++){
        	  String str = list.get(i).getItem();
        	  String[] items = SplitString.getItems(str);
        	  System.out.println(items.length);
 		%>
        <li class="list-group-item d-flex justify-content-between align-content-center" >
            <div class="d-flex flex-row"> <i class="bi bi-archive-fill"></i>
            <details class = "jim_name">
        			<summary>
                     <%out.println(list.get(i).getName());%>
               		</summary>
    				<p>
					<%
					for(int j=0; j<items.length; j++){
					%>
					<br>
					&nbsp;&nbsp;&nbsp;<label> <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">  <%=items[j]%></label>
					<br>
					<%} %>
					</p>
        		</details>
                
            </div>
            
        </li>
        
        <%} %>
    </ul>
</div>
</body>
<%@ include file="footer.jsp"%>
</html>