<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/project_semi/views/movie/reviewUpdate.do" method="post">
	<input type="hidden" name="reviewno" value = "${review.reviewno }">
	<input type="hidden" name="movieno" value = "${review.movieno }">
	<input type="hidden" name="memberno" value = "${review.memberno }">
	<h4>리뷰수정</h4>                   
	<table>
	<tr><th><textarea name="content" >${review.content }</textarea></th></tr>
	<tr><th><input type="range" name="star" min="0" max="5" step="1" value="${review.movielike }" required="required"></th></tr>
	<tr><th><input type="submit" value="수정"></th></tr>
	</table>
</form>
</body>
</html>