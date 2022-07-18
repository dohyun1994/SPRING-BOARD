<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="resources/css/loginForm.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<jsp:include page="../home/menu.jsp" />
	<form id="frm" action="memberLogin.do" method="post" class="loginForm">
		<h2>LOGIN</h2>
		<div>
			<div class="idForm">
				<input type="email" class="id" id="id" name="id" placeholder="email을 입력하세요..."
					required="required">
			</div>
			<div class="passForm">
				<input type="password" class="pw" id="password" name="password"
					placeholder="password를 입력하세요..." required="required">
			</div>
		</div>
		<br>
		<div>
			<input id="signIn" type="submit" value="로그인">&nbsp; 
			<input id="reset" type="reset" value="취 소" class="reset">
		</div>
	</form>
</body>
</html>