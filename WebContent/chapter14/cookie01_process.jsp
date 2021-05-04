<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(id.equals("admin") && pw.equals("1234")){
		Cookie cookie_id = new Cookie("id",id);
		Cookie cookie_pw = new Cookie("pw",pw);
		
		response.addCookie(cookie_id);
		response.addCookie(cookie_pw);
		out.println("<h2>관리자로 로그인하였습니다.</h2>");
		out.println("<h2>관리자로 아이디와 비밀번호를 쿠키에 저장하였습니다.</h2>");
		
	}else{
		out.println("<h2>관리자로로그인 하지 않았기 때문에 쿠기에 저장하지 않았습니다.</h2>");
	}
%>