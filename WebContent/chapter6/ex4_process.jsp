<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");					// 아이디
	String password = request.getParameter("passwd");		// 비밀번호
	String password2 = request.getParameter("passwd2");		// 비밀번호 확인
	// ...
	
// 	String hobby1 = request.getParameter("hobby1");			// 취미1
	String[] hobby = request.getParameterValues("hobby");	// 취미(독서,운동,영화)
	String hobbys = "";
	for(String h : hobby) {
		hobbys += (h + ", ");
	}
	
	String comment = request.getParameter("comment");		// 가입인사
	comment = comment.replace("\n", "<br>");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p><strong>아이디 : </strong><%=id %></p>
	<p><strong>비밀번호 : </strong><%=password %></p>
	<p><strong>비밀번호 확인 : </strong><%=password2 %></p>
	<p><strong>...</strong></p>
	<p><strong>취미 : </strong><%=hobbys %></p>
	<p><strong>가입인사 : </strong><%=comment %></p>
</body>
</html>






