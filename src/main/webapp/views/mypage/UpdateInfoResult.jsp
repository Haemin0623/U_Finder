<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <%@ include file="../member_sessionChk.jsp" %>
</head>
<body>

	<c:if test="${result > 0 }">
		<script type="text/javascript">
			alert("수정 완료");
			location.href="/project_semi/views/mypage/mypageForm.do?id=${id}";
		</script>
	</c:if>
	<c:if test="${result == 0 }">
		<script type="text/javascript">
			alert("수정 실패");
			location.href="/project_semi/views/mypage/mypageForm.do?id=${id}";
		</script>
	</c:if>
</body>
</html>