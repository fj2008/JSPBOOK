<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<form>
		<fieldset>
			<legend>로그인</legend>
			<label>아이디 : <input type="text" name="id"></label>
			<label>비밀번호 : <input type="password" name="pw"></label>
			<br>
			<input type = "submit" value="로그인" onclick="return login()">
		</fieldset>		
		
		<fieldset>
			<a href="/JSPBook/chapter16/join.jsp" style="margin-right: 30px;">회원가입</a>
			<a href="/JSPBook/chapter16/find_id.jsp" style="margin-right: 30px;">아이디 찾기</a>
			<a href="/JSPBook/chapter16/find_pw.jsp">비밀번호 찾기</a>
		</fieldset>
	</form>
	
	<script>
		function login(){
			// ajax를 사용해서 로그인 처리
			// 로그인 처리 -> 사용자가 입력한 아이디, 비밀번호를 login_process.jsp로 전달해서
			// 로그인 성공 응답 코드를 받으면 main.jsp 로 이동
			// 로그인 실패 응답 코드를 받으면 alert("아이디 또는 비밀번호를 확인하세요"); 를출력
			var id = $("[name=id]").val();
			var pw = $("[name=pw]").val();
			
			$.ajax({
				url:"/JSPBook/member/login",
				data:"id="+id+"&pw="+pw,
				type: "post",
				success: function(){
					alert("로그인이 완료되었습니다");
					location.href="/JSPBook/chapter16/main.jsp";
				},
				error: function(){
					alert("아이디 또는 비밀번호를 확인해 주세요.");
					
				}
			})
		}
	</script>
</body>
</html>