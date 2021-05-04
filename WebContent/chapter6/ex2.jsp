<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String tel1 = request.getParameter("tel1");
	String tel2 = request.getParameter("tel2");
	String tel3 = request.getParameter("tel3");
	
	String tel = tel1 + tel2 + tel3;
	
	if(tel1 != null && tel2 != null && tel3 != null) {
		out.println("첫 번째 연락처의 자리수 = " + tel1.length() + "<br>");
		out.println("두 번째 연락처의 자리수 = " + tel2.length() + "<br>");
		out.println("세 번째 연락처의 자리수 = " + tel3.length() + "<br>");
		
		// 연락처의 첫 번째 자리 수는 3자리여야합니다.
		// 연락처의 두, 세번째 자리 수는 4자리여야합니다.
		// 요청 파라미터로 전달받은 연락처가
		// 연락처의 각 자리수를 초과하였을 때는
		// 웹 페이지에 연락처를 확인해주세요 라고 출력되도록 하세요.		
		
		if(tel1.length() != 3 || tel2.length() != 4 || tel3.length() != 4) {
			out.println("<h1>연락처를 확인해주세요</h1>");
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
	<h1>연락처 : <%=tel %></h1>

	<form action="./ex2.jsp" method="get">
		<p>
			연락처 : 
				<select name="tel1">
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="019">019</option>
				</select>
				
				-
				
				<input type="text" name="tel2" maxlength="4" size="4">
				
				-
				
				<input type="text" name="tel3" maxlength="4" size="4">
		</p>
		<p><input type="submit" value="전송"></p>
		
		<select name="city">
			<option>도시를 선택하세요.</option>
			<option value="서울">서울특별시</option>
			<option value="부산">부산광역시</option>
			<option value="인천">인천광역시</option>
			<option value="경기">경기도</option>
			<option value="충청">충청도</option>
		</select>
	</form>
</body>
</html>