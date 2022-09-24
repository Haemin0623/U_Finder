<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="/project_semi/js_css/bootstrap.min.css" rel="stylesheet">

<style type="text/css">
	input {
	width: 85%;
}
</style>

<script src="/project_semi/js/jquery.js"></script>
<script src="/project_semi/js/bootstrap.min.js"></script>
</head>
<body>

<<<<<<< HEAD
	<form action="/project_semi/views/movie/searchResult.do">
		<table class="header">
			<tr>
				<td id="main"><a href="/project_semi/views/home.do">홈</a></td>			
				<td id="main"><a href="/project_semi/views/main.do">메인</a></td>
				
				<td><input id="search"  type="text" name="searchWord"
					placeholder="보고싶은 작품명(또는 키워드)을 입력해주세요." required="required"></td>
				<td><input id="search_btn" type="submit" value="검색"></td>		
					
				<td id="login"><a href="/project_semi/views/movie/ottResult.do?ottName=netflix">넷플릭스</a></td>
				<td id="login"><a href="/project_semi/views/movie/ottResult.do?ottName=disney">디즈니</a></td>
				<td id="login"><a href="/project_semi/views/movie/ottResult.do?ottName=coupang">쿠팡</a></td>
				<td id="login"><a href="/project_semi/views/movie/ottResult.do?ottName=tving">티빙</a></td>
				
				<td id="login"><a href="">캘린더</a></td>
				
				<c:if test="${empty id }">
					<td id="login"><a href="/project_semi/views/member/loginForm.do">로그인</a></td>	
				</c:if>
				<c:if test="${not empty id }">
					<c:if test="${id == 'master' }">
						<td><a href="/project_semi/views/admin/admin_main.do">관리자</a></td>				
					</c:if>
					<td id="login"><a href="/project_semi/views/mypage/mypageForm.do?id=${id}">마이페이지</a></td>			
					<td id="login"><a href="/project_semi/views/member/logout.do">로그아웃</a></td>
				</c:if>
			</tr>
		</table>
	</form>
=======
	<div class="header">
		<ul>
			<li id="main"><a href="/project_semi/views/main.do">메인</a></li>
			<li id="main"><a href="/project_semi/views/home.do">홈</a></li>
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
				<li id="login"><a href="/project_semi/views/member/loginForm.do">로그인</a></li>			
			</c:if>
			<c:if test="${not empty id }">
				<li id="login"><a href="/project_semi/views/member/logout.do">로그아웃</a></li>			
				<li id="login"><a href="/project_semi/views/mypage/mypageForm.do?id=${id}">마이페이지</a></li>			
			</c:if>
			<li id="login">
				<a href="">캘린더</a></li>
			
			<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						OTT <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li id="login"><a href="/project_semi/views/movie/ottResult.do?ottName=tving">티빙</a></li>
						<li id="login"><a href="/project_semi/views/movie/ottResult.do?ottName=coupang">쿠팡</a></li>
						<li id="login"><a href="/project_semi/views/movie/ottResult.do?ottName=disney">디즈니</a></li>
						<li id="login"><a href="/project_semi/views/movie/ottResult.do?ottName=netflix">넷플릭스</a></li>
					</ul> 
			</li> 
		</ul>
	</div>
>>>>>>> d65227b (마이페이지-내리뷰 -> 영화정보 리뷰 표시되게 수정)
	
</body>
</html>