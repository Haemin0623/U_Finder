<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="admin_sessionChk.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="/project_semi/css/admin/admin.css">

</head>
<body>
	
	<table><caption>영화 목록 (수정하려면 제목 클릭)</caption>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>줄거리</th>
			<th>감독</th>
			<th>상영시간</th>
			<th>넷플릭스</th>
			<th>디즈니</th>
			<th>쿠팡</th>
			<th>티빙</th>
			<th>장르</th>
			<th>조회수</th>
			<th>포스터</th>
			<th>트레일러</th>
		</tr>
		<c:if test="${empty list }">
			<tr>
				<td colspan="13">DB에 영화가 없다!</td>
			</tr>
		</c:if>
		<c:if test="${not empty list }">
			<c:forEach var="movie" items="${list }">
				<tr>
					<td>${movie.movieno }</td>
					<td><a href="/project_semi/views/admin/movieUpdateForm.do?movieno=${movie.movieno }">${movie.moviename }</a></td>
					<td>${movie.story }</td>
					<td>${movie.director }</td>
					<td>${movie.playtime }</td>
					<td>${movie.netflix }</td>
					<td>${movie.disney }</td>
					<td>${movie.coupang }</td>
					<td>${movie.tving }</td>
					<td>${movie.genre }</td>
					<td>${movie.cnt }</td>
					<c:if test="${not empty movie.poster }">
						<td><img style="width: 100px" alt="" src="/project_semi/posterUpload/${movie.poster }"> ${movie.poster }</td>					
					</c:if>
					<c:if test="${empty movie.poster }">
						<td>no poster</td>					
					</c:if>
					<td>${movie.trailer }</td>					
				</tr>
			</c:forEach>
		</c:if>
	</table>
	<div align="center">
		<c:if test="${currentPage > PAGE_PER_BLOCK }">
			<button onclick="location.href='/project_semi/views/admin/movieList.do?pageNum=${startPage - 1 }'">이전</button>
		</c:if>
		<c:forEach var="i" begin="${startPage }" end="${endPage }">
			<c:if test="${i == currentPage }">
				<button style="background: red" onclick="location.href='/project_semi/views/admin/movieList.do?pageNum=${i}'">${i }</button>
			</c:if>
			<c:if test="${i != currentPage }">
				<button onclick="location.href='/project_semi/views/admin/movieList.do?pageNum=${i}'">${i }</button>
			</c:if>		
		</c:forEach>
		<c:if test="${endPage < totalPage }">
			<button onclick="location.href='/project_semi/views/admin/movieList.do?pageNum=${endPage + 1 }'">다음</button>
		</c:if>
	</div>
	<button onclick="location.href='/project_semi/views/admin/movieAddForm.do'">영화등록</button>
	<button onclick="location.href='/project_semi/views/admin/admin_main.do'">메인으로</button>

</body>
</html>