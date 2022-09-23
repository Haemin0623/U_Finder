<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${result > 0 }">
	찜 해제 완료
</c:if>
<c:if test="${result == 0 }">
	찜 해제 실패
</c:if>
