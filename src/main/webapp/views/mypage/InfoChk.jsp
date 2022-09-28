<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#title{position: absolute; left:38%; top:15%}
#table{width:50%; position: absolute; left:40%; top:25%}

</style>
<script type="text/javascript">
 function calcel() {
	 location.href='/project_semi/views/mypage/mypageForm.do?id=${id}';
	return false;
}
</script>
<%@include file="../member_sessionChk.jsp"%>
</head>
<body>
	<div id="title">
		<h2>패스워드를 입력해주세요</h2>
	</div>
	<form action="/project_semi/views/mypage/infoChkResult.do?id=${id }">
		<div id="table">
			<input type="hidden" name="id" value="${id }" >
			<input class="blackText" type="password" name="password" autofocus="autofocus" required="required">
			<input class="blackText" type="submit" value="확인">
			<button class="blackText" onclick="return calcel()" >취소</button>
		</div>
	</form>
</body>
</html>