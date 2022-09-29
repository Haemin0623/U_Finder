<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="admin_sessionChk.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="/project_semi/css/admin/admin.css">

<style type="text/css">
table {
	position: absolute;
	left: 25%;
	width: 50%;
}
</style>

</head>
<body>
	<table><caption>${id }님 하이!!!</caption>
		<tr>
			<th><button onclick="location.href='/project_semi/views/admin/movieList.do'">영화목록</button></th>
		</tr>
		<tr>
			<th><button onclick="location.href='/project_semi/views/admin/movieAddForm.do'">영화등록</button></th>
		</tr>
		<tr>
			<th><button onclick="location.href='/project_semi/views/admin/memberList.do'">회원목록</button></th>
		</tr>
		<tr>
			<th><button onclick="location.href='/project_semi/views/admin/mainBannerChangeForm.do'">메인배너교체</button></th>
		</tr>
		<tr>
			<th><button onclick="location.href='/project_semi/views/admin/admin_logout.do'">로그아웃</button></th>
		</tr>
		<tr>
			<th><button onclick="location.href='/project_semi/views/home.do'">사이트</button></th>
		</tr>
	</table>
	

</body>
</html>