<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="id" value="${sessionScope.id }"></c:set>

<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript">
	if(${empty id}) {
		$(function() {
			alert("로그인 후 접속하세요")
// 			loginForm properties만든 후 확장자 .do로 수정해야함
			location.href="/project_semi/views/member/loginForm.jsp"
		});
	}
</script>