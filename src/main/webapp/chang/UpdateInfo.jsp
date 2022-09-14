<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title><style type="text/css">
th{ padding: 12px; border:1px solid pink;  white:22}
td{ padding: 12px; border:1px solid pink; width: 55% }
h2{font-size: 24px;}
body{ background-image:url("../chang/텔레토비.jpg") }
#title{
	transform: translate(41%, 150%);
	padding: 5px; 
	margin: 0 auto;
	width: 50%;
	height: 60px;
 }
table {
	border: 1px solid black;
	margin: 0 auto;
	transform: translate(0%, 50%);
}
</style>
</head>
<body>
<div id="title">
	<h2>정보 수정</h2>
</div>
<!-- <img alt="" src="" onclick="location.href='이미지수정'"> -->
<!-- <button onclick="location.href='무슨버튼인지모름'"></button> -->
<form action="UpdateAction.jsp">
	<table>
		<tr>
			<th>닉네임</th>
			<td><input type="text" name="name" autofocus="autofocus" required="required"></td>
		</tr>
		<tr>	
			<th>패스워드</th>
			<td><input type="password" name="password" required="required"></td>
		</tr>	
		<tr>
			<th>패스워드 확인</th>
			<td><input type="password" name="passconfirm" required="required"></td>
		</tr>
		<tr>	
			<th>사용중인 OTT</th>
			<td><input type="checkbox" name="OTT" value="m1">쿠팡플레이
				<input type="checkbox" name="OTT" value="m2">디즈니플러스
				<input type="checkbox" name="OTT" value="m3">넷플릭스
				<input type="checkbox" name="OTT" value="m4">왓챠
				<input type="checkbox" name="OTT" value="m5">티빙</td>
		</tr>
		<tr>	
			<th colspan="2"><input type="submit" value="확인">
			<button onclick="delchk()">회원탈퇴</button>
			<button onclick="location.href='mypageForm.jsp'">취소</button>
		</tr>				
	</table>
</form>
</body>
</html>