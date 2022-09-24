<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="deco" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 페이지의 헤드부분을 가져옴, (각 페이지의 css파일, 스크립트코드)  -->
<deco:head></deco:head>

<link rel="stylesheet" type="text/css" href="/project_semi/css/common.css">

</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<deco:body></deco:body>

</body>
</html>