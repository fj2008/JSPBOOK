<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<strong>사용자가 최종적으로 보게될 결과 페이지입니다.</strong>
	
	<p>clientIP : <%=request.getAttribute("clientIP") %></p>
	<p>method : <%=request.getAttribute("method") %></p>
</body>
</html>


