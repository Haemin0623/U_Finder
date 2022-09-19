<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="header">
		<ul>
			<li id="main"><a href="/project_semi/views/main.do">메인</a></li>
				<li>
					<div class="search_box">
						<form id="search" action="/project_semi/views/movie/searchResult.do">
							<input type="text" name="searchWord"
								placeholder="보고싶은 작품명(또는 키워드)을 입력해주세요." required="required">
							<input id="search_btn" type="submit" value="검색">
						</form>
					</div>
				</li>
			<c:if test="${empty id }">
				<li id="login"><a href="login.jsp">로그인</a></li>			
			</c:if>
			<c:if test="${not empty id }">
				<li id="login"><a href="login.jsp">마이페이지</a></li>			
			</c:if>
			<li id="login"><a href="calendar.jsp">캘린더</a></li>
		</ul>
	</div>
	
	<div>
		<div>
	</div></div>
</body>
</html>