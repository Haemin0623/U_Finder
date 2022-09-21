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
	
	<table>
		<tr>
			<th>리뷰번호</th>
			<th>영화번호</th>
			<th>내용</th>
			<th>점수</th>
			<th>삭제여부</th>
		</tr>
		<c:if test="${empty list }">
			<tr>
				<td colspan="6">DB에 리뷰가 없다!</td>
			</tr>
		</c:if>
		<c:if test="${not empty list }">
			<c:forEach var="review" items="${list }">
				<tr>
					<td>${review.reviewno }</td>
					<td>${review.memberno }</td>
					<td>${review.content }</td>
					<td>${review.movielike }</td>
					<td>${review.del }</td>
				</tr>
			</c:forEach>
		</c:if>		
	</table>
	<button onclick="location.href='/project_semi/views/admin/admin_main.do'">메인으로</button>

</body>
</html>