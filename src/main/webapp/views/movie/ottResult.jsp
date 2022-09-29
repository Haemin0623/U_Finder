<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/project_semi/css/movie/searchResult.css">

<script type="text/javascript">
	function pickChange(movieno) {
		$.post("/project_semi/views/main/pickChange.do","memberno=${memberno}&movieno="+movieno,
				function (data) {
					alert(data);
					location.reload();
	       });
	}
	
	function pickCheck(movieno) {
		$.post("/project_semi/views/main/pickCheck.do","memberno=${memberno}&movieno="+movieno,
				function (data) {
					if(data == 1){						
						$('.pickChk'+movieno).css('color', '#C01616');
					}					
	       });
	}
</script>

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
						<script type="text/javascript">
							pickCheck(${movie.movieno });
						</script>
						<li>
							<a id="pick" onclick="pickChange(${movie.movieno })">
								<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-heart-fill pickChk${movie.movieno }" viewBox="0 0 16 16">
								<path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
								</svg>
							</a>
							<a href="/project_semi/views/movie/movieInfo.do?movieno=${movie.movieno }">
							<img id="mv" src="/project_semi/posterUpload/${movie.poster}" class="img-rounded"> <span> ${movie.moviename} </span> </a>
						</li>
					</c:forEach>
				</ul>
			</c:if>
		</div>	
	</div>

</body>
</html>