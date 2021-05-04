<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	int a = 2;
	int b = 3;
	int sum = a + b;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
 	<%
 		out.println("2 + 3 = " + sum);
 	%>
</body>
</html>

