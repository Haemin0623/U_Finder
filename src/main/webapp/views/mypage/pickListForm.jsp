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
.bi.bi-trash3-fill{
	position: relative;
	top: 115px;
	right: 38px;
}
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
							<div>
								<a href="/project_semi/views/movie/movieInfo.do?movieno=${pickMovie.movieno }">
								<img id="mv" alt="" src="/project_semi/posterUpload/${pickMovie.poster }" class="img-rounded"></a>
								<a href="/project_semi/views/mypage/pickDeleteForm.do?movieno=${pickMovie.movieno }&id=${id }">
									<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-trash3-fill" viewBox="0 0 16 16">
									<path d="M11 1.5v1h3.5a.5.5 0 0 1 0 1h-.538l-.853 10.66A2 2 0 0 1 11.115 16h-6.23a2 2 0 0 1-1.994-1.84L2.038 3.5H1.5a.5.5 0 0 1 0-1H5v-1A1.5 1.5 0 0 1 6.5 0h3A1.5 1.5 0 0 1 11 1.5Zm-5 0v1h4v-1a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5ZM4.5 5.029l.5 8.5a.5.5 0 1 0 .998-.06l-.5-8.5a.5.5 0 1 0-.998.06Zm6.53-.528a.5.5 0 0 0-.528.47l-.5 8.5a.5.5 0 0 0 .998.058l.5-8.5a.5.5 0 0 0-.47-.528ZM8 4.5a.5.5 0 0 0-.5.5v8.5a.5.5 0 0 0 1 0V5a.5.5 0 0 0-.5-.5Z"/>
									</svg>
								</a>
							</div>
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