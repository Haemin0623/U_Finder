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
	
	<table><caption>${memberno }번 회원의 리뷰 목록</caption>
		<tr>
			<th>번호</th>
			<th>영화번호</th>
			<th>영화제목</th>
			<th>리뷰내용</th>
			<th>좋아요</th>
			<th>삭제여부</th>
		</tr>
		<c:if test="${empty list }">
			<tr>
				<td colspan="5">작성리뷰가 없다!</td>
			</tr>
		</c:if>
		<c:if test="${not empty list }">
			<c:forEach var="review" items="${list }">
				<tr>
					<td>${review.reviewno }</td>
					<td>${review.movieno }</td>
					<td>${review.moviename }</td>
					<td>${review.content }</td>
					<td>${review.movielike }</td>
					<td>${review.del }</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
	<div align="center">
		<c:if test="${currentPage > PAGE_PER_BLOCK }">
			<button onclick="location.href='/project_semi/views/admin/memberReviewList.do?pageNum=${startPage - 1 }'">이전</button>
		</c:if>
		<c:forEach var="i" begin="${startPage }" end="${endPage }">
			<c:if test="${i == currentPage }">
				<button style="background: red" onclick="location.href='/project_semi/views/admin/memberReviewList.do?pageNum=${i}'">${i }</button>
			</c:if>
			<c:if test="${i != currentPage }">
				<button onclick="location.href='/project_semi/views/admin/memberReviewList.do?pageNum=${i}'">${i }</button>
			</c:if>		
		</c:forEach>
		<c:if test="${endPage < totalPage }">
			<button onclick="location.href='/project_semi/views/admin/memberReviewList.do?pageNum=${endPage + 1 }'">다음</button>
		</c:if>
	</div>
	<button onclick="location.href='/project_semi/views/admin/admin_main.do'">메인으로</button>

</body>
</html>