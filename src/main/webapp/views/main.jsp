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
<style type="text/css">
.carousel-indicators .active {
	width: 30px;
	height: 3px;
}
</style>
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
	
	function loopNext1(){
	    $('#sc1').stop().animate({scrollLeft:'+=15'}, 'fast', 'linear', loopNext1);
	}

	function stop1(){
	    $('#sc1').stop();
	}
	
	function loopNext2(){
	    $('#sc2').stop().animate({scrollLeft:'+=15'}, 'fast', 'linear', loopNext2);
	}

	function stop2(){
	    $('#sc2').stop();
	}
	
	$(function() {
		
		loopNext1();
		loopNext2();
		
		$('#sc1').mouseenter(function() {
			stop1();
		});
		$('#sc1').mouseleave(function() {
			loopNext1();
		});
		
		$('#sc2').mouseenter(function() {
			stop2();
		});
		$('#sc2').mouseleave(function() {
			loopNext2();
		});		
		
	});
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
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img id="banner" class="d-block w-75" src="/project_semi/bannerImage/banner1.jpg" alt="First slide">
			</div>
			<div class="carousel-item">
				<img id="banner" class="d-block w-75" src="/project_semi/bannerImage/banner2.jpg" alt="Second slide">
			</div>
			<div class="carousel-item">
				<img id="banner" class="d-block w-75" src="/project_semi/bannerImage/banner3.jpg" alt="Third slide">
			</div>
			<div class="carousel-item">
				<img id="banner" class="d-block w-75" src="/project_semi/bannerImage/banner4.jpg" alt="Fourth slide">
			</div>
			<div class="carousel-item">
				<img id="banner" class="d-block w-75" src="/project_semi/bannerImage/banner5.jpg" alt="Fifth slide">
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
			<h2>찜목록</h2>
			<div class="main_hot">
				<ul>
					<c:set var="breakDone" value="false"></c:set>
					<c:forEach var="pickMovie" items="${pickList }" varStatus="v">
						<c:if test="${not breakDone }">
							<script type="text/javascript">
								pickCheck(${pickMovie.movieno });
							</script>
							<c:if test="${v.index == 4}">
								<c:set var="breakDone" value="true"></c:set>
							</c:if>
							<li>
								<a id="pick" onclick="pickChange(${pickMovie.movieno })">
									<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-heart-fill pickChk${pickMovie.movieno }" viewBox="0 0 16 16">
									<path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
									</svg>
								</a>
												
								<a href="/project_semi/views/movie/movieInfo.do?movieno=${pickMovie.movieno }">
								<img id="mv" class="img-rounded" alt="" src="/project_semi/posterUpload/${pickMovie.poster }"></a>
							</li>
						</c:if>
					</c:forEach>
					<li>
						<a href="/project_semi/views/mypage/pickListForm.do?id=${id}">
							<svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" fill="currentColor" class="bi bi-plus-square-fill" viewBox="0 0 16 16">
		  					<path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm6.5 4.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3a.5.5 0 0 1 1 0z"/>
							</svg>
						</a>
					</li>
				</ul>
			</div>			
		</c:if>
	</div>
		
		<h2>인기작</h2>
		
		<div class="main_hot">
			<ul class="scroll" id="sc1"><!-- 리스트 가져와서 반복문 돌리기 -->
				<c:forEach var="movie" items="${hotList }">
					<script type="text/javascript">
							pickCheck(${movie.movieno });
					</script>
					<li>
						<c:if test="${not empty id }">
							<a id="pick" onclick="pickChange(${movie.movieno })">
								<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-heart-fill pickChk${movie.movieno }" viewBox="0 0 16 16">
								<path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
								</svg>
							</a>
						</c:if>
						<a href="/project_semi/views/movie/movieInfo.do?movieno=${movie.movieno }">
						<img id="mv" class="img-rounded" alt="" src="/project_semi/posterUpload/${movie.poster }"></a>
					</li>
				</c:forEach>
			</ul>
		</div>
		
		<h2>새로 등록된 영화</h2>
		<div class="main_hot">
			<ul class="scroll" id="sc2">
				<c:forEach var="newMovie" items="${newList }">
					<script type="text/javascript">
							pickCheck(${newMovie.movieno });
					</script>
					<li>
						<c:if test="${not empty id }">
							<a id="pick" onclick="pickChange(${newMovie.movieno })">
								<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-heart-fill pickChk${newMovie.movieno }" viewBox="0 0 16 16">
								<path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
								</svg>
							</a>
						</c:if>
						<a href="/project_semi/views/movie/movieInfo.do?movieno=${newMovie.movieno }">
						<img id="mv" class="img-rounded" alt="" src="/project_semi/posterUpload/${newMovie.poster }"></a>
					</li>
				</c:forEach>
			</ul>
		</div>
	
</body>
</html>