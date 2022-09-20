<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/project_semi/css/movie/movieInfo.css">
<c:set var="id" value='${sessionScope.id}'></c:set>
<script type="text/javascript">
	// 리뷰 세션 체크
	function sessionChk() {
		if (${empty id}) {
			alert("리뷰는 회원만 적을 수 있습니다.");
			return false;
		}
	}
	// 리뷰 삭제 확인
	function reviewDel() {
		var delchk = confirm("리뷰를 정말 삭제하시겠습니까?");
		if (delchk) {
			location.href="/project_semi/views/movie/reviewDel.do?movieno=${rv.movieno}&rvDel=${rv.del}";
		}
	}
</script>
</head>
<body>
<div> <!-- 전체 -->
	<div> <!-- 영화 정보 -->
		<table class="movieInfoForm">
			<tr>
				<th class="th1" rowspan="3" ><img src="/project_semi/posterUpload/${mvInfo.poster}" ></th>
				<th>${mvInfo.moviename}</th></tr>
			<tr>
				<th>감독 : ${mvInfo.director } , 배우 :
				<c:forEach varStatus="a" var="actor" items="${actorList}">
					<c:if test="${a.last }">
					  	${actor.actorname}
					</c:if>
					<c:if test="${!a.last }">
						${actor.actorname} ,
					</c:if>
				</c:forEach>
				</th></tr>
			<tr>
				<th>NETFLIX: ${mvInfo.netflix }, DISNEY : ${mvInfo.disney }, COUPANG : ${mvInfo.coupang }, TVING : ${mvInfo.tving }</th></tr>
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
					${rv.content } : ${rv.movielike }점 : ${rv.nickname } 
					<c:if test="${id == rv.id }">
						<button onclick="location.href='reviewUpdate.jsp?movieno=${movieno}'">수정</button> 
						<button onclick="reviewDel()">삭제</button><p>
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
			<tr><th><input type="range" name="star" min="0" max="5" step="1" value="0" required="required">
			<tr><th><input type="submit" value="등록"></th></tr>
		</table>
	</form>
	
	
	
	
	
	
	<!-- 비슷한 컨텐츠 -->
	<div> 
		
		비슷한 컨텐츠	
		
	</div> <!-- 비슷한 컨텐츠 -->
</div> <!-- 전체 -->
</body>
</html>