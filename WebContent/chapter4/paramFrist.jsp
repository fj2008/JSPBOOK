<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String name = "관리자";
	name = URLEncoder.encode(name, "UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>param action Tag</title>
</head>
<body>
	<h3>이 파일은 paramFirst.jsp입니다.</h3>
	<jsp:include page="paramSecond.jsp">
		<jsp:param value="admin" name="id"></jsp:param>
		<jsp:param value="<%=name %>" name="name"/>
	</jsp:include>
	
	<p>paramFirst 끝</p>
</body>
</html>