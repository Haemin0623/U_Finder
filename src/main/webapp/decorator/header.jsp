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
				<td id="home"><a id="headerLink" href="/project_semi/views/home.do">
					<img id="ottIcon" alt="" src="/project_semi/images/logoIcon.png">
				</a></td>			
				<td id="main"><a id="headerLink" href="/project_semi/views/main.do">
					<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-house-fill" viewBox="0 0 16 16">
					<path fill-rule="evenodd" d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6zm5-.793V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
					<path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
					</svg>
				</a></td>
				<td class="dropdown">
					<a class="btn btn-secondary dropdown-toggle" href="#" role="button"
						id="dropdownMenuLink" data-bs-toggle="dropdown"
						aria-expanded="false">
						<c:if test="${empty ottName }">
							<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-tv-fill" viewBox="0 0 16 16">
							<path d="M2.5 13.5A.5.5 0 0 1 3 13h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zM2 2h12s2 0 2 2v6s0 2-2 2H2s-2 0-2-2V4s0-2 2-2z"/>
							</svg>
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
				<td id="searchIcon">
					<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
					<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
					</svg>
				</td>
				<td id="searchBox">			
					<input id="search" type="text" name="searchWord"
					placeholder="보고싶은 작품명(또는 키워드)을 입력해주세요." required="required"></td>

				<!-- <td id="login"><a href="">캘린더</a></td> -->
				
				<c:if test="${empty id }">
					<td id="login"><a href="/project_semi/views/member/loginForm.do">
						<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-box-arrow-in-right" viewBox="0 0 16 16">
  						<path fill-rule="evenodd" d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z"/>
 						<path fill-rule="evenodd" d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
						</svg>
					</a></td>	
				</c:if>
				<c:if test="${not empty id }">
					<c:if test="${id == 'master' }">
						<td id="admin"><a href="/project_semi/views/admin/admin_main.do">
							<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-gear-fill" viewBox="0 0 16 16">
							<path d="M9.405 1.05c-.413-1.4-2.397-1.4-2.81 0l-.1.34a1.464 1.464 0 0 1-2.105.872l-.31-.17c-1.283-.698-2.686.705-1.987 1.987l.169.311c.446.82.023 1.841-.872 2.105l-.34.1c-1.4.413-1.4 2.397 0 2.81l.34.1a1.464 1.464 0 0 1 .872 2.105l-.17.31c-.698 1.283.705 2.686 1.987 1.987l.311-.169a1.464 1.464 0 0 1 2.105.872l.1.34c.413 1.4 2.397 1.4 2.81 0l.1-.34a1.464 1.464 0 0 1 2.105-.872l.31.17c1.283.698 2.686-.705 1.987-1.987l-.169-.311a1.464 1.464 0 0 1 .872-2.105l.34-.1c1.4-.413 1.4-2.397 0-2.81l-.34-.1a1.464 1.464 0 0 1-.872-2.105l.17-.31c.698-1.283-.705-2.686-1.987-1.987l-.311.169a1.464 1.464 0 0 1-2.105-.872l-.1-.34zM8 10.93a2.929 2.929 0 1 1 0-5.86 2.929 2.929 0 0 1 0 5.858z"/>
							</svg>
						</a></td>				
					</c:if>
					<td id="login"><a href="/project_semi/views/mypage/mypageForm.do?id=${id}">
						<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
							fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
  						<path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
					</svg></a></td>
					<td id="login"><a href="/project_semi/views/member/logout.do">
						<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-box-arrow-right" viewBox="0 0 16 16">
						<path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z"/>
						<path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
						</svg>
					</a></td>
				</c:if>
			</tr>
		</table>
	</form>

</body>
</html>