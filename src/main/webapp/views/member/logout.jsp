<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
	var chk = confirm("유 Finder 이용을 종료하실건가요?");
	if (chk) {
		alert("유 Finder를 이용해주셔서 감사합니다")
		location.href = "/project_semi/views/member/logout.do"
	} else {
		history.go(-1);
	}
</script>
</head>
<body>


</body>
</html>