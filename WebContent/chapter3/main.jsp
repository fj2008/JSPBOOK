<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 디렉티브 태그</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	
	<h2>본문입니다.</h2>
	
	<%@ include file="sumModule.jsp" %>
	<h1>1 ~ 10까지의 합계는 <%=sum%></h1>
	
	<%@ include file="footer.jsp" %>
</body>
</html>