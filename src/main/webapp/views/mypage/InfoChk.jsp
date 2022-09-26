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
	<form action="/project_semi/views/mypage/infoChkResult.do?id=${id }">
		<div>
			<table>
				<tr>
				<th><input type="hidden" name="id" value="${id }">
					<th>패스워드 <input class="blackText" type="password" name="password" autofocus="autofocus" required="required">
					<input class="blackText" type="submit" value="확인">
					<button style="color: black;"onclick="location.href='/project_semi/views/mypage/mypageForm.do?id=${id}'">취소</button>
					</th>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>