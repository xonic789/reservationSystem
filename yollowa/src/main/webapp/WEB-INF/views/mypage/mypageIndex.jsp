<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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

.mypageLink {
	color: black;
	text-decoration: none;
}

.mypageLink:hover {
	color: black;
	text-decoration: none;
}

.row {
	font-size: 1.000rem;
}

.card {
	border-radius: 5px;
}

.card-link {
	display: block;
	color: #433387;
}

.card-link:hover {
	color: #433387;
}
</style>
<script type="text/javascript">
	$(function() {
		$('.card-body p>a').on('mouseenter', function() {
			$(this).css('color', '#C6BFE7');
		}).on('mouseleave', function() {
			$(this).css('color', '#433387');
		});
		$('.lodgeDetail').on('mouseenter', function() {
			$(this).css('color', '#C6BFE7');
		}).on('mouseleave', function() {
			$(this).css('color', 'black');
		});
	});
</script>
</head>
<body>
	<%@ include file="../template/header.jspf"%>
	<%@ include file="../template/menu.jspf"%>
	<div class="container">
		<div class="page-header">
			<p>메인 페이지 > 마이 페이지</p>
			<h1>
				<a class="mypageLink"
					href="${pageContext.request.contextPath }/mypage/">마이페이지</a> <small>
					My Page</small>
			</h1>
		</div>

		<div class="row">
			<div class="col-md-3">
				<div class="card border-primary mb-3" style="max-width: 20rem;">
					<div class="card-header bg-primary">
						<a class="card-link" style="color: white;"
							href="${pageContext.request.contextPath }/mypage/">> 마이페이지</a>
					</div>
					<div class="card-body">
						<p class="card-text">
							<a class="card-link"
								href="${pageContext.request.contextPath }/mypage/">예약 현황</a>
						</p>
						<p class="card-text">
							<a class="card-link"
								href="${pageContext.request.contextPath }/mypage/completed">이용
								내역</a>
						</p>
						<p class="card-text">
							<a class="card-link"
								href="${pageContext.request.contextPath }/mypage/cart">장바구니</a>
						</p>
						<p class="card-text">
							<a class="card-link"
								href="${pageContext.request.contextPath }/mypage/wishlist">찜
								목록</a>
						</p>
					</div>
				</div>
				<div class="card border-secondary mb-3" style="max-width: 20rem;">
					<div class="card-header bg-secondary" style="color: white;">>
						내가 쓴 글</div>
					<div class="card-body">
						<p class="card-text">
							<a class="card-link"
								href="${pageContext.request.contextPath }/mypage/myreview">내가
								쓴 리뷰</a>
						</p>
						<p class="card-text">
							<a class="card-link"
								href="${pageContext.request.contextPath }/mypage/qna">내가 쓴
								Q&A</a>
						</p>
						<p class="card-text">
							<a class="card-link"
								href="${pageContext.request.contextPath }/mypage/userinfo">내
								정보</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-9">
			<h2>${user.user_name }님의 예약 현황 입니다!</h2>
			<c:forEach items="${rsvinfo }" var="info">
				<div class="jumbotron">
				<!-- 룸정보는 rsvinfo에 들어있는 게시물넘버와 숙박 게시물번호와 같을때 출력 -->
					<h3>${info.lodgement_companyName }</h3>
					<hr class="my-4">
					<p>객실 정보 : ${info.roomInfo_name }</p>
					<p>예약 일자 : ${info.lReservInfo_checkIn } ~ ${info.lReservInfo_checkOut }</p>
					<p>제한 인원 : ${info.roomInfo_minPeople }명 ~ ${info.roomInfo_maxPeople }명</p>
					<fmt:formatNumber type="number" maxFractionDigits="3" value="${info.lReservInfo_payment}" var="pay" />
					<p>결제 금액 : ${pay }원</p>
					<p class="lead">
						<a class="btn btn-warning btn-lg" href="#" role="button" style="display: block;">예약 번호 확인하기</a>
					<hr class="my-4">	
						<a class="btn btn-lg lodgeDetail" href="#" role="button" style="display: block;" >숙박 업체 자세히 보기</a>
					</p>
				</div>
				</c:forEach>
			</div>
		</div>

	</div>
	<%@ include file="../template/footer.jspf"%>
</body>
</html>