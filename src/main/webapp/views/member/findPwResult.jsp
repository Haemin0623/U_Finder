<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<h1 class="title">비밀번호 찾기 결과</h1>
		<c:if test="${member != null }">
		 비밀번호는  <Strong> ${member.password} </Strong>입니다.
		</c:if>
		
		<c:if test="${member = null }">
		존재하는 회원이 없습니다.<br>
		
		</c:if>
			
	</div>

</body>
</html>