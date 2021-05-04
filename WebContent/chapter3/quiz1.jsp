<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Date nowDate = new Date();
		int num = 5 * 5;
	%>
	
	<p>현재 날짜 : <%=nowDate%></p>
	<p>5의 제곱 : <%=num%></p>
</body>
</html>



