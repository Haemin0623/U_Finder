<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="/project_semi/css/home.css">

</head>
<body bgcolor="black">

<div class="top">
	<ul>
		<li class="main"><a href="/project_semi/views/main.do">메인</a></li>		
		<c:if test="${empty id }">
			<li class="left"><a href="/project_semi/views/member/loginForm.do">로그인</a></li>
			<li class="left"><a href="/project_semi/views/member/joinForm.do">회원가입</a></li>
		</c:if>
		<c:if test="${not empty id }">
			<li class="left"><a href="/project_semi/views/mypage/mypageForm.do?id=${id}">마이페이지</a></li>		
			<li class="left"><a href="/project_semi/views/member/logout.do">로그아웃</a></li>
		</c:if>
	</ul>
</div>

<div class="home">
	<form action="/project_semi/views/movie/searchResult.do" method="post">
		<table>
			<tr>
				<th colspan="2"><img src="/project_semi/images/로고.png"></th>
			</tr>
			<tr id="search">
				<th class="homeSearch"><input type="text" name="searchWord" placeholder="보고싶은 작품명(또는 키워드)을 입력해주세요." 
											required="required" ></th>
				<th><input class="btn" type="submit" value="검색"></th>
			</tr>
		</table>
	</form>
</div>
</body>
</html>