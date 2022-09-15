<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#profile {
	transform: translate(163%, 80%);
	max-width: 25%;
	max-height: 10%;
}

#otticon {
	transform: translate(200%, -14%);
	max-width: 25%;
	max-height: 10%;
}

#otticon>img {
	width: 35px;
	height: 35px;
	max-width: 25%;
	max-height: 10%;
	margin: auto 0;
}

#otticon>h2 {
	font-size: 12pt;
	height: 19px;
}

.picklist {
	border: 2px solid pink;
	width: 44.1%;
	max-width: 44.1%;
	height: 585px;
	max-height: 585px;
	transform: translate(63%, 10%);
}

#updateinfo {
	transform: translate(-150%, 520%);
	width: 20%;
	max-width: 20%;
	height: 20%;
	height: 20%;
}

.picklist_movie {
	width: 180px;
	height: 240px;
	/* 	object-fit : cover; */
}
/*     body{ background-image:url("../chang/images/텔레토비.jpg");  }  */
/*      h2{font-size:12pt; height: 19px;} */
</style>
</head>
<body>
	<div id="profile">
		<a href="InfoChk.jsp"><img alt="" src="../chang/images/기본이미지.jpg"
			width="120" height="120"></a>
	</div>
	<div id="otticon">
		<div id="updateinfo">
			<button onclick="location.href='InfoChk.jsp'">정보수정</button>
		</div>
		<h2>사용중인 OTT</h2>
		<img alt="" src="../chang/images/넷플릭스.jpg"> <img alt=""
			src="../chang/images/디즈니플러스.jpg"> <img alt=""
			src="../chang/images/티빙.jpg"> <img alt=""
			src="../chang/images/쿠팡플레이.jpg">
	</div>
	<div class="picklist">
		<h2 align="center">찜목록</h2>
		<a href=""><img class="picklist_movie" src="images/공조2.jpg"></a>
		<a href=""><img class="picklist_movie" src="images/탑건.jpg"></a>
		<a href=""><img class="picklist_movie" src="images/공조2.jpg"></a>
		<a href=""><img class="picklist_movie" src="images/공조2.jpg"></a>
		<a href=""><img class="picklist_movie" src="images/공조2.jpg"></a>
		<a href=""><img class="picklist_movie" src="images/공조2.jpg"></a>
		<a href=""><img class="picklist_movie" src="images/공조2.jpg"></a>
		<a href=""><img class="picklist_movie" src="images/공조2.jpg"></a>
		<br>페이징 작업
	</div>
</body>
</html>