<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.password{background-color: gray; border:black solid 2px;  margin: 5px; color: white;}
#title{position: absolute; left:40%; top:15%}
#table{width:50%; position: absolute; left:40%; top:25%}
.check{width: 50px; position: absolute;top:10%;}
#cancel{position: absolute;left:52.4%; top:25.4%; color:black;}

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
			<table >
				<tr>
				<th><input type="hidden" name="id" value="${id }" >
				<span>
					 <input class="blackText password" type="password" name="password" autofocus="autofocus" required="required">
					<input class="blackText check" type="submit" value="확인">
					<button class="blackText password" onclick="return calcel()" >취소</button>
				</span>
					</th>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>