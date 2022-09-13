<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="header">
		<ul>
			<li id="menu"><a href="menu.jsp">메뉴</a></li>

			<li>
				<form id="search" action="research.jsp">
					<input type="search" name="search">
					<input type="submit" value="검색">
				</form>
			</li>
			<li id="login"><a href="login.jsp">로그인</a></li>
			<li id="login"><a href="calendar.jsp">캘린더</a></li>
		</ul>
	</div>
</body>
</html>