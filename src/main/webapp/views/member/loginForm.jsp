<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../css/member.css">

</head>
<body>

	<div class="container">
	<form action ="/project_semi/views/member/loginResult.do" method="post">
		<h1>로그인</h1>
		
		<!-- input -->
		
		<div class="form-group">
			<label for = "id"></label>
			<input type="text" name="id" required="required" autofocus="autofocus"
			placeholder="이메일 주소">
		</div>
		<div class="form-group">
			<label for = "password"></label>
			<input type="password" name="password" required="required" placeholder="비밀번호" >
		</div>
		<br>
		<div class="form-group">
			<input type="submit" value="로그인" >
		</div>
	</form>
		<div class="form-group">
		<a class = "btn" href="/project_semi/views/member/joinForm.do">회원가입</a> 
		<a class = "btn" href="/project_semi/views/member/findPwForm.do">비밀번호 찾기</a> 
		</div>
	</div> <!-- container -->
	
</body>
</html>