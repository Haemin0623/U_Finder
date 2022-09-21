<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title><style type="text/css">
</style>
<%@include file="../member_sessionChk.jsp"%>
<script type="text/javascript">
	function delchk() {
		if (confirm("정말 탈퇴하시겠습니까??") == true){
			
			location.href="ReviewDelete.jsp" /* 탈퇴 프로세스 이동 */
			// 			DAO에서 리턴받아서 삭제 완료 시 
			alert("탈퇴 완료");
		}
	}
	function passwordchk() {
		if (frm.password.value != frm.confirmPass.value) {
			alert("암호와 암호 확인이 다릅니다");  
			frm.password.focus();
			frm.password.value = "";  
			frm.confirmPass.value = ""; 
			return false;
		}
	}
</script>

</head>
<body>
<div id="title">
	<h2>정보 수정</h2>
<!-- </div>  정보수정 회원 이미지 기능 보류-->
<!-- <div class="profileimg"> -->
<!-- 	<form action="UpdateAction.jsp"> -->
<!-- 		<img alt="" src="../../images/기본이미지.jpg" onclick="location.href='UpdateAction.jsp'" width="100" height="100"> -->
<!-- 		<input type="file" > -->
<!-- 	</form> -->
	</div>
<form action="UpdateInfoResult.do" name="frm" onsubmit="return passwordchk()">
	<input type="hidden" name="id" value="${id }">
	<table>
		<tr>
			<th>아이디</th>
			<td>${id }</td>
		</tr>
		<tr>
			<th>닉네임</th>
			<td><input type="text" name="nickname" autofocus="autofocus" required="required"></td>
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
			<td>
				넷플릭스<input type="checkbox"name="netflix" value="Y">
				디즈니+<input type="checkbox" name="disney" value="Y">
				쿠팡플레이<input type="checkbox" name="coupang" value="Y">
				티빙<input type="checkbox" name="tving" value="Y"></td>
				</tr>
		<tr>	
			<th colspan="2"><input type="submit" value="확인">
			<button onclick="delchk()">회원탈퇴</button>
			<button onclick="location.href='/project_semi/views/mypage/mypageForm.do?id=${id}'">취소</button>
		</tr>				
	</table>
</form>
</body>
</html>