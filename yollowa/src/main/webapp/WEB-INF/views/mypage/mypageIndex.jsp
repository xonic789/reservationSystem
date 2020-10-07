<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YOLLOWA</title>
<%@ include file="../template/head.jspf"%>
<style type="text/css">
ul {
	list-style: none;
}
.mypageLink{
	color:black;
	text-decoration: none;
}
.mypageLink:hover{
	color:black;
	text-decoration: none;
}

</style>
</head>
<body>
	<%@ include file="../template/header.jspf"%>
	<%@ include file="../template/menu.jspf"%>
	<div class="container">
		<div class="page-header">
			<p>메인 페이지 > 마이 페이지</p>
			<h1>
				<a class="mypageLink" href="${pageContext.request.contextPath }/mypage/">마이페이지</a> <small> My Page</small>
			</h1>
		</div>

		<div class="row">
			<div class="col-md-3">
				<div class="card text-white bg-primary mb-3"
					style="max-width: 20rem;">
					<div class="card-header"><a class="card-link" style="color:white;" href="#">마이페이지</a></div>
					<div class="card-body">
						<p class="card-text"><a class="card-link" style="color:white;" href="#">예약 현황</a></p>
						<p class="card-text"><a class="card-link" style="color:white;" href="#">이용 내역</a></p>
						<p class="card-text"><a class="card-link" style="color:white;" href="#">장바구니</a></p>
						<p class="card-text"><a class="card-link" style="color:white;" href="#">찜 목록</a></p>
					</div>
				</div>
				<div class="card text-white bg-warning mb-3"
					style="max-width: 20rem;">
					<div class="card-header">내가 쓴 글</div>
					<div class="card-body">
						<p class="card-text"><a class="card-link" style="color:white;" href="#">내가 쓴 리뷰</a></p>
						<p class="card-text"><a class="card-link" style="color:white;" href="#">내가 쓴 Q&A</a></p>
						<p class="card-text"><a class="card-link" style="color:white;" href="#">내 정보</a></p>
					</div>
				</div>
			</div>
		</div>

	</div>
	<%@ include file="../template/footer.jspf"%>
</body>
</html>