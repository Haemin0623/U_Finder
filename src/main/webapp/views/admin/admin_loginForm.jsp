<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="/project_semi/css/admin/admin.css">

</head>
<body>

	<form action="/project_semi/views/admin/adminLogin.do" method="post">
		<table style="border:1px solid"><caption>관리자 로그인</caption>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id" required="required" autofocus="autofocus"></td>
			</tr>
			<tr>
				<th>패스워드</th>
				<td><input type="password" name="password" required="required"></td>
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="로그인"></th>
			</tr>		
		</table>
	</form>

</body>
</html>