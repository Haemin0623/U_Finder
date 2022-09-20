<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${result>0 }">
		<script>
			location.href="/project_semi/views/mypage/mypageForm.UpdateInfo.do;
		</script>
	</c:if>
	
	<c:if test="${result==0 }">
		<script>
			alert("비밀번호가 일치하지 않습니다.\n다시 시도해주세요.")
			history.back();
		</script>
	</c:if>
</body>
</html>