<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	Set<Integer> lotto = new HashSet<>();
%>

<%
	int count = 0;
	int a = 10;
	int b = 20;
	int c = 30;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
	Page Count is <%= ++count %> <br>
	<p>
		Today's date : <%= new java.util.Date() %>
	</p>
	
	<p>
		<%= a + b + c %>
	</p>
	
	<%
		chapter2.BookInfo bookInfo = new chapter2.BookInfo("도서", 123456);
	%>
	
	<h1><%=bookInfo%></h1>
	<h2>name = <%=bookInfo.getName()%></h2>
	<h2>price = <%=bookInfo.getPrice() %></h2>
	
	<%! int number = 1; %>
	
	<%
		while(number <= 10) {
	%>
		<%= number %>
	<%
			number = number + 1;
		}
	%>
</body>
</html>








