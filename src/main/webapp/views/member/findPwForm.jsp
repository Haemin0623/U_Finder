<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container {
	position: absolute;
	top: 20%;
   	left: 50%;
   	transform: translate(-50%, -50%);
}

.find{
	text-align: center;
}

</style>
</head>
<body>

	<!-- 비밀번호 찾기 -->
	<div class = "container">
		<div class="find find-password">
<!-- 		<h1> 비밀번호찾기 <h1>  -->
		<h2> 가입하신 이메일을 적어주세요 </h2>
		<form action="/project_semi/views/member/findPwResult.do" method="post">
			<input type="email" name="id" placeholder="아이디(이메일)" required="required" ><br>
			<input type="submit" value="비밀번호 찾기"><br>
			
			<a class = "btn" href="loginForm.jsp">이전</a> 
		</form>
		</div>
	</div>
	
</body>
</html>