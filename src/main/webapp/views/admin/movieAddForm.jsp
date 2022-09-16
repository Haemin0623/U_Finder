<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="/project_semi/css/admin/admin.css">

</head>
<body>
	<form action="/project_semi/views/admin/movieAddAction.do" method="post" enctype="multipart/form-data">
		<table><caption>*은 필수</caption>
			<tr>
				<th>제목*</th>
				<td><input type="text" name="moviename" required="required" autofocus="autofocus"></td>
			</tr>
			<tr>
				<th>줄거리</th>
				<td><textarea rows="5" cols="40" name="story" ></textarea> </td>
			</tr>
			<tr>
				<th>감독</th>
				<td><input type="text" name="director"></td>
			</tr>
			<tr>
				<th>상영시간(분)</th>
				<td><input type="number" name="playtime"></td>
			</tr>
			<tr>
				<th>OTT</th>
				<td>
					넷플릭스<input type="checkbox" name="netflix" value="Y">
					디즈니+<input type="checkbox" name="disney" value="Y">
					쿠팡플레이<input type="checkbox" name="coupang" value="Y">
					티빙<input type="checkbox" name="tving" value="Y">			
				</td>
			</tr>
			<tr>
				<th>장르</th>
				<td><input type="text" name="genre"></td>			
			</tr>
			<tr>
				<th>포스터</th>
				<td><input type="file" name="poster"></td>			
			</tr>
			<tr>
				<th>트레일러주소</th>
				<td><input type="text" name="trailer"></td>			
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="등록"></th>
			</tr>
		</table>
	</form>



</body>
</html>