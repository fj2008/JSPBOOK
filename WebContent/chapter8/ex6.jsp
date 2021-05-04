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
			이름 : <input type="text" name="name">
			<input type="submit" value="전송" onclick="checkForm()">
		</p>
	</form>
	
<script>
	function checkForm() {
		var form = document.frm;
		var name = form.name.value;
		
		var regExp = /^[010|011|019|017]-([0-9][0-9][0-9][0-9])-([0-9][0-9][0-9][0-9])/;
		if(regExp.test(name)) {
			alert("이름은 숫자로 시작할 수 없습니다!");
			
			return false;
		}
	}
</script>
</body>
</html>

