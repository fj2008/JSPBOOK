<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<form name="frm">
		<label>아이디 : <input type="text" name="id"></label><br>
		<label>비밀번호 : <input type="password" name="pw"></label><br>
		<label>이름 : <input type="text" name="name"></label><br>
		<hr>
		<input type ="submit" value="회원가입" onclick="return join()">
	</form>
	
	<script>
		function join(){
			//회원 가입시 아이디, 비밀번호, 이름을 모두 입력하였는지 확인하세요
			//아이디는 20자 이하로 입력해야합니다.
			//비밀번호는 6자 이상 20자 이하여야합니다.
			//이름은 1자 이상 20자 이하여야합니다.
		
			var id = $("[name=id]").val();
			var pw = $("[name=pw]").val();
			var name = $("[name=name]").val();
			
			if(id.length ==0){
				alertNFocus("아이디를 입력하세요.","[name=id]");
				return false;
			}else if(pw.length == 0){
				alertNFocus("비밀번호를 입력하세요.","[name=pw]");
				return false;
			}else if(name.length == 0){
				alertNFocus("이름을 입력하세요.","[name=name]");
				return false;
			}
			if(id.length>20){
				alertNFocus("아이디는 20자 이하 여야합니다.","[name=id]");
				return false;
			}else if(pw.length<6 || pw.length>20){
				alertNFocus("비밀번호는 6자 이상 20자 이하 여야합니다.","[name=pw]");
				return false;
			}else if(name.length <1 || name.length >20){
				alertNFocus("이름은 1자 이상 20자 이하 여야합니다.","[name=name]");
				return false;
			}
			$.ajax({
				url:"/JSPBook/member/join",
				data:"id="+id+"&pw="+pw+"&name="+name,
				success: function(){
					alert("회원가입이 되었습니다\n로그인 페이지로 이동합니다.");
					location.href = "/JSPBook/chapter16/index.jsp";
				},
				error: function(){
					alert("회원가입이 실패하셨습니다\n잠시 후 다시 시도해주세요.")
				}
			});
			return false;
		}
		
		function alertNFocus(msg, selector){
			alert(msg);
			$(selector).focus();
		}
	</script>
</body>
</html>