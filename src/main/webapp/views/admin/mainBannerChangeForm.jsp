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
		height: 200px;
	}
</style>


</head>
<body>


	<img alt="" src="/project_semi/bannerImage/banner1.jpg">
	<form action="/project_semi/views/admin/mainBannerChangeAction.do?realBannerName=banner1"  method="post" enctype="multipart/form-data">
		<input type="file" name="banner">
		<input type="submit">
	</form>
	
	<img alt="" src="/project_semi/bannerImage/banner2.jpg">
	<form action="/project_semi/views/admin/mainBannerChangeAction.do?realBannerName=banner2"  method="post" enctype="multipart/form-data">
		<input type="file" name="banner">
		<input type="submit">
	</form>
	
	<img alt="" src="/project_semi/bannerImage/banner3.jpg">
	<form action="/project_semi/views/admin/mainBannerChangeAction.do?realBannerName=banner3"  method="post" enctype="multipart/form-data">
		<input type="file" name="banner">
		<input type="submit">
	</form>
	
	<img alt="" src="/project_semi/bannerImage/banner4.jpg">
	<form action="/project_semi/views/admin/mainBannerChangeAction.do?realBannerName=banner4"  method="post" enctype="multipart/form-data">
		<input type="file" name="banner">
		<input type="submit">
	</form>
	
	<img alt="" src="/project_semi/bannerImage/banner5.jpg">
	<form action="/project_semi/views/admin/mainBannerChangeAction.do?realBannerName=banner5"  method="post" enctype="multipart/form-data">
		<input type="file" name="banner">
		<input type="submit">
	</form>
	
	<button onclick="location.href='/project_semi/views/admin/admin_main.do'">메인으로</button>

</body>
</html>