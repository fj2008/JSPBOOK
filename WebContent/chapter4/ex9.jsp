<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="date" class="java.util.Date" />
<jsp:useBean id="calculator" class="chapter4.Calculator" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>빈즈 사용</h1>
	<p>오늘의 날짜 및 시각 : <%=date%></p>
	
	<p>5의 세제곱 : <%=calculator.process(5) %></p>
	
	<h1>빈즈 사용 전</h1>
	<p>오늘의 날짜 및 시각 : <%= new java.util.Date() %></p>
</body>
</html>