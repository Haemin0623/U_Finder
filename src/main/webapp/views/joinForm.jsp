<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.chk-btn {
	display: inline-block;
	position: absolute;
	font-weight: 600;
	text-align: right;
	cursor: pointer;
	
}

div { 
	text-align: center;
 }
 
.container {
   /* margin:0 auto;  화면중앙에배치*/
   position: absolute;
   top: 20%;
   left: 50%;
   transform: translate(-50%, -50%);
}

</style>
<!-- <style type="text/css">@import url("../.css")</style> -->

<script type="text/javascript">
/* 아이디 중복체크 */
	function chkId() {
		
	}
	
/* 비밀번호 확인 일치여부 체크 */
	function chkPassword() {
		
	}
/* 닉네임 중복체크 */
	function chkNick() {
		
	}
	
/* 아이디, 닉네임 중복확인 버튼 눌렀는지 체크	 */
	function chk() {
		
	}
</script>
</head>
<body>

	<form action="joinResult.do" method="post" name ="frm" onsubmit="return chk();">
	
	<div class="container">
	
	<h1> 회원가입 </h1>
	
		<!-- 아이디 -->
		<div class="check">
			<input type="text" name="id" required="required" autofocus="autofocus" placeholder="아이디(이메일)">
			<a class ="chk-btn" onclick="chkId();">중복체크</a>
		</div>
		
		
		<!-- 비밀번호 -->
		<div class="check">
			<input type="password" name="password" id="password" placeholder="비밀번호" required="required">
		</div>
			<input type="password" name="confirmPassword" placeholder="비밀번호 확인" required="required">		
		
		<!-- 닉네임 -->
		<div class="check">
			<input type="text" name="nickname" placeholder="닉네임">
			<a class ="chk-btn" onclick="chkNick();">중복체크</a>
		</div>
		
		<!-- OTT 목록 -->
		<div class="select-ott">
			<fieldset>
			<legend>가입한 ott 목록<br>
				<tr>
					<td>
						<input type="checkbox" name="ott" id="o1" value="넷플릭스">
						<label for="o1">넷플릭스</label>
						<input type="checkbox" name="ott" id="o2" value="디즈니+">
						<label for="o2">디즈니+</label>
						<input type="checkbox" name="ott" id="o3" value="쿠팡플레이">
						<label for="o3">쿠팡플레이</label>
						<input type="checkbox" name="ott" id="o4" value="티빙">
						<label for="o4">티빙</label>
					</td>
				</tr>
			</legend>
			</fieldset>
		</div>
	</div>
	</form>
</body>
</html>