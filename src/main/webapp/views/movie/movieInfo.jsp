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

<link rel="stylesheet" type="text/css" href="/project_semi/css/movie/movieInfo.css">


<style type="text/css">
	.updateform {
		display: none;
	}
	.recGenre, .recActor {
		display: none;
	}
</style> 
<c:set var="id" value='${sessionScope.id}'></c:set>
<c:set var="memberno" value='${sessionScope.memberno}'></c:set>
<script type="text/javascript" src="/project_semi/js/jquery.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script type="text/javascript">
	// 하트 <img id="yesHeart" src="../../images/하트o.png"></div>
	$('#noHeart').attr("src", "../../images/하트o.png");
	$('#yesHeart').attr("src", "../../images/하트x.png");
	
	$(function(){
		// 찜되있는 상태에서 누를시 찜 삭제
		$("#yesPick").click(function(){
			alert('1');
			$.post("/project_semi/views/movie/pickDel.do","movieno=${mvInfo.movieno}&memberno=${memberno}",
					function (data) {
						var dt = data.split("<body>");
						alert(dt[2]);
                		$('#yesPick').hide();	//   성공하면 #yesPick 숨기고
                		$('#noPick').show(); 	//			#noPick 보여주기
               });
		});
		$("#noPick").click(function(){
			$.post("/project_semi/views/movie/pickUpdate.do","movieno=${mvInfo.movieno}&memberno=${memberno}",
					function (data) {
						alert("1");
			          	$('#noPick').hide();	//   성공하면 #nosPick 숨기고
                		$('#yesPick').show(); 	//			#yesPick 보여주기
                		$('#pi').html(data);
                		alert("2");
               });
		});
	});
	
	
	// 추천작
	$(function() {
		$('#genBtn').click(function() {
			$('.recGenre').toggle();
		});
		$('#actBtn').click(function() {
			$('.recActor').toggle();
		});
	});
	
	// 수정
	$(function() {
		$('.updateBtn').click(function() {
			$('.updateform').toggle();
		
		});
	});

	// 리뷰 세션 체크
	function sessionChk() {
		if (${empty id}) {
			alert("리뷰는 회원만 적을 수 있습니다.");
			return false;
		}
	}
	// 리뷰 삭제 확인
	function reviewDel(reviewno, movieno) {
		var delchk = confirm("리뷰를 정말 삭제하시겠습니까?");
		if (delchk) {
			location.href="/project_semi/views/movie/reviewDel.do?reviewno="+reviewno+"&movieno="+movieno;
		}
	}
</script>
</head>
<body>
<div id="pi"></div>
<div> <!-- 전체 -->
	<div> <!-- 영화 정보 -->
		<table class="movieInfoForm">
			<tr><th class="th1" rowspan="6" ><img src="/project_semi/posterUpload/${mvInfo.poster}" ></th>
				<th>${mvInfo.moviename}</th>
				<th>
					<c:if test="${empty id }">
						<div id="nonoPick">
						<button type="button" class="btn btn-default">
							<span class="glyphicon glyphicon-heart-empty"></span>찜하기</button>
						</div>
					</c:if>
					<c:if test="${not empty id }">
							<c:if test="${pickResult == 1 }">	<!-- 찜O인 상태 -->
								<button id="yesPick" type="button" class="btn btn-default">
									<span class="glyphicon glyphicon-heart"></span>찜하기</button>
							</c:if>
							<c:if test="${pickResult == 0 }">    <!-- 찜x인 상태 -->
								<button  id="noPick" type="button" class="btn btn-default">
									<span class="glyphicon glyphicon-heart-empty"></span>찜하기</button>
							</c:if>
					</c:if>
					</th></tr>
			<tr><th colspan="2">감독 : ${mvInfo.director }<br>
					배우 :<c:forEach varStatus="a" var="actor" items="${actorList}">
							 <c:if test="${a.last }">
							 	${actor.actorname}
							 </c:if>
							 <c:if test="${!a.last }">
								${actor.actorname} ,
							 </c:if>
						 </c:forEach></th>
			<tr><th colspan="2">줄거리 : ${mvInfo.story }<br>
					상영시간 : ${mvInfo.playtime } 분 </th></tr>
			<tr><th colspan="2"><iframe width="560" height="315" src="${mvInfo.trailer }" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></th></tr>
			<tr><th colspan="2">NETFLIX: ${mvInfo.netflix }, DISNEY : ${mvInfo.disney }, COUPANG : ${mvInfo.coupang }, TVING : ${mvInfo.tving }</th></tr>
		</table>
	</div> <!-- 영화 정보 -->
	
	<!-- 전체 리뷰 리스트  -->
	<h4>리뷰</h4>
	<div> <!-- 전체리뷰 가져오고 + 수정 삭제 가능하게하기. 단 수정삭제시 그 글에대한 회원 id 와 로그인 세션과 id가 맞아야함 -->
		<c:if test="${empty rvList }">
			리뷰 없음
		</c:if>
		<c:if test="${not empty rvList}">
				<c:forEach var="rv" items="${rvList}">
					<c:if test="${rv.del == 'y' }">
					 삭제된 리뷰입니다. <p>
					</c:if>
					<c:if test="${rv.del != 'y' }">
						${rv.reviewno } : ${rv.content } : ${rv.movielike }점 : ${rv.nickname }
						<c:if test="${id == rv.id }">
							<button class="updateBtn" <%-- onclick="location.href='?reviewno=${rv.reviewno }&movieno=${rv.movieno}'" --%>>수정</button> 
								<div class="updateform">
									<h1>리뷰 수정</h1>
									<form action="/project_semi/views/movie/reviewUpdate.do" method="post">
										<input type="hidden" name="reviewno" value = "${rv.reviewno }">
										<input type="hidden" name="movieno" value = "${rv.movieno }">
										<input type="hidden" name="memberno" value = "${rv.memberno }">
										<table>
											<tr><th><textarea name="content" >${rv.content }</textarea></th></tr>
											<tr><th><input type="range" name="star" min="0" max="5" step="1" value="${rv.movielike }" required="required"></th></tr>
											<tr><th><input type="submit" value="수정"></th></tr>
										</table>
									</form>
								</div> 
							<button onclick="reviewDel(${rv.reviewno}, ${rv.movieno})">삭제</button>
						</c:if><p>
					</c:if>
				</c:forEach>
		</c:if>
	</div>
	
	
	<!-- 평균별점??????? -->
	<div></div>
	<!-- 리뷰 리스트 페이징 -->
	<div></div>
	
	
	
	<!-- 짧은댓글리뷰자리 -->
	<form action="/project_semi/views/movie/reviewWrite.do?movieno=${mvInfo.movieno }&id=${id}" method="post" onsubmit="return sessionChk()">
		<h4 class="sub_title">리뷰와 별점 등록</h4>                   
		<table>
			<tr><th><textarea name="content" placeholder="영화를 봤으면 리뷰 등록" ></textarea></th></tr>
			<tr><th><input type="range" name="star" min="0" max="5" step="1" value="0" required="required"></th></tr>
			<tr><th><input type="submit" value="등록"></th></tr>
		</table>
	</form>
	
	
	
	
	
	
	<!-- 비슷한 컨텐츠 -->
	<div> 
		<h1>추천작</h1>
		<button id="genBtn">영화 장르</button> <button id="actBtn">출연 배우</button>
		<div class="recGenre">
		<h3> 장르 추천작</h3>
			<ul class="searchList">
				<c:forEach var="revGen" items="${recGenre}">
					<li>
						<a href="/project_semi/views/movie/movieInfo.do?movieno=${revGen.movieno }">
						<img src="/project_semi/posterUpload/${revGen.poster}"> <span> ${revGen.moviename} </span> </a>
					</li>
				</c:forEach>
			</ul>
		</div>
		<div class="recActor">
		<h3> 동일 배우 추천작</h3>
			<ul class="searchList">
				<c:forEach var="recActor" items="${recActor}">
					<li>
						<a href="/project_semi/views/movie/movieInfo.do?movieno=${recActor.movieno }">
						<img src="/project_semi/posterUpload/${recActor.poster}"> <span> ${recActor.moviename} </span> </a>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div> <!-- 비슷한 컨텐츠 -->
	
</div> <!-- 전체 -->
</body>
</html>