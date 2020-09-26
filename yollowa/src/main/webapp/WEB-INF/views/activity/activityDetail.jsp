<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="../template/head.jspf"%>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"/>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css" rel="stylesheet"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>

<style type="text/css">

/* category start */
.page-header {
	border-bottom: 1px solid lightgray;
	padding-top: 15px;
	padding-bottom: 25px;
}

.page-header>p {
	margin-top: 10px;
	margin-bottom: 2px;
}
/* category end */

h1 {
	text-align: center;
	margin-top: 20px;
}

h3:first-letter {
	padding-left: 10px;
	border-left: 2px solid purple;
}

#package-div-option{
	background-color: #E9F7FF;
}

#package-div-option-select button{
	background-color:white;
	border:1px solid lightgray;
	outline-color: purple;
	font-size: 15px;
	padding: 5px 20px;
	margin-left: 20px;
}

.quantity-style{
     text-align: center;  
     min-width: 38px; 
     max-width: 38px;
}

.quantity-wrapper{
     width: 38px; 
}
</style>
<script type="text/javascript">
	/* 달력 */
	var today = new Date();
	var msg = (today.getYear()+1900) +"-0"+(today.getMonth()+1)+ "-"+today.getDate();
	
	$(function() {
		$('#currentDate').attr('value', msg);
		$('#currentDate').attr('min', msg);
	});
	
	/* 패키지 옵션 설정 버튼 */
	$(function() {
		$('#package-div-option-select button').mouseover(function(){
			$(this).css('background-color','#EDE1FA');
		});
		$('#package-div-option-select button').mouseleave(function(){
			$(this).css('background-color','white');
		});
	});
	
	/* 수량 */
	var sell_price;
	var amount;
	
	function init () {
		sell_price = document.form.sell_price.value;
		amount = document.form.amount.value;
		document.form.sum.value = sell_price;
		change();
	}
	
	function add () {
		hm = document.form.amount;
		sum = document.form.sum;
		hm.value ++ ;
	
		sum.value = parseInt(hm.value) * sell_price;
	}
	
	function del () {
		hm = document.form.amount;
		sum = document.form.sum;
			if (hm.value > 1) {
				hm.value -- ;
				sum.value = parseInt(hm.value) * sell_price;
			}
	}
	
	function change () {
		hm = document.form.amount;
		sum = document.form.sum;
	
			if (hm.value < 0) {
				hm.value = 0;
			}
		sum.value = parseInt(hm.value)*sell_price;
	}  
	
	
</script>

<meta charset="UTF-8">
<title>액티비티</title>
</head>
<body onload="init();">
	<%@ include file="../template/header.jspf"%>
	<%@ include file="../template/menu.jspf"%>
	<div class="container">
		<div class="page-header">
			<div id="carouselExampleIndicators" class="carousel slide"
				data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carouselExampleIndicators" data-slide-to="0"
						class="active"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="../resources/img/activity/activityMain.png"
							class="d-block w-100" />
					</div>
					<div class="carousel-item">
						<img src="../resources/img/activity/activityMain.png"
							class="d-block w-100" />
					</div>
					<div class="carousel-item">
						<img src="../resources/img/activity/activityMain.png"
							class="d-block w-100" />
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleIndicators"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>


		</div>
		<div class="row">
			<div id="category" class="col-md-12">
				<h1>방콕 스카이 발코니 뷔페 (바이욕 스카이 호텔 81층)</h1>
				<div id="infoList">
					<div id="package-div">
						<h3>패키지 옵션</h3>
						<div id="package-div-option">
							<h5>날짜 및 패키지 옵션 선택</h5>
							<div>
								<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false">예약가능 날짜</button>
								<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
									<form id="currentDate1">
										<input id="currentDate" type="date"/>
										<button type="submit" class="btn btn-primary">확인</button>
									</form>
								</div>
							</div>
							
							<div id="package-div-option-select">
								<h5>옵션 선택</h5>
								<div>
									<button>전망대 입장권</button>
									<button>야간 입장권</button>
								</div>
							</div>
							
							<div>
								<h5>수량</h5>
								<div>
									<form name="form" method="get">
										<input type=hidden name="sell_price" value="5500">
										<input type="text" name="amount" value="1" size="3" onchange="change();">
										<input type="button" value=" + " onclick="add();"><input type="button" value=" - " onclick="del();"><br>
										금액 : <input type="text" name="sum" size="11" readonly>원
									</form>
								</div>
							</div>
						</div>
					</div>

					<div id="info-div">
						<h3>기본정보</h3>
						<p>내용</p>
					</div>

					<div id="map-div">
						<h3>지도</h3>
						<div id="map" style="width: 100%; height: 350px;"></div>
					</div>

					<div id="review-div">
						<h3>리뷰</h3>
						<p>내용</p>
					</div>

				</div>

			</div>
		</div>
		<%@ include file="../template/footer.jspf"%>
</body>
<script>
	var container = document.getElementById('map');
	var options = {
		center : new kakao.maps.LatLng(37.503013, 127.024264),
		level : 3
	};

	var map = new kakao.maps.Map(container, options);

	var position = new kakao.maps.LatLng(37.503013, 127.024264);

	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
		position : position,
		clickable : true
	// 마커를 클릭했을 때 지도의 클릭 이벤트가 발생하지 않도록 설정합니다
	});

	// 아래 코드는 위의 마커를 생성하는 코드에서 clickable: true 와 같이
	// 마커를 클릭했을 때 지도의 클릭 이벤트가 발생하지 않도록 설정합니다
	// marker.setClickable(true);

	// 마커를 지도에 표시합니다.
	marker.setMap(map);
</script>
</html>