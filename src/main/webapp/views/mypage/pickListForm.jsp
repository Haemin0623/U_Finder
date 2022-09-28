<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#line{display: inline-block; width: 1250px; height: 800 ; margin-left: 13.6%}
li{width:240px; text-align: center; float: left; display: inline-block;}
#button{align: center; color: black; margin-left: 48.6%}
#title{color:white; margin-left: 10%}
</style>
<%@include file="../member_sessionChk.jsp"%>
</head>
<body>
<c:if test="${not empty id}">
	<fieldset><legend id="title">찜목록</legend>
		<span id="line">
			<c:if test="${empty list[0].pickno }">
				찜한 영화가 없습니다.
			</c:if>
			<ul id="picklist">
				<c:forEach var="pickMovie" items="${list }" >
						<li>
							<a href="/project_semi/views/movie/movieInfo.do?movieno=${pickMovie.movieno }">
							<img id="mv" alt="" src="/project_semi/posterUpload/${pickMovie.poster }"></a>
							<button style="color:black;" onclick="location.href='/project_semi/views/mypage/pickDeleteForm.do?movieno=${pickMovie.movieno }&id=${id }'">찜취소</button>
						</li>
				</c:forEach>
			</ul>
		</span>
	</fieldset>
</c:if>
	<div align="center">
		<c:if test="${currentPage > PAGE_PER_BLOCK }" >
			<button onclick="location.href='/project_semi/views/mypage/pickListForm.do?id=${id}&pageNum=${startPage - 1 }'">이전</button>
		</c:if>
		<c:forEach var="i" begin="${startPage }" end="${endPage }">
			<c:if test="${i == currentPage }">
				<button style="background: red" onclick="location.href='/project_semi/views/mypage/pickListForm.do?id=${id}&pageNum=${i}'">${i }</button>
			</c:if>
			<c:if test="${i != currentPage }">
				<button onclick="location.href='/project_semi/views/mypage/pickListForm.do?id=${id}&pageNum=${i}'">${i }</button>
			</c:if>		
		</c:forEach>
		<c:if test="${endPage < totalPage }">
			<button onclick="location.href='/project_semi/views/mypage/pickListForm?id=${id}&pageNum=${endPage + 1 }'">다음</button>
		</c:if>
	</div>
	<button id="button" onclick="location.href='/project_semi/views/mypage/mypageForm.do?id=${id}'">취소</button>
</body>
</html>