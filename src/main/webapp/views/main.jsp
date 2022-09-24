<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>

<c:set var="id" value="${sessionScope.id }"></c:set>

<link rel="stylesheet" type="text/css" href="../css/main.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<script type="text/javascript" src="../js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<script type="text/javascript">
</script>

</head>
<body>
	
	<div id="carouselExampleIndicators" class="carousel slide carousel-fade" data-bs-ride="carousel">
		<div class="carousel-indicators">
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5"></button>
		</div>
		<div class="carousel-inner" style="height: 200px">
			<div class="carousel-item active">
				<img id="banner" class="d-block w-75" height="200px" src="../images/chim1.jpg" alt="First slide">
			</div>
			<div class="carousel-item">
				<img id="banner" class="d-block w-75" height="200px" src="../images/chim2.png" alt="Second slide">
			</div>
			<div class="carousel-item">
				<img id="banner" class="d-block w-75" height="200px" src="../images/chim3.jpg" alt="Third slide">
			</div>
			<div class="carousel-item">
				<img id="banner" class="d-block w-75" height="200px" src="../images/chim4.jpeg" alt="Fourth slide">
			</div>
			<div class="carousel-item">
				<img id="banner" class="d-block w-75" height="200px" src="../images/chim5.jpeg" alt="Fifth slide">
			</div>
		</div>
		<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="visually-hidden">Next</span>
		</button>
	</div>

	<div class="main">		
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
							<img id="mv" alt="" src="/project_semi/posterUpload/${movie.poster }"></a>
						</li>
					</c:forEach>
				</ul>
			</div>
		</fieldset>	
	</div>

</body>
</html>