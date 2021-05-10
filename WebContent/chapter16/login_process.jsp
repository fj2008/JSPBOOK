<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	//로그인 ->사용자가 입력한 아이디,비밀번호가 회원 정보에 있는지 확인
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	Connection conn = null;
	
	try{
		Class.forName("org.mariadb.jdbc.Driver");
		
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/JSPBookDB?user=root&password=koreait");
		
		Statement stmt = conn.createStatement();
		
		ResultSet rs =stmt.executeQuery("SELECT * FROM member1 WHERE id= '" + id + "' AND pw = '" + pw + "'");//resultSet이라는 객체로 값을 반환함
		
		boolean isExist = rs.next();//검색결과가 겹치지않고 하나만 나올때
		// 		while(rs.next()){//rs.next()다음 검색결과로 한행한행 이동하는메서드이고 더이상 읽을 결과가 없다면 false반환}
			
		if(isExist){
			//로그인시 입력한 아이디, 비밀번호로 회원정보를 찾았다며은
			//로그인처리
			String name = rs.getString("name");//db데이터를 문자열로 꺼내오는 메서드
			session.setAttribute("name", name);
			
			response.setStatus(200);
		}else{
			//로그인시 입력한 아이디, 비밀번호를 찾지 못했다면은 
			//로그인 실패 처리
			response.setStatus(401);
		}

		
			
	}catch(ClassNotFoundException e){
		e.printStackTrace();
	}finally{
		if(conn != null){
			try{
				conn.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
	}
			
%>