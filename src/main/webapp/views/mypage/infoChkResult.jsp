<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <%@ include file="../member_sessionChk.jsp" %>
</head>
<body>
	<c:if test="${result > 0}">
		<script type="text/javascript">
			location.href="/project_semi/views/mypage/UpdateInfo.do?id=${id}";
		</script>
	</c:if>
	<c:if test="${result == 0}">
		<script type="text/javascript">
			alert("패스워드가 다릅니다.");
			history.back();
		</script>
	</c:if>
</body>
</html>