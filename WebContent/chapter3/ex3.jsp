<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage = "zero.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>10을 나눈 결과를 출력하는 페이지입니다.</h1>
	
	<%
		Random random = new Random();
		int a = 10;
		int b = random.nextInt(3); // 0 ~ 2사이의 임의의 수
	%>
	
	<%= a / b %>
</body>
</html>