<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page info = "이 페이지는 실습을 하고 있는 페이지입니다." %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	Today is <%=new Date() %>
	<%
	
		Set<Integer> lotto = new HashSet<>();
		
	%>
	
	<h1>import 3번 사용</h1>
</body>
</html>

