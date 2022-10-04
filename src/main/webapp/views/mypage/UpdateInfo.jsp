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

#background{
	width: 100%; 
	height: 100%;  
}
 h2{
 	text-align: center; 
}
 #td{
 	border: 1px solid gray; 
} 
.profile{ 
	margin-left: 45%;
	width: 120px;
	height: 140px;
}
.profile > img{
	width: 120px; 
	height: 140px; 
	margin-bottom: 20px;
}
table {
	width:500px; 
	height:200px; 
	margin:0 auto;
}
td{
	margin: 1px;
}
#memberout {
	width: 50px;
}
input[type=checkbox]{ 
	width:10px; 
} 
#button {
	width: 50px;
}
#line {
	position: absolute; 
	top:47%; 
	left:60%;
}
.value{
	width: 410px;
}
th{
	font-size: 14px; 
}
#hide{
	border:1px solid black; 
	border-top:1px solid gray;
	padding-left: 25px;
}
#memberoutcss{ 
	position: absolute; 
	top:50.4%; 
	left: 50.7%;
}
#pimg{
	position: absolute; 
	top:25%; 
	left: 53%;
}

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
			<c:if test="${member.profile == 'default' }">
				<svg xmlns="http://www.w3.org/2000/svg" width="120" height="140" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
				  <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
				</svg>
				<span id="pimg">
				<input class="blackText" type="file" name="profile" value="${member.profile }" >
				</span>
			</c:if>
			<c:if test="${member.profile != 'default' }">
				<img alt="" src="/project_semi/posterUpload/${member.profile }">
				<span id="pimg">
				<input class="blackText" type="file" name="profile" value="${member.profile }">
				</span>
			</c:if>
		</div>
	<table>
		<tr>
			<th>아이디</th>
			<td>${id }</td>
		</tr>
		<tr>
			<th>닉네임</th>
			<td id="td"><input class="blackText value" type="text" name="nickname" autofocus="autofocus" required="required" value="${member.nickname }"></td>
		</tr>
		<tr>
			<th>패스워드</th>
			<td id="td"><input class="blackText value" type="password" name="password" required="required"></td>
		</tr>	
		<tr>
			<th>패스워드 확인</th>
			<td id="td"><input class="blackText value" type="password" name="passconfirm" required="required"></td>
		</tr>
		<tr>	
			<th>사용중인 OTT</th>
			<td id="td">
				<c:if test="${member.netflix != 'Y' }" >
					<label>넷플릭스</label>
					<input type="checkbox"name="netflix" value="Y" style="margin-right: 10px;">
				</c:if>
				<c:if test="${member.netflix == 'Y' }">
					<label>넷플릭스</label><input type="checkbox"name="netflix" checked="checked" value="Y" style="margin-right: 10px;">
				</c:if>
				<c:if test="${member.disney != 'Y' }">
					디즈니+<input type="checkbox" name="disney" value="Y" style="margin-right: 10px;">
				</c:if>
				<c:if test="${member.disney == 'Y' }">
					디즈니+<input type="checkbox" name="disney" checked="checked" value="Y" style="margin-right: 10px;">
				</c:if>
				<c:if test="${member.coupang != 'Y' }">
					쿠팡플레이<input type="checkbox" name="coupang" value="Y" style="margin-right: 10px;">
				</c:if>
				<c:if test="${member.coupang == 'Y' }">
					쿠팡플레이<input type="checkbox" name="coupang" checked="checked" value="Y" style="margin-right: 10px;">
				</c:if>
				<c:if test="${member.tving != 'Y' }">
					티빙<input type="checkbox" name="tving" value="Y" style="margin-right: 10px;">
				</c:if>
				<c:if test="${member.tving == 'Y' }">
					티빙<input type="checkbox" name="tving" checked="checked" value="Y" style="margin-right:10px;">
				</c:if>
			</td>
		</tr>
		<tr>
		<th>
			</th>
			<td id="hide">
				<button class="blackText" id="button" style="padding: 0; border: none; background: none; color:white">
				<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="steelblue" class="bi bi-check-circle" viewBox="0 0 16 16">
				  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
				  <path d="M10.97 4.97a.235.235 0 0 0-.02.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05z"/>
				</svg>확인
			</button>
	</table>
</form>
	<div id="line">
		<button style="padding: 0; border: none; background: none;" onclick="location.href='/project_semi/views/mypage/mypageForm.do?id=${id}'"  >
			<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="yellow" class="bi bi-arrow-return-left" viewBox="0 0 16 16">
			  <path fill-rule="evenodd" d="M14.5 1.5a.5.5 0 0 1 .5.5v4.8a2.5 2.5 0 0 1-2.5 2.5H2.707l3.347 3.346a.5.5 0 0 1-.708.708l-4.2-4.2a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 8.3H12.5A1.5 1.5 0 0 0 14 6.8V2a.5.5 0 0 1 .5-.5z"/>
			</svg>이전
		</button>
	</div>
	<span id="memberoutcss">
		<button style="color: white; padding: 0; border: none; background: none;" id="delchk" onclick="delchk1()" >
			<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="red" class="bi bi-person-x-fill" viewBox="0 0 16 16">
			  <path fill-rule="evenodd" d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm6.146-2.854a.5.5 0 0 1 .708 0L14 6.293l1.146-1.147a.5.5 0 0 1 .708.708L14.707 7l1.147 1.146a.5.5 0 0 1-.708.708L14 7.707l-1.146 1.147a.5.5 0 0 1-.708-.708L13.293 7l-1.147-1.146a.5.5 0 0 1 0-.708z"/>
			</svg>회원탈퇴
		</button>
	</span>
</div>
</body>
</html>