<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");


String id = request.getParameter("id");
String name = request.getParameter("name");

Connection conn = null;

try{
	Class.forName("org.mariadb.jdbc.Driver");
	
	conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/JSPBookDB?user=root&password=koreait");
	
	Statement stmt = conn.createStatement();
	
	ResultSet rs =stmt.executeQuery("SELECT * FROM member1 WHERE id= '" + id + "' AND name = '" + name + "'");
	
	boolean isExist = rs.next();
		
	if(isExist){
		String pw = rs.getString("pw");
		out.print(pw);
		
		response.setStatus(200);
	}else{
		response.setStatus(401);
	}

	
		
}catch(ClassNotFoundException e){
	e.printStackTrace();
	response.setStatus(500);
}finally{
	if(conn != null){
		try{
			conn.close();
		}catch(SQLException e){
			e.printStackTrace();
			response.setStatus(500);
		}
	}
}
		
%>