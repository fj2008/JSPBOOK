<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		response.setHeader("Cache-control", "use_cache");
	
		response.setHeader("contentType", "text/html; charset=utf-8");
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		
		response.setDateHeader("date", System.currentTimeMillis());
	%>
	
	Cache-control : <%=response.getHeader("Cache-control") %>
	contentType : <%=response.getHeader("contentType") %>
	date : <%=response.getHeader("date") %>
</body>
</html>



