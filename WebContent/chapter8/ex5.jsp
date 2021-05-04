<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="frm">
		<p>
			제목 : <input type="text" name="title">
			<input type="submit" value="전송" onclick="checkForm()">
		</p>
	</form>
	
<script>
	function checkForm() {
		// i -> 대소문자를 무시하고 찾아라
		// g -> 문자열 내의 모든 패턴을 검출
		var regExp1 = /1234$/i;
		
		var title = document.frm.title.value;
// 		var result = regExp.exec(title);
		var result = regExp.test(title);
		console.log(result);
		
		alert("콘솔 창에서 결과를 확인하세요.");
		return false;
	}
</script>
</body>
</html>




