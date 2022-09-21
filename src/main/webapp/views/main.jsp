<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<c:set var="id" value="${sessionScope.id }"></c:set>

<link rel="stylesheet" type="text/css" href="/project_semi/css/main.css">

</head>
<body>
	<div class="main">
		<div class="main_ad">
			<img alt="ad" src="/project_semi/images/chim.jpg">
		</div>
		<c:if test="${not empty id}">
			<fieldset><legend>찜목록</legend>
				<div class="main_hot">
					<ul>
						<c:forEach var="pickMovie" items="${pickList }" >
							<li>
								<a href="/project_semi/views/movie/movieInfo.do?movieno=${pickMovie.movieno }">
								<img id="mv" alt="" src="/project_semi/posterUpload/${pickMovie.poster }"></a>
							</li>
						</c:forEach>
					</ul>
				</div>
			</fieldset>
		</c:if>
		
		<fieldset><legend>인기작</legend>
			<div class="main_hot">
				<ul><!-- 리스트 가져와서 반복문 돌리기 -->
					<c:forEach var="movie" items="${hotList }" >
						<li>
							<a href="/project_semi/views/movie/movieInfo.do?movieno=${movie.movieno }">
							<img alt="" src="/project_semi/posterUpload/${movie.poster }"></a>
						</li>
					</c:forEach>
				</ul>
			</div>
		</fieldset>	
	</div>

</body>
</html>