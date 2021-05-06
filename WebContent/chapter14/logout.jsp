<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();

	for(int i =0; i<cookies.length; i++){
		String name= cookies[i].getName();
		if(name.equals("id") || name.equals("pw") || name.equals("NickName")){
			cookies[i].setMaxAge(0);
		
		response.addCookie(cookies[i]);//클라이언트는 타이머가 다 된 쿠키를 받으면 삭제 처리를 함
		}//end if
	}//end for
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout</title>
</head>
<body>
		
	<strong>로그아웃이 되었습니다.</strong>
	<br>
	
	<a href="/JSPBook/chapter14/login.jsp">로그인 페이지로....</a>
</body>
</html>