<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="searchResult">
		<c:forEach var="movie" items="${mvList}">
			${movie.moviename}
		</c:forEach>
	
	
	
		
		<pre>데이터 넣으면서 forif와 foreach로 해당하는 개수만큼만 나오도록</pre>
		<ul id="list">
			<li><a href="#"><img src="/project_semi/images/공조2.jpg"><span>영화제목</span></a></li>
			<li><a href="#"><img src="/project_semi/images/탑건.jpg"><span>영화제목</span></a></li>
			<li><a href="#"><img src="/project_semi/images/한산.jpg"><span>영화제목</span></a></li>
		</ul>
	</div>
</body>
</html>