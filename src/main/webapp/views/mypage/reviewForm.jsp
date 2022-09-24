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
			location=href="/project_semi/views/mypage/reviewDeleteResult.do?reviewno="+reviewno;
		}
	}
</script>
</head>
<body>
	<div id="title">
		<h2 align="center">리뷰 목록</h2>
	</div>
<!-- if문으로 DB에서 회원정보를 확인하여 리뷰내역 있으면 div review노출 -->
	<div id="#">
		<form>
			<table>
				<tr>
					<c:forEach var="movieReview" items="${list }">
						<c:if test="${movieReview.del !='Y'}">
							<th>${movieReview.moviename }</th>		<!-- db에서 받아올 값 -->
							<th>${movieReview.content }</th>		<!-- db에서 받아올 값 -->
							<td>																										      <!-- 영화정보 페이지에서 수정할 리뷰 표시  -->
								<input type="button" onclick="location.href='/project_semi/views/movie/movieInfo.do?movieno=${movieReview.movieno}&reviewno=${movieReview.reviewno}'" value="수정"> <!-- 영화 정보 페이지로 이동 -->
								<input type="button" onclick="delchk(${movieReview.reviewno})" value="삭제">
							</td>
						</c:if>	
					</c:forEach>
				</tr>
			</table>
		</form>
	</div>
	<div align="center">
			<c:if test="${currentPage > PAGE_PER_BLOCK }" >
				<button onclick="location.href='/project_semi/views/mypage/reviewForm.do?id=${member.memberno}&${id}&pageNum=${startPage - 1 }'">이전</button>
			</c:if>
				<c:forEach var="i" begin="${startPage }" end="${endPage }">
					<c:if test="${i == currentPage }">
						<button style="background: red" onclick="location.href='/project_semi/views/mypage/reviewForm.do?id=${member.memberno}&${id}&pageNum=${i}'">${i }</button>
					</c:if>
					<c:if test="${i != currentPage }">
						<button onclick="location.href='/project_semi/views/mypage/reviewForm.do?id=${member.memberno}&${id}&pageNum=${i}'">${i }</button>
					</c:if>		
				</c:forEach>
			<c:if test="${endPage < totalPage }">
				<button onclick="location.href='/project_semi/views/mypage/reviewForm?id=${member.memberno}&${id}&pageNum=${endPage + 1 }'">다음</button>
			</c:if>
	</div>
	<div id="historyback" align="center">
		<button onclick="location.href='/project_semi/views/mypage/mypageForm.do?id=${id}'">이전</button>
	</div>
</body>
</html>