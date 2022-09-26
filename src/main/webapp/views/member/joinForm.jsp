<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.
check input {
	width: 85%;
}

fieldset {
	width: 300px;
}

.ott-select legend {
	color: white;
}

input[type=checkbox] {
	width: 10px;
}
</style>
<link rel="stylesheet" type="text/css" href="../../css/member.css">


<script type="text/javascript">

 /* 아이디 중복체크 */
 
// function chkId(){
// 	/* 이메일 유효성 검사 */
// 	var reg_id = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
	
//  	if(!frm.id.value) {
// 		alert("이메일을 입력하세요")
// 		frm.id.focus();
// 		return false;
// 	}else{
// 		if(!reg_id.test(frm.id.value)){
// 			alert("올바른 이메일 형식이 아닙니다.");
// 			frm.id.focus();
// 			return false;
//  		}
// 		else{
// 			/* 아이디 중복확인 */
// 			$.post("/project_semi/views/member/confirmId.do", "id="+frm.id.value, function(data){
// 				$('#err_id').html(data);
// 			});
// 		} 	
} 


// function chkPass(){
//  		var pw = $("#password").val();
//  		if(pw.length<8) {
//  			$('#err_pass').html("8자리 이상 입력해주세요");
//  			frm.password.focus();
//  			frm.password.value="";
//  			return false;
//  		}else {
//  			$('#err_pass').html("사용가능한 비밀번호입니다");
//  		}
//  	}
	
/* 비밀번호 확인 일치여부 체크 */
	
	function chkPassword() {
		if (frm.password.value != frm.confirmPassword.value) {
			alert("비밀번호가 일치하지 않습니다")
			frm.password.focus();
			frm.password.value = "";
			frm.confirmPassworsd.value = "";
			return false;
		}

	}
// 	/* 닉네임 중복체크 */
// 	function chkNick() {
// 	if (!frm.nickname.value) {
// 			alert("별명을 입력하세요")
// 			frm.nickname.focus();
// 			return false;
// 		} else {
// 			frm.checked_nick.value = "y";
// 		}
// 		$.post("confirmNick_nm.do", "nickname=" + frm.nickname.value, function(data) {
// 			$('#err').html(data);
// 		});
// 	}

	/* 아이디, 닉네임 중복확인 버튼 눌렀는지 체크	 */
	function chk() {

	}
</script>
</head>
<body>

	<div class="container">
	<form action="/project_semi/views/admin/joinResult.do" method="post" name ="frm" onsubmit="return chk();">
	
	<h1> 회원가입 </h1>

				<!-- 아이디 -->
				<div class="form-group">
					<input class="blackText" type="text" name="id" required="required" autofocus="autofocus" placeholder="아이디(이메일)" >
<!-- 					<button class ="chk-btn" onclick="chkId();"> 중복체크 </button> -->
					<div class="chk_msg" id="err_id"></div>
				</div>

			<!-- 비밀번호 -->
				<div class="form-group">
					<input class="blackText" type="password" name="password" id="password" placeholder="비밀번호" required="required" onChange="chkPass()" >
					<div class="chk-msg" id="err_pass"></div>
					<input class="blackText" type="password" name="confirmPassword" placeholder="비밀번호 확인" required="required" onChange="chkPassword()">		
				</div>

				<!-- 닉네임 -->
				<div class="form-group">
					<input class="blackText" type="text" name="nickname" placeholder="닉네임" onchange="chkNick()">
					<input type="hidden" name="checked_nick" value=""><p>
					<div class="chk-msg" id="err"></div>
				</div>
				
	
		

				<!-- OTT 목록 -->
				<div class="ott-select">
					<fieldset>
						<legend> 가입한 ott 목록</legend>
							
							<input type="checkbox" name="netflix" id="o1" value="Y">
							<label class="checkbox-inline">넷플릭스</label>
							<input type="checkbox" name="disney" id="o2" value="Y">
							<label class="checkbox-inline">디즈니+</label>
							<input type="checkbox" name="coupang" id="o3" value="Y">
							<label class="checkbox-inline">쿠팡플레이</label>
							<input type="checkbox" name="tving" id="o4" value="Y">
							<label class="checkbox-inline">티빙</label>
					</fieldset>
				</div>
				
				<br>
				<div class="form-group">
				<input class="blackText" type="submit" value="회원가입">
				</div>

	</form>
	</div>
</body>
</html>