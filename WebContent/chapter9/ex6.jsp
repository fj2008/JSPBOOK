<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<fmt:setBundle basename="properties.myBundle" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>기본 로케일</h1>
	<p>제목 : <fmt:message key="title" /></p>
	<p>이름 : <fmt:message key="username" /></p>
</body>
</html>