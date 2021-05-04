<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();
	//request가 보낸 쿠기객체에 배열을 저장
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		out.println("<h1>설정된 쿠키의 개수  = "+ cookies.length +"</h1>");
		out.println("<hr>");
		
		for(int i = 0; i<cookies.length; i++){
			out.println("쿠키 속성 이름 = " + cookies[i].getName() + "<br>");//n번째 들어있는 getname을 사용해서 쿠키이름을 가져옴
			out.println("쿠키 속성 값 = " + cookies[i].getValue() + "<br>");
			out.println("<hr>");
		}
	%>
</body>
</html>