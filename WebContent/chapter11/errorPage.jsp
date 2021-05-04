<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>Error: </td>
			<td><%=exception %></td>
		</tr>
		<tr>
			<td>URI: </td>
			<td><%=request.getRequestURI() %></td>
		</tr>
		<tr>
			<td>Status code: </td>
			<td><%=response.getStatus() %></td>
		</tr>
	</table>
</body>
</html>