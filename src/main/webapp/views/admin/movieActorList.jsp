<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="/project_semi/css/admin/admin.css">

</head>
<body>
	<button onclick="location.href='/project_semi/views/admin/actorAddForm.do?movieno=${movieno}'">배우추가</button>
	<button onclick="location.href='/project_semi/views/admin/admin_main.do'">메인으로</button>
	<table><caption>${movieno}번 영화 배우 목록</caption>
		<tr>
			<th>번호</th>
			<th>배우</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<c:if test="${empty list }">
			<tr>
				<td colspan="4">DB에 배우가 없다!</td>
			</tr>
		</c:if>
		<c:if test="${not empty list }">
			<c:forEach var="actor" items="${list }">
				<tr>
					<td>${actor.actorno }</td>
					<td>${actor.actorname }</td>
					<td><button onclick="location.href='/project_semi/views/admin/actorUpdateForm.do?actorno=${actor.actorno }&actorname=${actor.actorname }&movieno=${actor.movieno}'">수정</button></td>
					<td><button onclick="location.href='/project_semi/views/admin/actorDeleteAction.do?actorno=${actor.actorno }&movieno=${movieno}'">삭제</button></td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
	

</body>
</html>