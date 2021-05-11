<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//DB에 들어있는 현재 로그인한 사용자의 정보를 꺼내오기
	Connection conn = null;

	String id=null;
	String name = null;
		

	try{
		Class.forName("org.mariadb.jdbc.Driver");
		
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/JSPBookDB?user=root&password=koreait");
		
		PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM member1 WHERE idx=?");
		int idx = (Integer)session.getAttribute("idx");
		
		pstmt.setInt(1, idx);//첫번재 ?에다가 idx형태의 값을 인트로 넣겠다		
		
		ResultSet rs = pstmt.executeQuery();
		
		rs.next();
		
		id = rs.getString("id");
		name = rs.getString("name");
		
		
	}catch(ClassNotFoundException | SQLException e){
		
	}finally{
		if(conn != null){
			try{
				conn.close();
			}catch(SQLException e){
			}
		}
	}
	
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<p>회원 정보를 수정하는 페이지 입니다.</p>
	<p>아이디는 수정하실수 없습니다.</p>
	<hr>
	
	<p>
		<label>아이디: <input type="text" disabled="disabled" value="<%= id%>"></label><!-- disabled속성 볼수는있지만 입력은할 수 없는 태그 value속성은 기본값을 설정해준다-->
	</p>
	<p>
		<label>비밀번호 : <input type="password" name="pw"></label>
	</p>
	<p>
		<label>이름 : <input type="text" name="name"value="<%= name%>"></label>
	</p>
	<input type="submit" value="수정" onclick="return update()">
	
	<script>
		function update(){
			var pw = $("[name=pw]").val();
			var name = $("[name=name]").val();
			
			$.ajax({
				url:"/JSPBook/member/update",
				data: "pw="+pw+"&name="+name,
				success: function(){
					alert("회원정보를 수정하였습니다.")
					location.reload();
				},
				error: function(){
					alert("회원 정보를 수정하지 못했습니다. \n잠시 후 다시 시도해주세요.");
				}
			})
		}
	
	</script>
</body>
</html>