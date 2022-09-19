<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../member_sessionChk.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	세션 id:${member.id }
	사용 중인 ott: ${member.netflix }
	<div id="profile">
		<a href="/project_semi/views/mypage/InfoChk.do"><img alt="" src="../../images/기본이미지.jpg"
			width="120" height="120"></a>
	</div>
	<div id="otticon">
		<div id="updateinfo">
			<button onclick="location.href='/project_semi/views/mypage/InfoChk.do?memberno=1'">정보수정</button>
		</div>
	<div>
		<button onclick="location.href='/project_semi/views/mypage/reviewForm.do?memberno=1'">내 리뷰</button>
		<button onclick="location.href='picklistForm.do?memberno=${member.memberno }'">찜목록</button>
		<button onclick="location.href='seenmovieForm.do?memberno=${member.memberno }'">시청한 영화</button>
	</div>
		<h2>사용중인 OTT</h2>
		<img alt="" src="../../images/넷플릭스.jpg">
		<img alt=""src="../../images/디즈니플러스.jpg"> 
		<img alt="" src="../../images/티빙.jpg"> 
		<img alt=""	src="../../images/쿠팡플레이.jpg">
	</div>
	<div class="picklist">
		<h2 align="center">찜한영화</h2>
		<a href=""><img class="picklist_movie" src="../../images/공조2.jpg" width="120" height="120"></a>
		<a href=""><img class="picklist_movie" src="../../images/탑건.jpg" width="120" height="120"></a>
		<a href=""><img class="picklist_movie" src="../../images/공조2.jpg" width="120" height="120"></a>
		<a href=""><img class="picklist_movie" src="../../images/공조2.jpg" width="120" height="120"></a>
		<a href=""><img class="picklist_movie" src="../../images/공조2.jpg" width="120" height="120"></a>
		<a href=""><img class="picklist_movie" src="../../images/공조2.jpg" width="120" height="120"></a>
		<a href=""><img class="picklist_movie" src="../../images/공조2.jpg" width="120" height="120"></a>
		<a href=""><img class="picklist_movie" src="../../images/공조2.jpg" width="120" height="120"></a>
		<a href=""><img class="picklist_movie" src="../../images/공조2.jpg" width="120" height="120"></a>
		<br>페이징 작업
	</div>
</body>
</html>