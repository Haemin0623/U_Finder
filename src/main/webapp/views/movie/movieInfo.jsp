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

.star-rating {
	border: none;
	display: flex;
	flex-direction: row-reverse;
	font-size: 1.5em;
	justify-content: space-around;
	padding: 0 .2em;
	text-align: center;
	width: 5em;
}

.star-rating input {
	display: none;
}

.star-rating label {
	color: #ccc;
	cursor: pointer;
}

.star-rating :checked ~ label {
	color: #C01616;
}

.star-rating label:hover, .star-rating label:hover ~ label {
	color: #FF0000;
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
	$(function() {
		//로그인 안 됐을 때 누르면 찜 로그인하라고 안내
		$('#nonoPick').click(function() {
			alert("회원만 찜할 수 있습니다.");
		});
	});
	
	
	// 추천작
	$(function() {
		$('#genBtn').click(function() {
			$('.recGenre').show();
			$('.recActor').hide();
		});
		$('#actBtn').click(function() {
			$('.recActor').show();
			$('.recGenre').hide();
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
<div id="all_list"> <!-- 전체 -->
	<div id="movieInfoForm"> <!-- 영화 정보 -->
		<div id="one">	<!-- one 포스터 -->
			<img id="poster" src="/project_semi/posterUpload/${mvInfo.poster}" >
		</div>
		
		<div id="two"><span>  <!-- two 제목부터 ott까지 -->
				<span>
					<span id="title">${mvInfo.moviename}</span>
					<div id="zzim">
					<script type="text/javascript">
						pickCheck(${mvInfo.movieno });
					</script>
						<c:if test="${empty id }">
							<a id="nonoPick" onclick="pickChange(${mvInfo.movieno })">
								<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-heart-fill pickChk${mvInfo.movieno }" viewBox="0 0 16 16">
								<path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
								</svg>
							</a>
						</c:if>
						<c:if test="${not empty id }">
							<a id="pick" onclick="pickChange(${mvInfo.movieno })">
								<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-heart-fill pickChk${mvInfo.movieno }" viewBox="0 0 16 16">
								<path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
								</svg>
							</a>
						</c:if>
					</div>	<!-- zzim -->
				</span>
				
				<div id="info_in"><br>
					감독 : <a href="/project_semi/views/movie/searchResult.do?searchWord=${mvInfo.director }">${mvInfo.director }</a><br>
					배우 : <c:forEach varStatus="a" var="actor" items="${actorList}">
							 <c:if test="${a.last }">
							 	<a href="/project_semi/views/movie/searchResult.do?searchWord=${actor.actorname}">${actor.actorname}</a>
							 </c:if>
							 <c:if test="${!a.last }">
								<a href="/project_semi/views/movie/searchResult.do?searchWord=${actor.actorname}">${actor.actorname} , </a>
							 </c:if>
						 </c:forEach><br>
					줄거리 : ${mvInfo.story }<br>
					상영시간 : ${mvInfo.playtime } 분 <br><br>
					<iframe width="560" height="315" src="${mvInfo.trailer }" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe><br>
					<ul id="ott_list">
						<c:if test="${empty id }">
							<li><a href="https://www.netflix.com/kr/">
								<img id="ott" alt="누르시면 넷플릭스로 이동합니다." src="/project_semi/images/netflix.png"></a>
							<li><a href="https://www.disneyplus.com/ko-kr">
								<img id="ott" alt="누르시면 디즈니플러스로 이동합니다." src="/project_semi/images/disney.png"></a>
							<li><a href="https://www.coupangplay.com/?returnpath=%2Fhome">
								<img id="ott" alt="누르시면 쿠팡플레이로 이동합니다." src="/project_semi/images/coupang.png"></a>
							<li><a href="https://www.tving.com/onboarding">
								<img id="ott" alt="누르시면 티빙으로 이동합니다." src="/project_semi/images/tving.png"></a>
						</c:if>
						<c:if test="${not empty id }">
							<c:if test="${mvInfo.netflix == 'Y'}">
								<li><a href="https://www.netflix.com/kr/">
								<img id="ott" alt="누르시면 넷플릭스로 이동합니다." src="/project_semi/images/netflix.png"></a>
							</c:if>
							<c:if test="${mvInfo.netflix != 'Y'}">
								<li><a href="https://www.netflix.com/kr/">
								<img id="ottNo" alt="누르시면 넷플릭스로 이동합니다." src="/project_semi/images/netflix.png"></a>
							</c:if>
							<c:if test="${mvInfo.disney == 'Y'}">
								<li><a href="https://www.disneyplus.com/ko-kr">
								<img id="ott" alt="누르시면 디즈니플러스로 이동합니다." src="/project_semi/images/disney.png"></a>
							</c:if>
							<c:if test="${mvInfo.disney != 'Y'}">
								<li><a href="https://www.disneyplus.com/ko-kr">
								<img id="ottNo" alt="누르시면 디즈니플러스로 이동합니다." src="/project_semi/images/disney.png"></a>
							</c:if>
							<c:if test="${mvInfo.coupang == 'Y'}">
								<li><a href="https://www.coupangplay.com/?returnpath=%2Fhome">
								<img id="ott" alt="누르시면 쿠팡플레이로 이동합니다." src="/project_semi/images/coupang.png"></a>
							</c:if>
							<c:if test="${mvInfo.coupang != 'Y'}">
								<li><a href="https://www.coupangplay.com/?returnpath=%2Fhome">
								<img id="ottNo" alt="누르시면 쿠팡플레이로 이동합니다." src="/project_semi/images/coupang.png"></a>
							</c:if>
							<c:if test="${mvInfo.tving == 'Y'}">
								<li><a href="https://www.tving.com/onboarding">
								<img id="ott" alt="누르시면 티빙으로 이동합니다." src="/project_semi/images/tving.png"></a>
							</c:if>
							<c:if test="${mvInfo.tving != 'Y'}">
								<li><a href="https://www.tving.com/onboarding">
								<img id="ottNo" alt="누르시면 티빙으로 이동합니다." src="/project_semi/images/tving.png"></a>
							</c:if>
						</c:if>
					</ul>
					<br>
				</div>
				
		</span></div>	<!-- two -->
	</div> <!-- 영화 정보 -->
	
	<!-- 리뷰부터 추천작까지  -->
	<div class="a">
	<div class="review_list">
		<hr>
		<h1>리뷰</h1><br>
		<!-- 평균 점수? -->
		<div>평균 리뷰 점수 : ${rvPoint } 점<br></div><br><br>
		<div> <!-- 전체리뷰  -->
			<c:if test="${empty rvPaging }">
				리뷰 없음
			</c:if>
			<c:if test="${not empty rvPaging}">
					<c:forEach var="rv" items="${rvPaging}">
						<c:if test="${rv.del == 'Y' }">
						 <span id="delRv"> 삭제된 리뷰입니다. </span><p>
						</c:if>
						<c:if test="${rv.del != 'Y' }">
							<!--  마이페이지의 내 리뷰 중 수정할 리뷰를 클릭시 movieInfo 페이지에서 바로 볼수있게 표시하는 기능 -->
							<c:if test="${reviewno == rv.reviewno }">
								<strong style="color:#C01616;"> 
									<span id="content">
									 ${rv.content }
									 </span>
									 <span id="point">
									 ${rv.movielike }점
									 </span>
									 <span id="nick">
									 ${rv.nickname }
									 </span>
								 </strong>
							</c:if>
							<c:if test="${reviewno != rv.reviewno }">
								 <span id="content">
								 ${rv.content }
								 </span>
								 <span id="point">
								 ${rv.movielike }점
								 </span>
								 <span id="nick">
								 ${rv.nickname }
								 </span>
							</c:if>
							<!-- 리뷰수정 -->
							<c:if test="${id == rv.id }"> 
								<span style="cursor: pointer; margin-right: 10px" class="updateBtn">
									<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-pencil-fill" viewBox="0 0 16 16">
									<path d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z"/>
									</svg>
								</span> 
								<span style="cursor: pointer;" onclick="reviewDel(${rv.reviewno}, ${rv.movieno})">
									<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-trash3-fill" viewBox="0 0 16 16">
									<path d="M11 1.5v1h3.5a.5.5 0 0 1 0 1h-.538l-.853 10.66A2 2 0 0 1 11.115 16h-6.23a2 2 0 0 1-1.994-1.84L2.038 3.5H1.5a.5.5 0 0 1 0-1H5v-1A1.5 1.5 0 0 1 6.5 0h3A1.5 1.5 0 0 1 11 1.5Zm-5 0v1h4v-1a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5ZM4.5 5.029l.5 8.5a.5.5 0 1 0 .998-.06l-.5-8.5a.5.5 0 1 0-.998.06Zm6.53-.528a.5.5 0 0 0-.528.47l-.5 8.5a.5.5 0 0 0 .998.058l.5-8.5a.5.5 0 0 0-.47-.528ZM8 4.5a.5.5 0 0 0-.5.5v8.5a.5.5 0 0 0 1 0V5a.5.5 0 0 0-.5-.5Z"/>
									</svg>
								</span>
									<div class="updateform">
										<span style="color: gray;"><h4>리뷰 수정하기</h4></span>
										<form action="/project_semi/views/movie/reviewUpdate.do" method="post">
											<input type="hidden" name="reviewno" value = "${rv.reviewno }">
											<input type="hidden" name="movieno" value = "${rv.movieno }">
											<input type="hidden" name="memberno" value = "${rv.memberno }">
											<span>
												<textarea name="content" placeholder="영화를 봤으면 리뷰 등록" required="required" style="color: gray; width: 75%; float: left;	margin-right: 3%;"></textarea>					
												<div>
													<div class="star-rating">
														<input type="radio" id="up5-stars" name="star" value="5" />
														<label for="up5-stars" class="star">★</label>
														<input type="radio" id="up4-stars" name="star" value="4" />
														<label for="up4-stars" class="star">★</label>
														<input type="radio" id="up3-stars" name="star" value="3" />
														<label for="up3-stars" class="star">★</label>
														<input type="radio" id="up2-stars" name="star" value="2" />
														<label for="up2-stars" class="star">★</label>
														<input type="radio" id="up1-star" name="star" value="1" />
														<label for="up1-star" class="star">★</label>
													</div>
													<!-- <input type="range" name="star" min="0" max="5" step="1" value="0" required="required" style="color: gray; width: 15%;"> -->
													<input type="submit" value="등록" style="color: gray; margin-left: 50px;">
												</div>
											</span>
											<br><br>
										</form>
									</div> 
							</c:if><p>
							
						</c:if>
					</c:forEach>
			</c:if>
		</div>
		
		
		
		
		<!-- 리뷰 리스트 페이징 -->
		<div align="center">
			<c:if test="${currentPage > PAGE_PER_BLOCK }">
				<button onclick="location.href='/project_semi/views/movie/reviewUpdate.do?pageNum=${startPage - 1 }'">이전</button>
			</c:if>
			<c:forEach var="i" begin="${startPage }" end="${endPage }">
				<c:if test="${i == currentPage }">
					<button style="background: #C01616" onclick="location.href='/project_semi/views/movie/reviewUpdate.do?pageNum=${i}'">${i }</button>
				</c:if>
				<c:if test="${i != currentPage }">
					<button onclick="location.href='/project_semi/views/movie/reviewUpdate.do?pageNum=${i}'">${i }</button>
				</c:if>		
			</c:forEach>
			<c:if test="${endPage < totalPage }">
				<button onclick="location.href='/project_semi/views/movie/reviewUpdate.do?pageNum=${endPage + 1 }'">다음</button>
			</c:if>
		</div>
		
		
		
		<!-- 짧은댓글리뷰자리 -->
		<hr>
		<form action="/project_semi/views/movie/reviewWrite.do?movieno=${mvInfo.movieno }&id=${id}" method="post" onsubmit="return sessionChk()">
			<h1 class="sub_title">리뷰와 점수 등록</h1><br>              
				<span>
					<textarea name="content" placeholder="영화를 봤으면 리뷰 등록" required="required" style="color: gray; width: 75%; float: left;	margin-right: 3%;"></textarea>
										
					<div>
						<div class="star-rating">
							<input type="radio" id="5-stars" name="star" value="5" />
							<label for="5-stars" class="star">★</label>
							<input type="radio" id="4-stars" name="star" value="4" />
							<label for="4-stars" class="star">★</label>
							<input type="radio" id="3-stars" name="star" value="3" />
							<label for="3-stars" class="star">★</label>
							<input type="radio" id="2-stars" name="star" value="2" />
							<label for="2-stars" class="star">★</label>
							<input type="radio" id="1-star" name="star" value="1" />
							<label for="1-star" class="star">★</label>
						</div>
						<!-- <input type="range" name="star" min="0" max="5" step="1" value="0" required="required" style="color: gray; width: 15%;"> -->
						<input type="submit" value="등록" style="color: gray; margin-left: 50px;">
					</div>
				</span>
				
				<br>
				<br>
		</form>
	</div>		<!-- review_list -->
	
	
	
	
	<!-- 비슷한 컨텐츠 -->
	<div id="rec"> 
		<hr>
		<br>
		<h1>추천작</h1>
		<button id="genBtn" style="color: gray;" >영화 장르</button> <button id="actBtn" style="color: gray;">출연 배우</button>
		
		<div class="recGenre">
			<h3> 장르 추천작</h3>
				<ul class="searchList">
					<c:forEach var="revGen" items="${recGenre}">
						<li>
							<a href="/project_semi/views/movie/movieInfo.do?movieno=${revGen.movieno }">
							<img id="mv" src="/project_semi/posterUpload/${revGen.poster}"> <span> ${revGen.moviename} </span> </a>
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
						<img id="mv" src="/project_semi/posterUpload/${recActor.poster}"> <span> ${recActor.moviename} </span> </a>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div> <!-- 비슷한 컨텐츠 -->
	</div> <!-- a -->
	
</div> <!-- 전체 -->
</body>
</html>