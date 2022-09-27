<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/project_semi/css/movie/searchResult.css">
</head>
<body>
	<div class="result_wide">
		<span class="word">${searchWord }</span><span class="line">에 대한 검색 결과</span>
		<div class = "result_inner">
			<c:if test="${mvList.size() == 0}">
				<p class="search_text">검색 결과가 없습니다.<br>다른 검색어를 입력해주세요.</p>
			</c:if>
			<c:if test="${mvList.size() != 0}">
				<ul class="searchList">
					<c:forEach var="movie" items="${mvList}">
						<li>
							<a href="/project_semi/views/movie/movieInfo.do?movieno=${movie.movieno }">
							<img id="mv" class="img-rounded" src="/project_semi/posterUpload/${movie.poster}"> <span> ${movie.moviename} </span> </a>
						</li>
					</c:forEach>
				</ul>
			</c:if>
		</div> <!-- result_inner -->
	</div> <!-- result_wide -->
</body>
</html>