<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#up {width: 50%; margin-left: 37%;  margin-top: 2%; margin-bottom: 3%}
	.profile img {width:160px; height:210px; margin: 2px;}
	.picklist { border:1px solid gray; margin-left:15%; text-align: center; width: 1200px; ;height: 350px;
	}
	.otticon > img{height:60px;width:60px; left:20%} 
	.otticon { position: absolute; left:48%; top:13%;  }
	#updateinfo {position: absolute; top:28%; left: 48%;}
	#paging{width:50% position: absolute; left:49%; top:80%; text-align: center; }

</style>
<%@ include file="../member_sessionChk.jsp" %>
</head>
<body>
<div id="up">
	<span class="profile">
		<c:if test="${empty member.profile }">
			<img alt="" src="/project_semi/images/기본이미지.jpg" >
		</c:if>
		<c:if test="${not empty member.profile }">
			<a href="/project_semi/views/mypage/InfoChk.do?id${id }">
			<img alt="" src="/project_semi/posterUpload/${member.profile }"></a>
		</c:if>
		<span id="updateinfo">
			<button style="color: black;" onclick="location.href='/project_semi/views/mypage/InfoChk.do?id=${id}'">정보수정</button>
		<button style="color: black;" onclick="location.href='/project_semi/views/mypage/reviewForm.do?memberno=${member.memberno}'">내 리뷰</button>
		<button style="color: black;" onclick="location.href='/project_semi/views/mypage/pickListForm.do?id=${id}'">찜목록</button>
		</span>
<%-- 		<button onclick="location.href='seenmovieForm.do?id=${id}'">시청한 영화</button> --%>
	</span>
	<div class="otticon">
		<h2 style="font-size: 24px;">사용중인 OTT</h2>
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
</div>	
	<div class="picklist">
		<h2 id=moviename>찜한영화</h2>
		<c:if test="${empty list[0].pickno }">
			찜한 영화가 없습니다.
		</c:if>
		<c:forEach var="pick" items="${list }">
				<a href="/project_semi/views/movie/movieInfo.do?movieno=${pick.movieno }">
				<img id="mv" src="/project_semi/posterUpload/${pick.poster }"></a>
		</c:forEach>
	</div>
	<div id="paging">
		<c:if test="${currentPage > PAGE_PER_BLOCK }" >
			<button onclick="location.href='/project_semi/views/mypage/mypageForm.do?id=${id}&pageNum=${startPage - 1 }'">이전</button>
		</c:if>
			<c:forEach var="i" begin="${startPage }" end="${endPage }">
				<c:if test="${i == currentPage }">
					<button style="background: red" onclick="location.href='/project_semi/views/mypage/mypageForm.do?id=${id}&pageNum=${i}'">${i }</button>
				</c:if>
				<c:if test="${i != currentPage }">
					<button onclick="location.href='/project_semi/views/mypage/mypageForm.do?id=${id}&pageNum=${i}'">${i }</button>
				</c:if>		
			</c:forEach>
		<c:if test="${endPage < totalPage }">
			<button onclick="location.href='/project_semi/views/mypage/mypageForm.do?id=${id}&pageNum=${endPage + 1 }'">다음</button>
		</c:if>
	</div>
</body>
</html>