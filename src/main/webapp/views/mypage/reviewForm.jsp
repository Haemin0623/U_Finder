<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../member_sessionChk.jsp"%>
<style type="text/css">
#title{margin-top: 3%;}
#review{width:650px; position: absolute; left: 33%; top:20%; }
#reviewupdate{float: right; margin-right: 5px;}
 #reviewdelete{float: right;}
#paging {text-align: center; margin-top: 32%}
#moviename{ margin-right: 5px; border-right:gray 1px solid; width: 120px; font-size: 18px;
	text-overflow: ellipsis; display: inline-block; white-space: nowrap; overflow: hidden;}
#content{text-overflow: ellipsis; display: inline-block; white-space: nowrap; overflow: hidden;
 width: 400px; font-size: 16px;}
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
	<div id="review">
		<c:forEach var="movieReview" items="${list }">
			<c:if test="${movieReview.del !='Y'}">
					<b id="moviename" title="${movieReview.moviename } ">
						${movieReview.moviename }  		<!-- db에서 받아올 값 -->
					</b>
					<span id="content">
						${movieReview.content }
					</span>
				<span id="reviewupdate">
					<input class="blackText" type="button" onclick="location.href='/project_semi/views/movie/movieInfo.do?movieno=${movieReview.movieno}&reviewno=${movieReview.reviewno}'" value="수정"> <!-- 영화 정보 페이지로 이동 -->
				</span>
				<span id="reviewdelete">
					<input class="blackText" type="button" onclick="delchk(${movieReview.reviewno})" value="삭제">
				</span>
				<br><br>
			</c:if>	
<%-- 			<c:if test="${movieReview.del =='Y'}"> --%>
<%-- 				${movieReview.moviename }		<!-- db에서 받아올 값 --> --%>
<!-- 				삭제된 댓글입니다.<br>		db에서 받아올 값 -->
<%-- 					<input class="blackText reviewdelete reviewupdate" type="button" onclick="location.href='/project_semi/views/movie/movieInfo.do?movieno=${movieReview.movieno}'" value="리뷰쓰기"> <!-- 영화 정보 페이지로 이동 --> --%>
<!-- 			<br> -->
<%-- 			</c:if> --%>
		</c:forEach>
	</div>
	<div id="paging">
			<c:if test="${currentPage > PAGE_PER_BLOCK }" >
				<button class="blackText" onclick="location.href='/project_semi/views/mypage/reviewForm.do?memberno=${memberno}&id=${id}&${startPage - 1 }'">이전</button>
			</c:if>
				<c:forEach var="i" begin="${startPage }" end="${endPage }">
					<c:if test="${i == currentPage }">
						<button class="blackText" style="background: red" onclick="location.href='/project_semi/views/mypage/reviewForm.do?memberno=${memberno}&id=${id}&pageNum=${i}'">${i }</button>
					</c:if>
					<c:if test="${i != currentPage }">
						<button class="blackText" onclick="location.href='/project_semi/views/mypage/reviewForm.do?memberno=${memberno}&id=${id}&pageNum=${i}'">${i }</button>
					</c:if>		
				</c:forEach>
			<c:if test="${endPage < totalPage }">
				<button class="blackText" onclick="location.href='/project_semi/views/mypage/reviewForm?memberno=${memberno}&id=${id}&pageNum=${endPage + 1 }'">다음</button>
			</c:if>
	</div>
	<div id="historyback" align="center">
		<button class="blackText" onclick="location.href='/project_semi/views/mypage/mypageForm.do?id=${id}'">이전</button>
	</div>
</body>
</html>