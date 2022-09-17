<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="id" value='${sessionScope.id }'></c:set>

<script type="text/javascript" src="../../js/jquery.js"></script>
<script type="text/javascript">
	if(${empty id || id != 'master'}) {
		$(function() {
			alert("관리자 로그인을 한 후 접속하세요")
			location.href="/project_semi/views/admin/admin_loginForm.do"
		});
	}
</script>