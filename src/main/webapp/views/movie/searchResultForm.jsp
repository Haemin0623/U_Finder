<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	img {
		width: 200px;
		height: 240px;
	}
	div {
		border: 1px solid;
		float: left;
		widows: 33%;
	}

</style>
</head>
<body>
<div style="border: 0">
<h2 style="text-align: ">이부분에 검색한 작품명(키워드) 가져와서 표기</h2>
	<div>
		<table>
		<th>영화이름</th>
			<tr>
			<td><a href=""><img alt="" src="공조2.jpg"></a></td>
			</tr>
		</table>
	</div>
	<div>
		<table>
<!-- 		<th>영화이름</th> -->
		<tr>
			<td><a href=""><img alt="" src="탑건.jpg" style="display: block;">영화제목</a></td>
			
		</tr>
		</table>
	</div>
	이런식의 반복인데.. c:if문으로 데이터 있는 것만 보이게 해야하나..?
	+ 위에 헤더 넣고 위치 조정.
	
</div>
</body>
</html>