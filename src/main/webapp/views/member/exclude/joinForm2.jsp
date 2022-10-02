<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  
<style type="text/css">

</style>

<link rel="stylesheet" type="text/css" href="../../css/member.css">

<script type="text/javascript">

function chkId(){
	 /* 이메일 유효성 검사 */
	var reg_id = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
	//id 값이 없을때
 	if(!frm.id.value) {
		alert("이메일을 입력하세요")
		frm.id.focus();
		return false;
		
	//id 값이 있을떄
	} else{
		if(!reg_id.test(frm.id.value)){ 	//아이디 유효성검사 통과 못했을떄
			alert("올바른 이메일 형식이 아닙니다.");
			frm.id.focus();
			return false;
			//아이디 유효성검사 통과했을떄
 		} else{
			/* 아이디 중복확인 */
	 			// jQuery Ajax이용하는 방법. data는 confirmId.do를 실행한 결과
	 			// 아이디가 err_id인 곳에 data를 html 형식으로 넣어라  
			$.post("/project_semi/views/member/confirmId.do", "id="+frm.id.value, function(data){
				$('#err_id').html(data);
			});
		} 	
} 

</script>
</head>
<body>

	<div class="container" >
<!-- 	<form action="/project_semi/views/admin/joinResult.do" method="post" name ="frm" onsubmit="return chk();"> -->
	
	<h1> 회원가입 </h1>

				<!-- 아이디 -->
				<div class="form-group">
					<input type="text" name="id" required="required" autofocus="autofocus" placeholder="아이디(이메일)" >
					<span class="form-group">
						<button onclick="chkId()"> 중복체크 </button>
					</span>
				</div>

			<!-- 비밀번호 -->
				<div class="form-group">
					<input type="password" name="password" placeholder="비밀번호" required="required">
				</div>
				<div class="form-group">	
					<input type="password" name="confirmPassword" placeholder="비밀번호 확인" required="required">	
				</div>

				<!-- 닉네임 -->
				<div class="form-group">
					<input type="text" name="nickname" placeholder="닉네임">
				</div>
				
	
				<!-- OTT 목록 -->
				<div class="form-group">
					<fieldset>
						<legend> 가입한 ott 목록</legend>
							
							<input type="checkbox" name="netflix" value="Y">
							<label >넷플릭스</label>
							
							<input type="checkbox" name="disney" value="Y">
							<label >디즈니+</label>
							
							<input type="checkbox" name="coupang" value="Y">
							<label >쿠팡플레이</label>
							
							<input type="checkbox" name="tving" value="Y">
							<label >티빙</label>
					</fieldset>
				</div>

				<div class="form-group">
					<input type="submit" value="회원가입">
				</div>

	</form>
	</div>
</body>
</html>