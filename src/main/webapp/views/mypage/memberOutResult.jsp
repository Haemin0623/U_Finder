<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${result > 0 }">
	<script type="text/javascript">
		alert("탈퇴가 완료되었습니다.");
		location.href="/project_semi/views/main.do";
	</script>
</c:if>
<c:if test="${result == 0 }">
	<script type="text/javascript">
		alert("탈퇴 실패");
		location.href="/project_semi/views/mypage/UpdateInfo.do?id=${id}";
	</script>
</c:if>
</body>
</html>