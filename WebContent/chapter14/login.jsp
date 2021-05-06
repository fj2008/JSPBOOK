<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%	
	/************************************
	login.jsp ->로그인 아이디,비밀번호 입력
	login_process.jsp->아이디와 비밀번호,닉네임을 쿠키에 저장
	index.jsp ->로그인한 사용자의 닉네임을 보여준다.
	
	login.jsp ->로그인 페이지는 로그인하지 않은 사용자만 접근할 수 있다.
				로그인한 사용자가 로그인 페이지로 들어온다면
				index.jsp로 이동한다.
				
	index.jsp ->로그인한 사용자만 접근할 수 있다.
				로그인하지 않은 사용자가 이 페이지로 접근한다면
				login.jsp로 이동한다
	/****************************************
	*/
	
	
	//로그인 여부 체크
	//1.session을 통한 로그인 여부 체크
	//2.cookie를 통한 로그인 여부 체크
	//클라이언트가 보낸 쿠키의 목록
	Cookie[] cookies = request.getCookies();
	
	boolean isLogin = false;//로그인 여부
	//이름이 변수명과 같은 쿠키가 있는지 여부
	boolean isID = false;
	boolean isPW = false;
	boolean isNickName = false;
	
	if(cookies != null){
		for(int i =0; i<cookies.length; i++){
		//쿠키의 처음부터 끝까지 반복문을 돌면서
		//로그인 여부를 체크
		Cookie cookie = cookies[i];//n번째 쿠키
		String name = cookie.getName();//n번째 쿠키의 이름
		String value = cookie.getValue();//n번째 쿠키의 값
		//isID == false ->n번째 까지 이름이 id인 쿠키를 찾지 못했다
		if(isID == false && name.equals("ID")){
			isID= true;
		}else if(isPW == false && name.equals("PW")){
			isPW =true;
		}else if(isNickName == false && name.equals("NickName")){
			isNickName =true;
		}
	}//end for
	//쿠키에 이름이 아이디 비밀번호 닉네임인 쿠키가 모두 들어있었다면은
	isLogin =isID && isPW && isNickName;
	if(isLogin){
		//로그인이 되어있다면 index.jsp로 이동
		response.sendRedirect("/JSPBook/chapter14/index.jsp");
	}
	
	
	}
	
%>
<!-- JSP는 기본 응답코드가 200으로 설정 되어있다 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<!-- 브라우저가 이 코드를 만나면 이 주소에 있는 jquery를 그때그때 다운받아서 사용할 수 있도록 하는 코드 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<div>
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="password" name="pw"></p>
		<button type="button" onclick="login()">로그인</button>
	</div>
	<script >
		function login(){
			//ajax를 사용해서 login_process.jsp를 호출하고
			//login_process.jsp가 반환하는 결과 값을 사용해서
			//로그인 성공 시 index.jsp로 이동
			//로그인 실패 시 "아이디 또는 비밀 번호가 올바르지 않습니다"를 출력
			//ajax -> jQuery라이브러리 안에 들어있음
			//jQuery->자바스크립트를 조금 더 편하게 사용해 주는 툴
			//브라우저는 HTML,CSS,JavaScript 를 갖고 있고
			//jQuery는 갖고 있지 않음
			
			
			var id = $("[name=id]").val();//jQuery모듈이 input 태그에 name이 id라는 태그를 선택할 수 있음 그리고 .val()을 사용해서 값까지 받아올 수 있음
				
			var pw =$("[name=pw]").val();
			$.ajax({
				url: "/JSPBook/cookie/login",//현제페이지에서 이 경로로 요청을 하겟다 라는 ajax함수의 매개변수
				data: "id="+id+"&pw="+pw,
				success: function(){
					//요청이 성공했을시에 실행하는 동작(200번대.300번대 응답코드가 돌아왓을때)
					location.href = "/JSPBook/chapter14/index.jsp";
				},
				error: function(){
					//요청이 실패했을 때에 실행하는 동작(400번대,500번대 응답코드가 돌아왔을때)	
					//console.log();//콘솔창에 보이는 값
					alert("아이디 또는 비밀번호가 올바르지 않습니다.");//사용자가 보이는창
					
				}
			})
			
			return false;
		}
	//체크->출력->요청
	//서비스를 만들데 자바스크립트에 ajax같은 기능을 사용해서 페이지의 이동없이 응답과 요청을 받아내는 처리를 주로 하게됨
	
	</script>
</body>
</html>