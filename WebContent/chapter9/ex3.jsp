<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Locale"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Locale locale = request.getLocale();
	String date = DateFormat.getDateTimeInstance(DateFormat.FULL, DateFormat.SHORT, locale)
			.format(new Date());
	NumberFormat nf = NumberFormat.getNumberInstance(locale);
%>

<p>국가 : <%=locale.getDisplayCountry() %></p>
<p>날짜 : <%=date %></p>
<p>숫자 : <%=nf.format(12345.67) %></p>
</body>
</html>




