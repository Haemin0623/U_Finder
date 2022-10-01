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
			<button class="blackText" style="padding: 0; border: none; background: none; margin: 10px; "> 
				<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="steelblue" class="bi bi-check-circle-fill" viewBox="0 0 16 16">
				  <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
				</svg>
			</button>
			<button class="blackText" onclick="return calcel()"  style="padding: 0; border: none; background: none; ">
				<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="red" class="bi bi-x-circle-fill" viewBox="0 0 16 16">
  					<path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM5.354 4.646a.5.5 0 1 0-.708.708L7.293 8l-2.647 2.646a.5.5 0 0 0 .708.708L8 8.707l2.646 2.647a.5.5 0 0 0 .708-.708L8.707 8l2.647-2.646a.5.5 0 0 0-.708-.708L8 7.293 5.354 4.646z"/>
				</svg>
			</button>
		</div>
	</form>
</body>
</html>