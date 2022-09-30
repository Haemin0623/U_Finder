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
	#icon {
		background: none;
		border: none;
		margin-right: 10px;
		
	}
</style>
<%@ include file="../member_sessionChk.jsp" %>
</head>
<body>
<div id="up">
	<span class="profile">
		<c:if test="${member.profile == 'default' }">
			<svg xmlns="http://www.w3.org/2000/svg" width="160" height="210" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
				<path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
			</svg>
		</c:if>
		<c:if test="${member.profile != 'default' }">
			<a href="/project_semi/views/mypage/InfoChk.do?id${id }">
			<img alt="" src="/project_semi/posterUpload/${member.profile }"  class="img-rounded"></a>
		</c:if>
		<span id="updateinfo">
			<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-pencil-fill" viewBox="0 0 16 16">
			<path d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z"/>
			</svg>
			<button id="icon" onclick="location.href='/project_semi/views/mypage/InfoChk.do?id=${id}'">정보수정</button>
		
			<svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="currentColor" class="bi bi-list-stars" viewBox="0 0 16 16">
	  		<path fill-rule="evenodd" d="M5 11.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5z"/>
	  		<path d="M2.242 2.194a.27.27 0 0 1 .516 0l.162.53c.035.115.14.194.258.194h.551c.259 0 .37.333.164.493l-.468.363a.277.277 0 0 0-.094.3l.173.569c.078.256-.213.462-.423.3l-.417-.324a.267.267 0 0 0-.328 0l-.417.323c-.21.163-.5-.043-.423-.299l.173-.57a.277.277 0 0 0-.094-.299l-.468-.363c-.206-.16-.095-.493.164-.493h.55a.271.271 0 0 0 .259-.194l.162-.53zm0 4a.27.27 0 0 1 .516 0l.162.53c.035.115.14.194.258.194h.551c.259 0 .37.333.164.493l-.468.363a.277.277 0 0 0-.094.3l.173.569c.078.255-.213.462-.423.3l-.417-.324a.267.267 0 0 0-.328 0l-.417.323c-.21.163-.5-.043-.423-.299l.173-.57a.277.277 0 0 0-.094-.299l-.468-.363c-.206-.16-.095-.493.164-.493h.55a.271.271 0 0 0 .259-.194l.162-.53zm0 4a.27.27 0 0 1 .516 0l.162.53c.035.115.14.194.258.194h.551c.259 0 .37.333.164.493l-.468.363a.277.277 0 0 0-.094.3l.173.569c.078.255-.213.462-.423.3l-.417-.324a.267.267 0 0 0-.328 0l-.417.323c-.21.163-.5-.043-.423-.299l.173-.57a.277.277 0 0 0-.094-.299l-.468-.363c-.206-.16-.095-.493.164-.493h.55a.271.271 0 0 0 .259-.194l.162-.53z"/>
			</svg>
			<button id="icon" onclick="location.href='/project_semi/views/mypage/reviewForm.do?memberno=${member.memberno}'">내 리뷰</button>
			
			<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-heart-fill" viewBox="0 0 16 16">
			<path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
			</svg>
			<button id="icon" onclick="location.href='/project_semi/views/mypage/pickListForm.do?id=${id}'">찜목록</button>
		</span>
<%-- 		<button onclick="location.href='seenmovieForm.do?id=${id}'">시청한 영화</button> --%>
	</span>
	<div class="otticon">
		<h2 style="font-size: 24px;">사용중인 OTT</h2>
			<c:if test="${member.netflix == 'Y' }">
				<img alt="" src="../../images/netflix.png">
			</c:if>
			<c:if test="${member.disney == 'Y' }">
				<img alt=""src="../../images/disney.png"> 
			</c:if>
			<c:if test="${member.coupang == 'Y' }">
				<img alt="" src="../../images/tving.png"> 
			</c:if>
			<c:if test="${member.tving == 'Y' }">	
				<img alt=""	src="../../images/coupang.png">
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
				<img id="mv" src="/project_semi/posterUpload/${pick.poster }" class="img-rounded"></a>
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