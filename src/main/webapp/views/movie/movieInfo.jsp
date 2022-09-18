<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
	<div>
		<table class="movieInfoForm">
			<tr>
				<th class="th1" rowspan="3" ><img src="/project_semi/posterUpload/${mvInfo.poster}" ></th>
				<th>${mvInfo.moviename}</th></tr>
			<tr>
				<th>감독 : ${mvInfo.director } , 배우 : 쿼리 작성 후 연결</th></tr>
			<tr>
				<th>NETFLIX: ${mvInfo.netflix }, DISNEY : ${mvInfo.disney }, COUPANG : ${mvInfo.coupang }, TVING : ${mvInfo.tving }</th></tr>
		</table>
	</div>
	<div>
		<table class="movieInfoForm">
			<tr><th>짧은댓글리뷰자리</th>
				<th>비슷한 컨텐츠 자리</th>
			</tr>
		</table>
	</div>
</div>
</body>
</html>