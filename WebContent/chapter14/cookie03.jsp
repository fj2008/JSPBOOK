<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>setMaxAge를 응용한 쿠키 내 모든 정보 삭제</h1>
	
<%
	Cookie[] cookies = request.getCookies();
	
	for(int i=0;i<cookies.length;i++){
		//[n]번째 쿠키의 유효시간을 만료시킨다
		cookies[i].setMaxAge(0);
		// 유효시간을 만료시킨  n번째 쿠키를 다시 클라이언트로 보낸다.
		response.addCookie(cookies[i]);
	}
%>

	<a href = "/JSPBook/chapter14/cookie02.jsp">쿠키의 목록을 보여주는 페이지로...</a>

</body>
</html>