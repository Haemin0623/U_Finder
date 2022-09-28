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
<script type="text/javascript">
	
	function pickCheck(movieno) {
		$.post("/project_semi/views/main/pickCheck.do","memberno=${memberno}&movieno="+movieno,
				function (data) {
					if(data == 1){						
						$('.pickChk'+movieno).css('color', '#C01616');
					}					
           });
	}
	
	function loopNext(){
	    $('#scroll').stop().animate({scrollLeft:'+=5'}, 'fast', 'linear', loopNext1);
	}
	function loopNext1(){
	    $('#scroll').stop().animate({scrollLeft:'+=20'}, 'fast', 'linear', loopNext1);
	}
	function loopNext2(){
	    $('#scroll').stop().animate({scrollLeft:'+=50'}, 'fast', 'linear', loopNext2);
	}
	function loopNext3(){
	    $('#scroll').stop().animate({scrollLeft:'+=90'}, 'fast', 'linear', loopNext3);
	}
	
	function loopPrev1(){
	    $('#scroll').stop().animate({scrollLeft:'-=20'}, 'fast', 'linear', loopPrev1);
	}
	function loopPrev2(){
	    $('#scroll').stop().animate({scrollLeft:'-=50'}, 'fast', 'linear', loopPrev2);
	}
	function loopPrev3(){
	    $('#scroll').stop().animate({scrollLeft:'-=90'}, 'fast', 'linear', loopPrev3);
	}
	
	function stop(){
	    $('#scroll').stop();
	}
	
	$(function() {
		
		loopNext();
		
		$('#scroll').mouseenter(function() {
			stop();
		});
		$('#scroll').mouseleave(function() {
			loopNext();
		});
		
		$('#leftScroll3').hover(function() {
			loopNext3();			
		});
		$('#leftScroll2').hover(function() {
			loopNext2();
		});
		$('#leftScroll1').hover(function() {
			loopNext1();
		});
		
		
		$('#rightScroll1').hover(function() {
			loopPrev1();
		});
		$('#rightScroll2').hover(function() {
			loopPrev2();
		});
		$('#rightScroll3').hover(function() {
			loopPrev3();
		});
		
		$('#leftScroll1, #rleftScroll2, #leftScroll3').mouseleave(function() {
			loopNext1();
		});
		$('#rightScroll1, #rightScroll2, #rightScroll3').mouseleave(function() {
			loopPrev1();
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
			찜목록
			<div class="main_hot">
				<ul>
					<c:forEach var="pickMovie" items="${pickList }" >
					<script type="text/javascript">
						pickCheck(${pickMovie.movieno });
					</script>
						<li>
							<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-heart-fill pickChk${pickMovie.movieno }" viewBox="0 0 16 16">
							<path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
							</svg>						
							<a href="/project_semi/views/movie/movieInfo.do?movieno=${pickMovie.movieno }">
							<img id="mv" class="img-rounded" alt="" src="/project_semi/posterUpload/${pickMovie.poster }"></a>
						</li>
					</c:forEach>
				</ul>
			</div>			
		</c:if>
		
		인기작
		<div class="main_hot">
		<div id="leftScroll3" style="background-color: red; opacity:0; width:33px; height:250px; position:absolute;"></div>
		<div id="leftScroll2" style="background-color: orange; opacity:0; width:33px; height:250px; position:absolute; left: 33px;"></div>
		<div id="leftScroll1" style="background-color: yellow; opacity:0; width:33px; height:250px; position:absolute; left: 66px"></div>
		<div id="rightScroll1" style="background-color: green; opacity:0; width:33px; height:250px; position:absolute; right: 66px;"></div>
		<div id="rightScroll2" style="background-color: blue; opacity:0; width:33px; height:250px; position:absolute; right: 33px;"></div>
		<div id="rightScroll3" style="background-color: violet; opacity:0; width:33px; height:250px; position:absolute; right: 0;"></div>
			<ul id="scroll"><!-- 리스트 가져와서 반복문 돌리기 -->
				<c:forEach var="movie" items="${hotList }">
				<script type="text/javascript">
						pickCheck(${movie.movieno });
				</script>
					<li>
						<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-heart-fill pickChk${movie.movieno }" viewBox="0 0 16 16">
						<path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
						</svg>
						<a href="/project_semi/views/movie/movieInfo.do?movieno=${movie.movieno }">
						<img id="mv" class="img-rounded" alt="" src="/project_semi/posterUpload/${movie.poster }"></a>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>
	<span id="check"></span>
	
</body>
</html>