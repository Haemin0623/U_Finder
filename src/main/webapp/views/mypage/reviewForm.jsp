<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../member_sessionChk.jsp"%>
<style type="text/css">

</style>

<script type="text/javascript">
	function delchk(reviewno) {
		if (confirm("정말 삭제하시겠습니까??") == true){
			location=href="/project_semi/views/mypage/reviewDeleteResult.do?reviewno="+reviewno
			// 			DAO에서 리턴받아서 삭제 완료 시
			
			alert("삭제 완료");
		}else 
			return false
	}
</script>
</head>
<body>

	<div id="title">
		<h2 align="center">리뷰 목록</h2>
	</div>
<!-- if문으로 DB에서 회원정보를 확인하여 리뷰내역 있으면 div review노출 -->
	<div id="#">
		<form action= >
			<table>
			<tr>
			<c:forEach var="movieReview" items="${rlist }">
				<c:if test="${movieReview.del !='y'}">
				<th>${movieReview.moviename }</th><!-- db에서 받아올 값 -->
				<th>${movieReview.content }</th>		<!-- db에서 받아올 값 -->
				<td>
				<input type="submit" value="수정"> <!-- 영화 정보 페이지로 이동 -->
				<button onclick="delchk(${movieReview.reviewno})">삭제</button>
				</td>
				</c:if>	
			</c:forEach>		
			<td>
			
				</td>
			</tr>
			</table>
			
		</form>
	</div>
	<div id="historyback" align="center">
		<button onclick="location.href='/project_semi/views/mypage/mypageForm.do?id=${id}'">이전</button>
	</div>
</body>
</html>