<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="ex7.jsp">
		<jsp:param value='<%=java.net.URLEncoder.encode("오늘의 날짜와 시각", "UTF-8") %>' name="title"/>
		<jsp:param value="<%=java.util.Calendar.getInstance().getTimeInMillis() %>" name="date"/>
	</jsp:include>
</body>
</html>