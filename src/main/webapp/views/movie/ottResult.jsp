<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/project_semi/css/movie/searchResult.css">
</head>
<body>

	<div class = "result_wide">
		<h2> ${ottName} 에 있는 모든 영화 리스트 </h2>
		<div class="result_inner">
			<c:if test="${empty mvList}">
				<p class ="search_text"> 
					영화가 없습니다</p>
			</c:if>
			
			<c:if test="${not empty mvList}">
				<ul class="searchList">
					<c:forEach var="movie" items="${mvList}">
						<li>
							<a href="/project_semi/views/movie/movieInfo.do?movieno=${movie.movieno }">
							<img id="mv" src="/project_semi/posterUpload/${movie.poster}"> <span> ${movie.moviename} </span> </a>
						</li>
					</c:forEach>
				</ul>
			</c:if>
		</div>	
	</div>

</body>
</html>