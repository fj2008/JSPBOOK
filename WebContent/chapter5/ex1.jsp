<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>내장객체는 JSP 컨테이너가 생성해준다.</h1>
	<h2>내장객체를 사용해서 JSP 페이지 내에서 사용자의 요청을 핸들링할 수 있다.</h2>
	<h3>reuqest 내장객체는 사용자의 요청과 관련된 정보를 담고 있다.</h3>
	
	<hr>
	
	<p>request.getParameter("파라미터이름") = <%=request.getParameter("data") %></p>
	<p>request.getParameter("파라미터이름") = <%=request.getParameter("value") %></p>
	<p>request.getRemoteAddr() = <%=request.getRemoteAddr() %></p>
</body>
</html>





