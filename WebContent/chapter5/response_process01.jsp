<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(id.equals("abcd") && pw.equals("abcd")) {
		response.sendRedirect("response_success01.jsp");
	} else {
		response.sendRedirect("response_fail01.jsp");
	}
%>
</body>
</html>


