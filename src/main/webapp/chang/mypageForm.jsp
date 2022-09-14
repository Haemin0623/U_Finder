<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	
	#profile{
	transform: translate(36%, 80%);
	}
	#otticon{
	transform: translate(45%, -35%);
	}
	
	#otticon > img{
	width: 50px; height: 50px;
	}
	.picklist{
	border: 2px solid pink;
	width:45%; max-width:45%;
	height:600px; max-height:600px;
	transform: translate(55%, 0%);
	}
	#updateinfo{
	transform: translate(-7%, 600%);
	}
	.picklist_movie{
	width: 180px;
	height: 240px;
	object-fit : cover;
	}
     body{ background-image:url("../chang/텔레토비.jpg");  }
     h2{pause: 10px; height: 19px;}
</style>
</head>
<body>
<div id="profile">
	<a href="InfoChk.jsp"><img alt="" src="../chang/기본이미지.jpg" width="120" height="120"></a>
</div>
<div id="otticon">
	<div id="updateinfo"><button onclick="location.href='InfoChk.jsp'">정보수정</button></div>
	<h2>사용중인 OTT</h2>
	<img alt="" src="../chang/넷플릭스.jpg" >
	<img alt="" src="../chang/디즈니플러스.jpg" >
	<img alt="" src="../chang/왓챠.jpg" >
	<img alt="" src="../chang/티빙.jpg" >
	<img alt="" src="../chang/쿠팡플레이.jpg" >
</div>
	<div class="picklist">
	<h2 align="center">찜목록</h2>
		<a href="#"><img class="picklist_movie" src="공조2.jpg"></a>
		<a href="#"><img class="picklist_movie" src="탑건.jpg"></a>
		<a href="#"><img class="picklist_movie" src="공조2.jpg"></a>
		<a href="#"><img class="picklist_movie" src="공조2.jpg"></a>
		<a href="#"><img class="picklist_movie" src="공조2.jpg"></a>
		<a href="#"><img class="picklist_movie" src="공조2.jpg"></a>
		<a href="#"><img class="picklist_movie" src="공조2.jpg"></a>
		<a href="#"><img class="picklist_movie" src="공조2.jpg"></a>
		<br>페이징 작업
   </div>
</body>
</html>