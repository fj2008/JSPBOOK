<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//로그인된 사용자의 닉네임
	String nickname = (String) session.getAttribute("nickName");
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<strong>로그인 된 사용자만 볼 수 있는 페이지 입니다.</strong>
	
	<p><strong><%=nickname %></strong>님 환영합니다.</p>	
	
	<!-- 아래 경로에 있는 서블릿을 사용해서 로그 아웃 처리를 하세요 -->
	<form action ="/JSPBook/session/login">
	<input type ="submit" value ="로그아웃" onclick="logout()">	
	</form>
	
</body>
</html>