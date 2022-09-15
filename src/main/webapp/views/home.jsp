<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="black">
<div class="top">
	<ul>
		<li id="main"><a href="/project_semi/views/main.jsp">메인</a></li>
		<li id="login"><a href="/project_semi/views/member/loginForm.jsp">로그인</a></li>
		<li id="join"><a href="/project_semi/views/member/joinForm.jsp">회원가입</a></li>
	</ul>
</div>
<div class="home">
	<form action="/project_semi/views/movie/searchResult.do" method="post">
		<table>
			<tr>
				<th colspan="2"><img src="/project_semi/images/로고.png"></th>
			</tr>
			<tr>
				<th class="homeSearch"><input type="text" name="searchWord" placeholder="보고싶은 작품명(또는 키워드)을 입력해주세요." 
											required="required" ></th>
				<th><input type="submit" value="검색"></th>
			</tr>
		</table>
	</form>
</div>
</body>
</html>