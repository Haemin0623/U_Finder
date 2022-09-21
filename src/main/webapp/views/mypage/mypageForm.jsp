<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../member_sessionChk.jsp" %>
</head>
<body>
	세션 id:${id }
	사용 중인 ott: ${member.netflix },${member.disney },${member.coupang },${member.tving }
	<c:forEach var="pick" items="${plist }">
		${pick }
	</c:forEach>
	<div id="profile">
		<a href="/project_semi/views/mypage/InfoChk.do?id${id }"><img alt="" src="../../images/기본이미지.jpg"
			width="120" height="120"></a>
	</div>
	<div id="otticon">
		<div id="updateinfo">
			<button onclick="location.href='/project_semi/views/mypage/InfoChk.do?id=${id}'">정보수정</button>
		</div>
	</div>
	<div>
		<button onclick="location.href='/project_semi/views/mypage/reviewForm.do?id=${id}">내 리뷰</button>
		<button onclick="location.href='picklistForm.do?id=${id}'">찜목록</button>
		<button onclick="location.href='seenmovieForm.do?id=${id}'">시청한 영화</button>
	</div>
	<div>
		<h2>사용중인 OTT</h2>
			<c:if test="${member.netflix == 'Y' }">
				<img alt="" src="../../images/넷플릭스.jpg">
			</c:if>
			<c:if test="${member.disney == 'Y' }">
				<img alt=""src="../../images/디즈니플러스.jpg"> 
			</c:if>
			<c:if test="${member.coupang == 'Y' }">
				<img alt="" src="../../images/티빙.jpg"> 
			</c:if>
			<c:if test="${member.tving == 'Y' }">
				<img alt=""	src="../../images/쿠팡플레이.jpg">
			</c:if>
	</div>
	<div class="picklist">
		<h2 align="center">찜한영화</h2>
<%-- 		<c:forEach var="pick" items="${plist }"> --%>
<%-- 				<a href=""><img src="../posterUpload/${pick.poster }" width="120" height="120"></a> --%>
<%-- 		</c:forEach> --%>
		<a href=""><img class="picklist_movie" src="../posterUpload/${pick.poster }" width="120" height="120"></a>
		
		<div align="center">
		<c:if test="${currentPage > PAGE_PER_BLOCK }" >
			<button onclick="location.href='/project_semi/views/mypage/mypageForm.do?pageNum=${startPage - 1 }'">이전</button>
		</c:if>
		<c:forEach var="i" begin="${startPage }" end="${endPage }">
			<c:if test="${i == currentPage }">
				<button style="background: red" onclick="location.href='/project_semi/views/mypage/mypageForm.do?pageNum=${i}'">${i }</button>
			</c:if>
			<c:if test="${i != currentPage }">
				<button onclick="location.href='/project_semi/views/mypage/mypageForm.do?pageNum=${i}'">${i }</button>
			</c:if>		
		</c:forEach>
		<c:if test="${endPage < totalPage }">
			<button onclick="location.href='/project_semi/views/mypage/mypageForm.do?pageNum=${endPage + 1 }'">다음</button>
		</c:if>
	</div>
	</div>
</body>
</html>