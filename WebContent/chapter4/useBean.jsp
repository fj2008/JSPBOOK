<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="gugudanProcessor" class="ch04.com.dao.GuGuDan"></jsp:useBean>
<%
	int gugudan = Integer.parseInt(request.getParameter("gugudan"));
	List<Integer> result = gugudanProcessor.process(gugudan);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>구구단 출력하기</h4>
	
<%
		for(int i : result) {
%>
			<p><%=i %></p>
<%
		}
	%>
</body>
</html>




