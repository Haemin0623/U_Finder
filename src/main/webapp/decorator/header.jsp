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

<link rel="stylesheet" type="text/css" href="/project_semi/css/header.css">


<script src="/project_semi/js/jquery.js"></script>
<script src="/project_semi/js/bootstrap.min.js"></script>
</head>
<body>

	<form action="/project_semi/views/movie/searchResult.do">
		<table class="header">
			<tr>
				<td id="main"><a id="headerLink" href="/project_semi/views/home.do">
					<img id="ottIcon" alt="" src="/project_semi/images/logoIcon.png">
				</a></td>			
				<td id="main"><a id="headerLink" href="/project_semi/views/main.do">메인</a></td>
				
				<td><input id="search" type="text" name="searchWord"
					placeholder="보고싶은 작품명(또는 키워드)을 입력해주세요." required="required">
					<input type="submit" value="검색">
					</td>
					
				
				<td class="dropdown">
					<a class="btn btn-secondary dropdown-toggle" href="#" role="button"
						id="dropdownMenuLink" data-bs-toggle="dropdown"
						aria-expanded="false">
						<c:if test="${empty ottName }">
							OTT
						</c:if>
						<c:if test="${ottName == 'netflix' }">
							<img id="ottIcon" alt="" src="/project_semi/images/netflix.png">
						</c:if>
						<c:if test="${ottName == 'disney' }">
							<img id="ottIcon" alt="" src="/project_semi/images/disney.png">
						</c:if>
						<c:if test="${ottName == 'coupang' }">
							<img id="ottIcon" alt="" src="/project_semi/images/coupang.png">
						</c:if>
						<c:if test="${ottName == 'tving' }">
							<img id="ottIcon" alt="" src="/project_semi/images/tving.png">
						</c:if>
					</a>

					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item" href="/project_semi/views/movie/ottResult.do?ottName=netflix">넷플릭스</a></li>
						<li><a class="dropdown-item" href="/project_semi/views/movie/ottResult.do?ottName=disney">디즈니</a></li>
						<li><a class="dropdown-item" href="/project_semi/views/movie/ottResult.do?ottName=coupang">쿠팡</a></li>
						<li><a class="dropdown-item" href="/project_semi/views/movie/ottResult.do?ottName=tving">티빙</a></li>
					</ul>
				</td>

				<!-- <td id="login"><a href="">캘린더</a></td> -->
				
				<c:if test="${empty id }">
					<td id="login"><a id="headerLink" href="/project_semi/views/member/loginForm.do">로그인</a></td>	
				</c:if>
				<c:if test="${not empty id }">
					<c:if test="${id == 'master' }">
						<td><a id="headerLink" href="/project_semi/views/admin/admin_main.do">관리자</a></td>				
					</c:if>
					<td id="login"><a id="headerLink" href="/project_semi/views/mypage/mypageForm.do?id=${id}">마이페이지</a></td>			
					<td id="login"><a id="headerLink" href="/project_semi/views/member/logout.do">로그아웃</a></td>
				</c:if>
			</tr>
		</table>
	</form>

</body>
</html>