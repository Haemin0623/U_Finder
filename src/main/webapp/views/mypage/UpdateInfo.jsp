<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title><style type="text/css">
</style>
<script type="text/javascript">
	function delchk() {
		if (confirm("정말 삭제하시겠습니까??") == true){
			
			location.href="ReviewDelete.jsp" /* 삭제 프로세스 이동 */
			// 			DAO에서 리턴받아서 삭제 완료 시 
			alert("탈퇴 완료");
		}
	}
</script>
</head>
<body>
<div id="title">
	<h2>정보 수정</h2>
</div>
<div class="profileimg">
	<form action="UpdateAction.jsp">
		<img alt="" src="../../images/기본이미지.jpg" onclick="location.href='UpdateAction.jsp'" width="100" height="100">
		<input type="file" >
	</form>
	</div>
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
				<input type="checkbox" name="OTT" value="m2">디즈니+
				<input type="checkbox" name="OTT" value="m3">넷플릭스
				<input type="checkbox" name="OTT" value="m4">티빙</td>
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