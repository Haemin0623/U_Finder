<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="admin_sessionChk.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="/project_semi/css/admin/admin.css">

</head>
<body>

	<form action="/project_semi/views/admin/tagUpdateAction.do">
		<input type="hidden" name="tagno" value=${tagno }>
		<input type="hidden" name="movieno" value=${movieno }>
		<table><caption>${movieno }번 영화의 태그</caption>
			<tr>
				<th>${tagno }번 태그</th>
				<td><input type="text" name="tag" value="${tag }"></td>
			</tr>
			<tr>
				<th colspan="2"><input type="submit"></th>
			</tr>
		</table>
	</form>

</body>
</html>