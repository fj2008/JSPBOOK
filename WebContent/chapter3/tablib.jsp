<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>

<c:out value="JSTL Core 태그 라이브러리" />
<c:forEach var="k" begin="1" end="10">
	<c:out value="${k}" />
</c:forEach>

<%
	for(int i=1; i<=10; i++) {
%>
	<%=i %>
<%
	}
%>


</body>
</html>



