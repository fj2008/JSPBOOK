<%@page import="java.util.Properties"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	/*
	DB에 select,insert,update,delete 를 하기 위한 준비./db 연결하기
	1. 쿼리를 수행할 Connection 객체 생성  16
	2. 연결을 수행할 Driver 로딩 19
	3. DBMS와 연결20
	4. 쿼리 전송
	5. DB연결 해제36~44
	*/

	Connection conn = null;//db와 관련된 페키지는 java.sql밑에있다
	
	try{
		Class.forName("org.mariadb.jdbc.Driver");//jsbc를 불러올수 있는 준비
		
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/JSPBookDB?user=root&password=koreait");
		
		/*								//  	dbms이름 /주소		/포트번호	/			/계정
		
		위방법 외에 db를 불러오는 다양한 방법들
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/JSPBookDB","root","koreait");
		
		Properties props = new Properties();
		props.put("user","root");
		props.put("password","1234");
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/JSPBookDB",props);
		*/
		out.println("<h1>DB 접속에</h1>");
		out.println("<h1>성공 했습니다</h1>");
		out.println("<h1>무야호~~</h1>");
	}catch(Exception e){
		e.printStackTrace();
		
		out.println("<h1>DB 접속에</h1>");
		out.println("<h1>실패 했습니다</h1>");
		out.println("<h1>그만큼 어렵다는 거지~~이클립스 콘솔가서 확인 ㄱ</h1>");
	}finally{
		if(conn != null){//10번째 줄에서 예외가 발생할 수 도 있기때문
			try{
				conn.close();//이 메서드는 sqlexception오류가 발생할 수 있다고 설명이 나온다 그래서 예외처리해줌
				
				out.println("<h2>연결을 성공적으로 끊었습니다.</h2>");
			}catch(SQLException e){//메서드를 사용할 때는 해당메서드가어떤 오류를 발생시키는지 확인하고 예외처리를 해줘야한다
				e.printStackTrace();
				out.println("<h2>연결을 끊지 못했습니다</h2>");
				out.println("<h2>이클립스 콘솔을 확인 ㄱ</h2>");
			}
			
		}
			
	//db는 연결후 꼭 닫아주어야한다 접속자수에 한계가 분명하기 때문
	//db를 끊어주지 않으면 꽤오랜시간 그 연결이 유지가 되고 그 커넥션이 쌓이고 한계치에 도달하면 db에 부담이 가해진다
	
	}
	//db접근 url 
	//jdbc:(dbms이름):주소:포트번호
	
	
	/*********************************************************************************************
	웹브라우져(클라이언트) ->톰캣(웹서버/db클라이언트)		->MariaDB server<DB서버> ->마리아db
		  프로젝트


	마리아 디비 서버는 DBMS라고함 데이터베이스를 관리하는 시스템
	그리고 이 뒤에실질적으로 데이터를 저장하고 가지고있는
	데이터베이스가 따로 있다
	데이터베이스로 바로요청하는게아닌 쿼리를 날리면 db로요청을해서 db가 응답을 하면 서버가 응답하는구조
	
	JDBC:자바에서 db관련 작업을 처리할 수 있도록 도와주는 인터페이스
	api=기능
	jdbc를 사용하면 dbms의 종류에 상관없이 db작업을 처리할 수 있다
	
	
	mysql과 mariadb는 데이터 저장 순서대로 카운팅해주는 ato_incrlment를 사용할 수있다
	
		
	**********************************************************************************************/
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>