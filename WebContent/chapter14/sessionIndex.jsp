<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	if()
	boolean isLogin =(boolean) session.getAttribute("isLogin");
	if(isLogin){
		response.sendRedirect("/JSPBook/chapter14/sessionlogin.jsp");
		
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<!--
 아이디,비밀번호를 입력할 수 있도록 input태그를 만들고 로그인 버튼을 추가하세요
 로그인 버튼을 누르면 ajax를 사용해서 /sessino/login경로에 있는 로그인 기능을 실행하세요.
 이때 로그인 기능을 실행할때 사용자가 입력한 아이디와 비밀번호를 전달해야합니다.
 
 로그인 기능이 요청 성공에 의미를 담고 있는 응답 코드를 반환 했을 경우SessionIndex.jsp페이지로 이동
 로그인 기능이 요청 실패의 의미를 담고 있는 응답 코드를 반환 했을 경우 alert함수를 사용해서 "아이디 또는 비밀번호를 확인해 주세요"를 출력하세요
 
-->
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="password" name="pw"></p>
		<p><input type="submit" value="로그인" onclick="login()"></p>
		
		<script>
			function login(){
				$.ajax({
					url:"/JSPBook/session/login",
					data:"id="+id+"&pw="+pw,
					success:function(){
						location.href = "/JSPBook/chapter14/sessionlogin.jsp";
					},
					error: function(){
						alert("아이디 또는 비밀번호를 확인해 주세요")
					}
				})
					
			}
		</script>
</body>
</html>