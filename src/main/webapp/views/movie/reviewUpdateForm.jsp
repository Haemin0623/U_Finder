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
	<input type="hidden" name="reviewno" value = "${rv.reviewno }">
	<input type="hidden" name="movieno" value = "${rv.movieno }">
	<input type="hidden" name="memberno" value = "${rv.memberno }">
	<h4>리뷰수정</h4>                   
	<table>
	<tr><th><textarea name="content" >${rv.content }</textarea></th></tr>
	<tr><th><input type="range" name="star" min="0" max="5" step="1" value="${rv.movielike }" required="required"></th></tr>
	<tr><th><input type="submit" value="수정"></th></tr>
	</table>
</form>
</body>
</html>