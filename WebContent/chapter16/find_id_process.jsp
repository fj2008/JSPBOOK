<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 사용자가 입력한 이름을 사용해서 아이디를 찾아서 전달 -->
<!-- 이름과 일치하는 아이디가 여러개 일 경우 첫 번째로 검색된 아이디만 사용한다. -->
<%
	
	request.setCharacterEncoding("UTF-8");
	//로그인 ->사용자가 입력한 아이디,비밀번호가 회원 정보에 있는지 확인
	String name = request.getParameter("name");
	Connection conn = null;
	
	try{
		Class.forName("org.mariadb.jdbc.Driver");//드라이버로드
		
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/JSPBookDB?user=root&password=koreait");
		
		Statement stmt = conn.createStatement();//쿼리 db에 요청
		
		ResultSet rs =stmt.executeQuery("SELECT id FROM member1 WHERE name= '" + name + "'");//resultSet이라는 객체로 값을 반환함
		
		boolean isExist = rs.next();
		if(isExist){
			String id = rs.getString("id");
			
			out.print(id);
			
			response.setStatus(200);
		}else{
			response.setStatus(404);
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