<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../member_sessionChk.jsp"%>
<style type="text/css">
#title{
	margin-top: 3%;
}
#review{
	width:650px; 
	position: absolute; 
	left: 33%; 
	top:20%; 
}
#reviewdelete{
	float: right;
}
#reviewupdate{
	float: right; 
	margin-left: 20px;
}

#paging {
	text-align: center; 
	margin-top: 32%;
}
#moviename{ margin-right: 5px; 
	border-right:gray 1px solid; 
	width: 120px; 
	font-size: 18px;
	text-overflow: ellipsis; 
	display: inline-block; 
	white-space: nowrap; 
	overflow: hidden;
}
#content{
	text-overflow: ellipsis; 
	display: inline-block; 
	white-space: nowrap; 
	overflow: hidden;
 	width: 400px; 
 	font-size: 16px;
}
#historyback{
	margin-top: 15px;
}
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
					<button class="blackText" style="padding: 0; border: none; background: none; ma" onclick="location.href='/project_semi/views/movie/movieInfo.do?movieno=${movieReview.movieno}&reviewno=${movieReview.reviewno}'" >
						<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="white" class="bi bi-pencil-fill" viewBox="0 0 16 16">
							<path d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z"/>
						</svg>
					</button> <!-- 영화 정보 페이지로 이동 -->
				</span>
				<span id="reviewdelete">
					<button class="blackText" style="padding: 0; border: none; background: none;" onclick="delchk(${movieReview.reviewno})" >
						<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="white" class="bi bi-trash3-fill" viewBox="0 0 16 16">
							<path d="M11 1.5v1h3.5a.5.5 0 0 1 0 1h-.538l-.853 10.66A2 2 0 0 1 11.115 16h-6.23a2 2 0 0 1-1.994-1.84L2.038 3.5H1.5a.5.5 0 0 1 0-1H5v-1A1.5 1.5 0 0 1 6.5 0h3A1.5 1.5 0 0 1 11 1.5Zm-5 0v1h4v-1a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5ZM4.5 5.029l.5 8.5a.5.5 0 1 0 .998-.06l-.5-8.5a.5.5 0 1 0-.998.06Zm6.53-.528a.5.5 0 0 0-.528.47l-.5 8.5a.5.5 0 0 0 .998.058l.5-8.5a.5.5 0 0 0-.47-.528ZM8 4.5a.5.5 0 0 0-.5.5v8.5a.5.5 0 0 0 1 0V5a.5.5 0 0 0-.5-.5Z"/>
						</svg>
					</button>
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
		<button style="padding: 0; border: none; background: none; color:white" class="blackText" onclick="location.href='/project_semi/views/mypage/mypageForm.do?id=${id}'">
			<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="yellow" class="bi bi-arrow-return-left" viewBox="0 0 16 16">
			  <path fill-rule="evenodd" d="M14.5 1.5a.5.5 0 0 1 .5.5v4.8a2.5 2.5 0 0 1-2.5 2.5H2.707l3.347 3.346a.5.5 0 0 1-.708.708l-4.2-4.2a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 8.3H12.5A1.5 1.5 0 0 0 14 6.8V2a.5.5 0 0 1 .5-.5z"/>
			</svg>이전
		</button>
	</div>
</body>
</html>