<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<div>
		<h2>아이디 찾기</h2>
		<p>회원 가입 시 입력했던 이름을 입력하세요.</p>
		<label>이름 : <input type="text" name="name"></label>
		<hr>
		<input type="submit" value ="아이디 찾기" onclick="return find()">
		<a href="/JSPBook/chapter16/index.jsp">로그인 페이지로</a>
	</div>
	<script>
	//사용자가 입려한 이름으로 아이디를 찾아주는 기능
		function find(){
		//find_id_process를 활용해서 아이디를 찾았다면 alert("아이디를 찾았습니다")를
		//아이디를 찾지 못했다면 alert("아이디를 찾지 못했습니다")가 출력되도록하세요
		
			var name = $("[name=name]").val();
		
		$.ajax({
			
			url: "/JSPBook/member/find_id",
			data: "name="+name,
			success: function(data){
				data = data.trim();//앞뒤공백을 없애주는 메서드
				alert(name + "으로 찾은 아이디는 " + data+" 입니다.");
			},
			error: function(){
				alert("아이디를 찾지 못했습니다.");
			}
			
		
	})
	}	
		
	</script>
</body>
</html>