<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scripting</title>
</head>
<body>
	<%!
		int count = 3;
	
		String makeItLower(String str) {
			return str.toLowerCase();
		}
	%>
	
	<%
		for(int i=1; i<=count; i++) {
			out.println("Java Server Pages " + i + ".<br>");
		}
	%>
	
	<%=makeItLower("Hello World")%>
</body>
</html>



