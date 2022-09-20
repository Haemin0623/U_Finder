<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

	<div class="container">
	<form action ="/project_semi/views/member/loginResult.do" method="post">
		<h1>로그인</h1>
		
		<!-- input -->
		<table>
			<tr>
				<td><input type="text" name="id" required="required" autofocus="autofocus"
				placeholder="이메일 주소">
				</td>
			</tr>
			<tr> 
				<td> <input type="password" name="password" required="required" placeholder="비밀번호" ></td>
			</tr>
			<tr>
				<th colspan="1"><input type="submit" value="로그인">
			</tr>				
		</table>
	</form>
		<a class = "btn" href="joinForm.jsp">회원가입</a> 
		<a class = "btn" href="findForm.jsp">비밀번호 찾기</a> 
	</div>
	
</body>
</html>