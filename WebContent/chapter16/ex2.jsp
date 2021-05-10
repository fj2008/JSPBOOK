<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.Properties"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%

	Connection conn = null;//db와 관련된 페키지는 java.sql밑에있다
	
	try{
		Class.forName("org.mariadb.jdbc.Driver");//jsbc를 불러올수 있는 준비
		
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/JSPBookDB?user=root&password=koreait");
		//Statement의 객체의 이름은 stmt로 대부분 변수명을 짖는다
		Statement stmt = conn.createStatement();//쿼리작성할 객체생성(준비)
		//Statement객체처럼 ResultSet도 의미있는 이름을 쓰진않는다
		//executeQuery -> 쿼리를 보내고 결과를 받아올 수 있음 / SELECT만 할 수 있음
		
// 		ResultSet rs = stmt.executeQuery("SELECT * FROM student");//쿼리를 전송 및 결과 수신

		//executeUpdate -> INSERT, UPDATE, DELETE를 할 수 있는 메서드 
		//executeUpdate메서드는 영향을 받은 행의 수를 반환
// 		int row = stmt.executeUpdate("INSERT INTO student(name, tel, addr, grade, hight) VALUES('학생5','010-5854-4656','제주','5','185.0' )");
		
// 		int row = stmt.executeUpdate("UPDATE student SET name = '학생1' WHERE tel = '010-5555-2323'");
		int row = stmt.executeUpdate("DELETE FROM student");
		
		if(row >=1){
			out.println("<h1>"+row+"개의 삭제되었습니다</h1>");
		}else {
			out.println("<h1>실패하였습니다.</h1>");
		}
		//쿼리를 전송했던 스트림 해제
		stmt.close();//쿼리또한 사용후 꼭 끝내줘야한다
	}catch(Exception e){
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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>