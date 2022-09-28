<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../member_sessionChk.jsp"%>
<style type="text/css">

#background{width: 100%; height: 100%;  }
 h2{text-align: center;}
 td{border: 1px solid gray; } 
.profile{ margin-left: 45%;}
.profile > img{width: 120px; height: 140px;}
table {width:500px; margin:0 auto;}
td{margin: 1px;}
#memberout {width: 50px;}
input[type=checkbox]{ width:10px; } 
#boutton {width: 50px;}
#line {position: absolute; top:48%; left:50%;}
.value{width: 410px;}

</style>
<script type="text/javascript">
	function delchk1() {
		if (confirm("정말 탈퇴하시겠습니까??") == true){
			location.href="/project_semi/views/mypage/memberOutResult.do?id=${id}";
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
<div id="background">
	<h2>정보 수정</h2>
<form action="/project_semi/views/mypage/UpdateInfoResult.do" method="post" name="frm" onsubmit="return passwordchk()" enctype="multipart/form-data">
	<input type="hidden" name="id" value="${id }">
		<div class="profile">
			<c:if test="${empty member.profile }">
				<img alt="" src="/project_semi/images/기본이미지.jpg">
				<input class="blackText" type="file" name="profile" value="${member.profile }">
			</c:if>
			<c:if test="${not empty member.profile }">
				<img alt="" src="/project_semi/posterUpload/${member.profile }">
				<input class="blackText" type="file" name="profile" value="${member.profile }">
			</c:if>
		</div>
	<table>
		<tr>
			<th>아이디</th>
			<td>${id }</td>
		</tr>
		<tr>
			<th>닉네임</th>
			<td><input class="blackText value" type="text" name="nickname" autofocus="autofocus" required="required" value="${member.nickname }"></td>
		</tr>
		<tr>
			<th>패스워드</th>
			<td><input class="blackText value" type="password" name="password" required="required"></td>
		</tr>	
		<tr>
			<th>패스워드 확인</th>
			<td><input class="blackText value" type="password" name="passconfirm" required="required"></td>
		</tr>
		<tr>	
			<th>사용중인 OTT</th>
			<td>
				<c:if test="${member.netflix != 'Y' }">
					<label>넷플릭스</label>
					<input type="checkbox"name="netflix" value="Y">
				</c:if>
				<c:if test="${member.netflix == 'Y' }">
					<label>넷플릭스</label><input type="checkbox"name="netflix" checked="checked" value="Y">
				</c:if>
				<c:if test="${member.disney != 'Y' }">
					디즈니+<input type="checkbox" name="disney" value="Y">
				</c:if>
				<c:if test="${member.disney == 'Y' }">
					디즈니+<input type="checkbox" name="disney" checked="checked" value="Y">
				</c:if>
				<c:if test="${member.coupang != 'Y' }">
					쿠팡플레이<input type="checkbox" name="coupang" value="Y">
				</c:if>
				<c:if test="${member.coupang == 'Y' }">
					쿠팡플레이<input type="checkbox" name="coupang" checked="checked" value="Y">
				</c:if>
				<c:if test="${member.tving != 'Y' }">
					티빙<input type="checkbox" name="tving" value="Y">
				</c:if>
				<c:if test="${member.tving == 'Y' }">
					티빙<input type="checkbox" name="tving" checked="checked" value="Y">
				</c:if>
			</td>
		</tr>
		<tr>
		<th>
			</th>
			<td id="hide"><input class="blackText" type="submit" value="확인" id="boutton">
	</table>
</form>
	<div id="line">
		<button style="color: black;" id="delchk" onclick="delchk1()">회원탈퇴</button>
		<button style="color: black;" onclick="location.href='/project_semi/views/mypage/mypageForm.do?id=${id}'">이전</button>
	</div>
</div>
</body>
</html>