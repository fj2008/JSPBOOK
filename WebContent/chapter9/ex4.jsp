<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=response.getLocale() %>
	
	<fmt:setLocale value="ko"/>
	<%=response.getLocale() %>
	
	<fmt:setLocale value="ja"/>
	<%=response.getLocale() %>
	
	<fmt:setLocale value="en"/>
	<%=response.getLocale() %>
</body>
</html>




