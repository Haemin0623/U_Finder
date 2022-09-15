<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
th {
	padding: 12px;
	border: 1px solid pink;
	white: 22
}

td {
	padding: 12px;
	border: 1px solid pink;
	width: 55%
}

body {
	background-image: url("../chang/images/텔레토비.jpg")
}

#title {
	transform: translate(35%, 170%);
	padding: 5px;
	margin: 0 auto;
	width: 50%;
	height: 60px;
}

table {
	transform: translate(0%, 220%);
	border: 1px solid black;
	margin: 0 auto;
}
</style>
<script type="text/javascript">
	// 	DB에서 패스워드 일치하는지 확인 프로그램 작성필요
</script>
</head>
<body>
	<div id="title">
		<h2>패스워드를 입력해주세요</h2>
	</div>
	<form action="loginchk.jsp">
		<div>
			<table>
				<tr>
					<th>패스워드 <input type="text" name="password" autofocus="autofocus" required="required">
					<input type="submit" value="확인">
					<button onclick="location.href='mypageForm.jsp'">취소</button>
					</th>
				</tr>
			</table>
		</div>
		
	</form>
</body>
</html>