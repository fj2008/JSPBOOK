<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드</title>
</head>
<body>
	<form method="POST" enctype="multipart/form-data" action="process04.jsp">
		<p>이름 : <input type="text" name="name"></p>
		<p>제목 : <input type="text" name="subject"></p>
		<p>파일 : <input type="file" name="file"></p>
		<p><input type="submit" value="업로드"></p>
	</form>
</body>
</html>



