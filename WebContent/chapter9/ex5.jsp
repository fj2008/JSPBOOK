<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<fmt:requestEncoding value="UTF-8" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>요청 파라미터 : <%=request.getParameter("name") %></p>
	
	<form action="#" method="POST">
		<p>
			<label>이름 : <input type="text" name="name"></label>
			<br>
			<input type="submit" value="전송">
		</p>
	</form>
</body>
</html>



