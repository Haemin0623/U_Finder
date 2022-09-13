<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#homebut1 {float: left;}
	#homebut2 {float: right;}
	#homeForm {position: absolute;
				top: 30%;
				left: 53%;
				transform: translate(-50%, -50%);
	}
	#logo {text-align: center;}
	#homeSearch {
		width: 100%;
		border: 1px solid #bbb;
		border-radius: 8px;
		padding: 10px 12px;
		font-size: 14px;
	}
	#searchIcon {
		display: flex;
		justify-content: space-between;
		position: absolute;
		width: 17px;
		top: 300px;
		right: 12px;
		margin: 0;
	}
</style>
</head>
<body>
<div id="homebut1">
	<button onclick="">메인</button>
</div>
<div id="homebut2">
	<button onclick="">로그인/회원가입</button>
</div>
<div>
	<div id="homeForm">
		<img id="logo" src="로고.png" width="100%" height="50%">
		<form action="searchResultForm" method="post">
			<input id="homeSearch" type="text" name="title" placeholder="보고싶은 작품명(또는 키워드)을 입력해주세요." 
					required="required" style="width: 85%;float: left; text-align: center">
			<input type="submit" value="검색" style="float: right; margin-top: 5px" >
		</form>
	</div>
</div>
</body>
</html>