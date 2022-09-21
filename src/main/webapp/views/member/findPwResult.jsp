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
		<h1 class="title">비밀번호 초기화</h1>
		<c:if test="${member.id ==  }">
		 비밀번호가  <Strong> ${member.password} </Strong> 으로 초기화 되었습니다.
		</c:if>
		
	</div>

</body>
</html>