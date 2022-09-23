<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html><body>
<c:if test="${result > 0 }">
	해제
</c:if>
<c:if test="${result == 0 }">
	실패
</c:if>
</body></html>