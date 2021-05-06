<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session 01</title>

</head>
<body>
	<form action="/JSPBook/session01Process" method="POST">
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="password" name="pw"></p>
		<input type="submit" value="전송">
	</form>
</body>
</html>