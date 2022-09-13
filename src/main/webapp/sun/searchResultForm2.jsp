<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	  #searchResult > li {
        display: inline-block;
        position: relative;
        top: 10px;
        left: 260px;
      }
      #searchResult > li > a {
        display:block; position:relative; padding-bottom:19px;
        margin: 50px;
      }
      #searchResult > li > a > img {
        width:200px; height:240px;
      }
      #searchResult > li > a > span {
        position:absolute; bottom:0; left:50%; color:#666; line-height:1.462em; white-space:nowrap; transform:translate(-50%, 0)
      }

</style>
</head>
<body>
<div style="border: 0">
<h2 style="text-align: ">이부분에 검색한 작품명(키워드) 가져와서 표기</h2>
<ul id="searchResult">
         <li><a href="#"><img src="공조2.jpg"><span>영화제목</span></a></li>
         <li><a href="#"><img src="탑건.jpg"><span>영화제목</span></a></li>
         <li><a href="#"><img src="로고.png"><span>영화제목</span></a></li>
       </ul>
	
</div>
</body>
</html>