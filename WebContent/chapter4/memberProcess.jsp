<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:useBean id="member" class="chapter4.MemberBean" />
<jsp:setProperty property="*" name="member" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>ex3.jsp 페이지에서 전달 받은 name 요청 프로퍼티의 값 = <jsp:getProperty property="name" name="member"/> </p>
	<p>ex11.jsp 페이지에서 전달 받은 id 요청 프로퍼티의 값 = <jsp:getProperty property="id" name="member"/> </p>
</body>
</html>