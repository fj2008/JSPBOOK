<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="memberProcess.jsp">
		<h1>form 태그를 사용한 페이지입니다.</h1>
		 <p>form 태그는 현재 페이지에 있는 데이터를 다른 페이지로 전달 할 수 있습니다.</p>
		 
		 <input type="text" name="name" value="admin">
		 <input type="text" name="id" value="1">
		 <input type="submit" value="전송">
	</form>
</body>
</html>