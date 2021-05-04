<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<form action="/JSPBook/chapter11/exception_process.jsp" method="POST">
		<label>아이디 : <input type="text" name="id"></label><br>
		<label>비밀번호 : <input type="text" name="pw"></label><br>
		
		<input type="submit" value="로그인">
	</form>
</body>
</html>