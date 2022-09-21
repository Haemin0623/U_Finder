<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="deco" uri="http://www.opensymphony.com/sitemesh/decorator" %>

<%@ include file="/views/admin/admin_sessionChk.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<deco:head></deco:head>
<link rel="stylesheet" type="text/css" href="/project_semi/css/admin/admin.css">

<script type="text/javascript" src="/project_semi/js/jquery.js"></script>

</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<deco:body></deco:body>

</body>
</html>