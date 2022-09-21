<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
</style>
<script type="text/javascript">
</script>
<%@include file="../member_sessionChk.jsp"%>
</head>
<body>
	<div id="title">
		<h2>패스워드를 입력해주세요</h2>
	</div>
	<form action="/project_semi/views/mypage/infoChkResult.do">
		<div>
			<table>
				<tr>
				<th><input type="hidden" name="id" value="${id }">
					<th>패스워드 <input type="text" name="password" autofocus="autofocus" required="required">
					<input type="submit" value="확인">
					<button onclick="location.href='/project_semi/views/mypage/mypageForm.do?id=${id}'">취소</button>
					</th>
				</tr>
			</table>
		</div>
		
	</form>
</body>
</html>