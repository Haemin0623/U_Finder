<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${result > 0 }">
	찜 성공
</c:if>
<c:if test="${result == 0 }">
	찜 성공 실패
</c:if>
