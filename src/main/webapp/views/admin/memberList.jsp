<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="admin_sessionChk.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="/project_semi/css/admin/admin.css">

</head>
<body>
	
	<table><caption>회원 목록</caption>
		<tr>
			<th>번호</th>
			<th>이메일</th>
			<th>비밀번호</th>
			<th>별명</th>
			<th>넷플릭스</th>
			<th>디즈니</th>
			<th>쿠팡</th>
			<th>티빙</th>
			<th>탈퇴여부</th>
			<th>작성리뷰보기</th>
		</tr>
		<c:if test="${empty list }">
			<tr>
				<td colspan="10">DB에 회원이 없다!</td>
			</tr>
		</c:if>
		<c:if test="${not empty list }">
			<c:forEach var="member" items="${list }">
				<tr>
					<td>${member.memberno }</td>
					<td>${member.id }</td>
					<td>${member.password }</td>
					<td>${member.nickname }</td>
					<td>${member.netflix }</td>
					<td>${member.disney }</td>
					<td>${member.coupang }</td>
					<td>${member.tving }</td>
					<td>${member.memberout }</td>
					<td><button onclick="location.href='/project_semi/views/admin/memberReviewList.do?memberno=${member.memberno }'">확인</button></td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
	<div align="center">
		<c:if test="${currentPage > PAGE_PER_BLOCK }">
			<button onclick="location.href='/project_semi/views/admin/memberList.do?pageNum=${startPage - 1 }'">이전</button>
		</c:if>
		<c:forEach var="i" begin="${startPage }" end="${endPage }">
			<c:if test="${i == currentPage }">
				<button style="background: red" onclick="location.href='/project_semi/views/admin/memberList.do?pageNum=${i}'">${i }</button>
			</c:if>
			<c:if test="${i != currentPage }">
				<button onclick="location.href='/project_semi/views/admin/memberList.do?pageNum=${i}'">${i }</button>
			</c:if>		
		</c:forEach>
		<c:if test="${endPage < totalPage }">
			<button onclick="location.href='/project_semi/views/admin/memberList.do?pageNum=${endPage + 1 }'">다음</button>
		</c:if>
	</div>
	<button onclick="location.href='/project_semi/views/admin/admin_main.do'">메인으로</button>

</body>
</html>