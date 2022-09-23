<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../member_sessionChk.jsp"%>
</head>
<body>
<c:if test="${not empty id}">
			<fieldset><legend>찜목록</legend>
			
				<div class="main_hot">
					<ul>
						<c:forEach var="pickMovie" items="${list }" >
							<li>
								<a href="/project_semi/views/movie/movieInfo.do?movieno=${pickMovie.movieno }">
								<img id="mv" alt="" src="/project_semi/posterUpload/${pickMovie.poster }"></a>
							</li>
								<button onclick="location.href='/project_semi/views/mypage/pickDeleteForm.do?movieno=${pickMovie.movieno }&id=${id }'">찜취소</button>
						</c:forEach>
					</ul>
				</div>
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
		<button onclick="location.href='/project_semi/views/mypage/mypageForm.do?id=${id}'">취소</button>
</body>
</html>