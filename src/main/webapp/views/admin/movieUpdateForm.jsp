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

	<form action="/project_semi/views/admin/movieUpdateAction.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="movieno"value="${movie.movieno }">
		<table><caption>*은 필수</caption>
			<tr>
				<th>번호</th>
				<td>${movie.movieno }</td>
			</tr>
			<tr>
				<th>조회수</th>
				<td>${movie.mvcnt }</td>
			</tr>
			<tr>
				<th>제목*</th>
				<td><input type="text" name="moviename" required="required" value="${movie.moviename }"></td>
			</tr>
			<tr>
				<th>줄거리</th>
				<td><textarea rows="5" cols="40" name="story">${movie.story }</textarea> </td>
			</tr>
			<tr>
				<th>감독</th>
				<td><input type="text" name="director" value="${movie.director }"></td>
			</tr>
			<tr>
				<th>상영시간(분)</th>
				<td><input type="number" name="playtime" value="${movie.playtime }"></td>
			</tr>
			<tr>
				<th>OTT</th>
				<td>
					<c:if test="${movie.netflix == 'y' }">
						넷플릭스<input type="checkbox" name="netflix" checked="checked" value="Y">
					</c:if>
					<c:if test="${movie.netflix != 'y' }">
						넷플릭스<input type="checkbox" name="netflix" value="Y">
					</c:if>
					<c:if test="${movie.disney == 'y' }">
						디즈니+<input type="checkbox" name="disney" checked="checked" value="Y">
					</c:if>
					<c:if test="${movie.disney != 'y' }">
						디즈니+<input type="checkbox" name="disney" value="Y">
					</c:if>
					<c:if test="${movie.coupang == 'y' }">
						쿠팡플레이<input type="checkbox" name="coupang" checked="checked" value="Y">
					</c:if>
					<c:if test="${movie.coupang != 'y' }">
						쿠팡플레이<input type="checkbox" name="coupang" value="Y">
					</c:if>
					<c:if test="${movie.tving == 'y' }">
						티빙<input type="checkbox" name="tving" checked="checked" value="Y">
					</c:if>
					<c:if test="${movie.tving != 'y' }">
						티빙<input type="checkbox" name="tving" value="Y">
					</c:if>			
				</td>
			</tr>
			<tr>
				<th>장르</th>
				<td><input type="text" name="genre" value="${movie.genre }"></td>			
			</tr>
			<tr>
				<th>포스터</th>
				<td> (수정하지 않을거면 그냥 두시오)<input type="file" name="poster" value="${movie.poster }">${movie.poster }</td>			
			</tr>
			<tr>
				<th>트레일러주소</th>
				<td><input type="text" name="trailer" value="${movie.trailer }"></td>			
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="등록"></th>
			</tr>
		</table>
	</form>

</body>
</html>