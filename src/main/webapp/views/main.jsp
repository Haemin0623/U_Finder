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
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript">
	$(function () {
	    // 슬라이더를 움직여주는 함수
	    function moveSlider(index) {
	        // 슬라이더를 이동합니다.
	        var willMoveLeft = -(index * 2000);
	        $('.slider_panel').animate({ left: willMoveLeft }, 'slow');
	        // control_button에 active클래스를 부여/제거합니다.
	        $('.control_button[data-index=' + index + ']').addClass('active');
	        $('.control_button[data-index!=' + index + ']').removeClass('active');
	    }
	
	    // 컨트롤 버튼의 클릭 핸들러 지정 및 data-index 할당
	    $('.control_button').each(function (index) {	// 각 컨트롤 버튼의 인덱스번호를 'data-index'라는 속성에 넣음
	        $(this).attr('data-index', index);
	    }).click(function () {
	        var index = $(this).attr('data-index');	// 클릭하면 해당 인덱스 번호 받아옴
	        moveSlider(index);	// 해당 인덱스 번호로 슬라이더 이동
	    });
	 // 초기 슬라이더 위치 지정
	    var randomNumber = Math.floor(Math.random() * 5);
	    moveSlider(randomNumber);
	
	});
</script>

</head>
<body>
	<div class="main">	
		<!-- <div class="main_ad">
			<img alt="ad" src="../images/chim1.jpg">
		</div> -->
		<div class="animation_canvas">
	        <div class="slider_panel">
	            <img src="../images/chim1.jpg" class="slider_image"/>
	            <img src="../images/chim2.png" class="slider_image"/>
	            <img src="../images/chim3.jpg" class="slider_image"/>
	            <img src="../images/chim4.jpeg" class="slider_image"/>
	            <img src="../images/chim5.jpeg" class="slider_image"/>
	        </div>
	        <div class="control_panel">
	            <div class="control_button"></div>
	            <div class="control_button"></div>
	            <div class="control_button"></div>
	            <div class="control_button"></div>
	            <div class="control_button"></div>
	        </div>
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
							<img id="mv" alt="" src="/project_semi/posterUpload/${movie.poster }"></a>
						</li>
					</c:forEach>
				</ul>
			</div>
		</fieldset>	
	</div>

</body>
</html>