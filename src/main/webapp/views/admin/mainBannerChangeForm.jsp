<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="/project_semi/css/admin/admin.css">

<style type="text/css">
	img {
		width: 750px;
		height: 300px;
	}
</style>


</head>
<body>

	<button onclick="location.href='/project_semi/views/admin/admin_main.do'">메인으로</button>
	<table>
		<tr>
			<th>배너번호</th>
			<th>이미지</th>
			<th>수정</th>
		</tr>
		<tr>
			<td>1</td>
			<td><img alt="" src="/project_semi/bannerImage/banner1.jpg"></td>
			<td>
				<form action="/project_semi/views/admin/mainBannerChangeAction.do?realBannerName=banner1"  method="post" enctype="multipart/form-data">
					<input type="file" name="banner">
					<input type="submit">
				</form>
			</td>	
		</tr>
		<tr>
			<td>2</td>
			<td><img alt="" src="/project_semi/bannerImage/banner2.jpg"></td>
			<td>
				<form action="/project_semi/views/admin/mainBannerChangeAction.do?realBannerName=banner2"  method="post" enctype="multipart/form-data">
					<input type="file" name="banner">
					<input type="submit">
				</form>
			</td>	
		</tr>
		<tr>
			<td>3</td>
			<td><img alt="" src="/project_semi/bannerImage/banner3.jpg"></td>
			<td>
				<form action="/project_semi/views/admin/mainBannerChangeAction.do?realBannerName=banner3"  method="post" enctype="multipart/form-data">
					<input type="file" name="banner">
					<input type="submit">
				</form>
			</td>	
		</tr>
		<tr>
			<td>4</td>
			<td><img alt="" src="/project_semi/bannerImage/banner4.jpg"></td>
			<td>
				<form action="/project_semi/views/admin/mainBannerChangeAction.do?realBannerName=banner4"  method="post" enctype="multipart/form-data">
					<input type="file" name="banner">
					<input type="submit">
				</form>
			</td>	
		</tr>
		<tr>
			<td>5</td>
			<td><img alt="" src="/project_semi/bannerImage/banner5.jpg"></td>
			<td>
				<form action="/project_semi/views/admin/mainBannerChangeAction.do?realBannerName=banner5"  method="post" enctype="multipart/form-data">
					<input type="file" name="banner">
					<input type="submit">
				</form>
			</td>	
		</tr>
	</table>
	

</body>
</html>