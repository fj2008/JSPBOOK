<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드</title>
</head>
<body>
	<form method="post" enctype="multipart/form-data" action="process02.jsp">
		<p>이름1 : <input type="text" name="name1"></p>
		<p>제목1 : <input type="text" name="subject1"></p>
		<p>파일1 : <input type="file" name="filename1"></p>
		
		<p>이름2 : <input type="text" name="name2"></p>
		<p>제목2 : <input type="text" name="subject2"></p>
		<p>파일2 : <input type="file" name="filename2"></p>
		
		<p>이름3 : <input type="text" name="name3"></p>
		<p>제목3 : <input type="text" name="subject3"></p>
		<p>파일3 : <input type="file" name="filename3"></p>
		<p><input type="submit" value="업로드"></p>
	</form>
</body>
</html>