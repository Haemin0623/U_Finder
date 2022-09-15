<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
th{ padding: 12px; border:1px solid pink;  }
td{ padding: 12px; border:1px solid pink; width: 13% }
h2{ font-size: 24px; }
body{ background-image:url("../chang/images/텔레토비.jpg"); }
#title {
	transform: translate(0%, 120%);
	padding: 5px; 
	margin: 0 auto;
	width: 50%;
	height: 60px;
}

#review {
	transform: translate(0%, 150%);
	border: 1px solid black;
	padding: 5px;
	width: 50%;
	margin: 0 auto;
}
#historyback{
	transform: translate(0%, 2500%);
}

</style>

<script type="text/javascript">
	function delchk() {
		if (confirm("정말 삭제하시겠습니까??") == true){
			
			location.href = "DeleteAction.jsp" /* 삭제 프로세스 이동 */
			// 			DAO에서 리턴받아서 삭제 완료 시 
			alert("삭제 완료");
		}
	}
</script>
</head>
<body>
	<div id="title">
		<h2 align="center">리뷰 목록</h2>
	</div>
<!-- if문으로 DB에서 회원정보를 확인하여 리뷰내역 있으면 div review노출 -->
	<div id="review">
		<form action="movieinfo.jsp">
			<table>
				<tr>
					<th width="20%">영화 제목</th>		<!-- db에서 받아올 값 -->
					<th width="50%">리뷰 내용</th>		<!-- db에서 받아올 값 -->
					<td>
						<input type="submit" value="수정"> <!-- 영화 정보 페이지로 이동 -->
						<button onclick="delchk()">삭제</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<div id="historyback" align="center">
		<button onclick="location.href='mypageForm.jsp'">이전</button>
	</div>
</body>
</html>