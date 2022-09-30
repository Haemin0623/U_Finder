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