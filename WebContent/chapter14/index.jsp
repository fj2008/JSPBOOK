<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<strong>로그인을 한 사용자만 볼 수 있는 페이지 입니다</strong>
	<br>
	<strong>로그인을 하지 않은 사용자는 로그인 페이지로 이동합니다.</strong>
	<a href = "/JSPBook/chapter14/login.jsp">로그인 페이지로</a>
	
	<hr>
	
	<p style="color: blue; text-decoration: underline;" onclick="logout()">로그아웃</p> 
	<script>
		function logout(){
			$.ajax({
				url:"/JSPBook/cookie/logout",
				success: function(){
					alert("로그아웃 되었습니다 \n 로그인 페이지로 이동합니다")
					location.href = "/JSPBook/chapter14/login.jsp"
				}
			})
			
		}
	</script>
</body>
</html>