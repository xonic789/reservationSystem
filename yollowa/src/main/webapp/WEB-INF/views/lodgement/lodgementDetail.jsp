<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="../template/head.jspf"%>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css"
	integrity="sha256-3sPp8BkKUE7QyPSl6VfBByBroQbKxKG7tsusY2mhbVY="
	crossorigin="anonymous" />

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
h2 {
	text-align: center;
	margin: 30px 0px;
	font-size: 50px;
}

h3 {
	margin-bottom: 15px;
}

h3:first-letter {
	padding-left: 10px;
	border-left: 2px solid purple;
}

.quantity-style {
	text-align: center;
	min-width: 38px;
	max-width: 38px;
}

.quantity-wrapper {
	width: 38px;
}

/* 객실 예약 */
.room {
	border: 1px solid lightgray;
	border-radius: 10px;
	padding: 10px 10px;
	margin: 20px 100px;
}

.roominfo>div>img {
	height: 200px;
}

.roominfo>div {
	display: inline-block;
	margin-right: 30px;
}

.roominfo>div+div {
	
}

#map-div, #info-div, #review-div {
	padding-top: 20px;
	padding-bottom: 20px;
	border-top: 1px solid lightgray;
}
/* 달력 start */

/* 달력 end */

/* 리뷰css */
.review-div {
	margin-top: 20px;
}

.review-box {
	padding: 10px 20px;
	margin-bottom: 30px;
	background-color: #F7F3FF;
	border-radius: 10px;
}

.review-writer {
	font-style: italic;
	font-size: 15px;
}

.review-writedDateA {
	float: right;
}

/* datePicker start */
.datePicker {
	text-align: center;
	width: 120px;
}

#pickerUl {
	list-style: none;
	margin: 0;
	padding: 0;
}

#pickerUl li {
	margin: 0 0 0 0;
	padding: 0 0 0 0;
	border: 0;
	float: left;
}
/* datePicker end */

/* card start*/
.career-form {
	background-color: #4e63d7;
	border-radius: 5px;
	padding: 0 16px;
}

.career-form .form-control {
	background-color: rgba(255, 255, 255, 0.2);
	border: 0;
	padding: 12px 15px;
	color: #fff;
}

.career-form .form-control::-webkit-input-placeholder {
	/* Chrome/Opera/Safari */
	color: #fff;
}

.career-form .form-control::-moz-placeholder {
	/* Firefox 19+ */
	color: #fff;
}

.career-form .form-control:-ms-input-placeholder {
	/* IE 10+ */
	color: #fff;
}

.career-form .form-control:-moz-placeholder {
	/* Firefox 18- */
	color: #fff;
}

.career-form .custom-select {
	background-color: rgba(255, 255, 255, 0.2);
	border: 0;
	padding: 12px 15px;
	color: #fff;
	width: 100%;
	border-radius: 5px;
	text-align: left;
	height: auto;
	background-image: none;
}

.career-form .custom-select:focus {
	-webkit-box-shadow: none;
	box-shadow: none;
}

.career-form .select-container {
	position: relative;
}

.career-form .select-container:before {
	position: absolute;
	right: 15px;
	top: calc(50% - 14px);
	font-size: 18px;
	color: #ffffff;
	content: '\F2F9';
	font-family: "Material-Design-Iconic-Font";
}

.filter-result .job-box {
	-webkit-box-shadow: 0 0 35px 0 rgba(130, 130, 130, 0.2);
	box-shadow: 0 0 35px 0 rgba(130, 130, 130, 0.2);
	border-radius: 10px;
	padding: 10px 35px;
}

ul {
	list-style: none;
}

.list-disk li {
	list-style: none;
	margin-bottom: 12px;
}

.list-disk li:last-child {
	margin-bottom: 0;
}

.job-box .img-holder {
	height: 65px;
	width: 65px;
	background-color: #4e63d7;
	background-image: -webkit-gradient(linear, left top, right top, from(rgba(78, 99, 215, 0.9
		)), to(#5a85dd));
	background-image: linear-gradient(to right, rgba(78, 99, 215, 0.9) 0%,
		#5a85dd 100%);
	font-family: "Open Sans", sans-serif;
	color: #fff;
	font-size: 22px;
	font-weight: 700;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	border-radius: 65px;
}

.career-title {
	background-color: #4e63d7;
	color: #fff;
	padding: 15px;
	text-align: center;
	border-radius: 10px 10px 0 0;
	background-image: -webkit-gradient(linear, left top, right top, from(rgba(78, 99, 215, 0.9
		)), to(#5a85dd));
	background-image: linear-gradient(to right, rgba(78, 99, 215, 0.9) 0%,
		#5a85dd 100%);
}

.job-overview {
	-webkit-box-shadow: 0 0 35px 0 rgba(130, 130, 130, 0.2);
	box-shadow: 0 0 35px 0 rgba(130, 130, 130, 0.2);
	border-radius: 10px;
}

@media ( min-width : 992px) {
	.job-overview {
		position: -webkit-sticky;
		position: sticky;
		top: 70px;
	}
}

.job-overview .job-detail ul {
	margin-bottom: 28px;
}

.job-overview .job-detail ul li {
	opacity: 0.75;
	font-weight: 600;
	margin-bottom: 15px;
}

.job-overview .job-detail ul li i {
	font-size: 20px;
	position: relative;
	top: 1px;
}

.job-overview .overview-bottom, .job-overview .overview-top {
	padding: 35px;
}

.job-content ul li {
	font-weight: 600;
	opacity: 0.75;
	border-bottom: 1px solid #ccc;
	padding: 10px 5px;
}

@media ( min-width : 768px) {
	.job-content ul li {
		border-bottom: 0;
		padding: 0;
	}
}

.job-content ul li i {
	font-size: 20px;
	position: relative;
	top: 1px;
}

.mb-30 {
	margin-bottom: 30px;
}
/* card end*/
</style>
<script type="text/javascript">

	/* 달력 */
	/*  $(document).ready(function() {
		 $("#datepicker").val($.datepicker.formatDate('yy-mm-dd',new Date()));
		 
	 }); */
	 
	 $(function(){
		  $( "#sdate" ).datepicker({
			  dateFormat:"yy-mm-dd",
			  dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'],
		      monthNames: ['1월','2월','3월','4월','5월','6월',
			        '7월','8월','9월','10월','11월','12월'],
			  minDate: 0
		  });
		  $( "#edate" ).datepicker({
			  dateFormat:"yy-mm-dd",
			  dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'],
			  monthNames: ['1월','2월','3월','4월','5월','6월',
			        '7월','8월','9월','10월','11월','12월'],
			  minDate: 0
		  });
	 });
	 
	 $(document).ready(function(){      
			$('#edate').datepicker("option", "minDate", $("#sdate").val());
		    $('#edate').datepicker("option", "onClose", function ( selectedDate ) {
		        $("#sdate").datepicker( "option", "maxDate", selectedDate );
		    });
	 });	       
	
	
	 // 날짜 선택
	 function pickerIn(a){

		 var num = "articleNum="+$('#articleNumber').val()+"&selectDate="+$(a).val();
		
		$.ajax({
			type:'post',
			dataType : 'json',
			data:num,
			url:$('#articleNumber').val()+"/ajax",
			
			success:function(s){
				
				$.each(s,function(idx,val){
					
					var valueCheck = Date.parse($(a).val());
					var startD = Date.parse(val.roomInfo_peakStartDate);
					var endD = Date.parse(val.roomInfo_peakEndDate);
					
					if(valueCheck>=startD && valueCheck<=endD){
						$('.div-peak'+idx).show();
						$('.div-offPeak'+idx).hide();
					}else{
						$('.div-peak'+idx).hide();
						$('.div-offPeak'+idx).show();
					}
				});
			},
			error:function(e){
				console.log(e);
			}
		});
		
		
		/* 
		<c:forEach items="${roomList}" var="bean" varStatus="status">

			console.log($(('.offPeak${status.index}')).text()); // 비성수기
			console.log($(('.peak${status.index}')).text()); // 성수기
		</c:forEach> 
			*/


	 };
	 
	 
	 
	 
	/* 패키지 옵션 설정 버튼 */
	$(function() {
		$('#package-div-option-select button').mouseover(function(){
			$(this).css('background-color','#EDE1FA');
		});
		$('#package-div-option-select button').mouseleave(function(){
			$(this).css('background-color','white');
		});
	});
	
	
	
	// 비성수기바로구매
	<c:forEach items="${roomList}" var="bean" varStatus="status">
		function offPeakBuySubmit${status.index}(t){
				
				console.log($(('.offPeak${status.index}')).text()); // 비성수기
			
			document.offPeakform${status.index}.submit();
	/* 
			if($('.uuu').text()=="로그인"){
				alert("로그인이 필요한 기능입니다. 로그인페이지로 이동합니다.");
				window.location.href="../../login/";
			}else{
			}
	 */		
			
		}
	</c:forEach>
	
	// 성수기바로구매
	<c:forEach items="${roomList}" var="bean" varStatus="status">
		function peakBuySubmit${status.index}(t){
				
			console.log($(('.peak${status.index}')).text()); // 성수기
			
			document.peakform${status.index}.submit();
	/* 
			if($('.uuu').text()=="로그인"){
				alert("로그인이 필요한 기능입니다. 로그인페이지로 이동합니다.");
				window.location.href="../../login/";
			}else{
			}
	 */		
			
		}
	</c:forEach>
	
	
	// 장바구니
	function wish(){
		window.location.href="../../";
	};

	
	
	
	$("link[rel='shortcut icon']").attr("href", "${pageContext.request.contextPath}/resources/img/icons/favicon.png");
</script>

<meta charset="UTF-8">
<title>숙박</title>
</head>
<body>
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
				<h2>${startEndDay.getLodgement_companyName()}</h2>
				<div class="jumbotron">
					<div id="infoList">
						<h3>
							객실 예약 <small style="font-size: 15px;">( 성수기 :
								${startEndDay.getRoomInfo_peakStartDate()} ~
								${startEndDay.getRoomInfo_peakEndDate() } )</small>
						</h3>
						<input id="articleNumber" type="hidden" value="${article}" />
						<div id="package-div-option">
							<div id="dateDiv">
								<input id="sdate" class="btn btn-primary"
									aria-labelledby="dropdownMenuButton" role="btn" name="nal"
									type="text" readonly="readonly" placeholder="체크인"
									onchange="pickerIn(this);" /> <input id="edate"
									class="btn btn-primary" aria-labelledby="dropdownMenuButton"
									role="btn" name="nal" type="text" readonly="readonly"
									placeholder="체크아웃" onchange="pickerOut(this);" />

							</div>

							<div style="margin-top: 40px; box-sizing: border-box;">
								<h5>방 선택</h5>

								<c:forEach items="${detailList }" var="bean" varStatus="status">
									<div class="room">
										<div class="roominfo">
											<div style="margin: 10px 5px;">
												<img style="border-radius: 10px;" alt="" src="../../${bean.roomInfo_img }">
											</div>
											<div style="width: 40%; margin-left: 50px;">
												<div
													style="font-size: 20px; border-bottom: 1px solid lightgray;">
													<p style="padding: auto 0px; margin-bottom: 0px;">${bean.roomInfo_name }</p>
												</div>
												<div class="div-offPeak${status.index}"
													style="font-size: 15px; padding-bottom: 5px;">
													<form name="offPeakform${status.index}" action="test"
														method="post">
														<span>가격 </span>
														<input class="paymentOffPeak${status.index}" name="LReservInfo_payment" type="hidden" value="${bean.roomInfo_offPeakPrice }" />
														<span class="offPeak${status.index}" style="float: right;">${bean.roomInfo_offPeakPrice }</span>
													</form>
													<button class="btn btn-outline-primary" style="float: right;" onclick="offPeakBuySubmit${status.index}(this);">예약</button>
												</div>
												<div class="div-peak${status.index}" style="font-size: 15px; padding-bottom: 5px; display: none;">
													<form name="peakform${status.index}" action="test" method="post">
														<span>가격 </span> 
														<input class="paymentPeak${status.index}" name="LReservInfo_payment" type="hidden" value="${bean.roomInfo_peakPrice }" />
														<span class="peak${status.index}" style="float: right;">${bean.roomInfo_peakPrice }</span>
														<button class="btn btn-outline-primary" style="width: 60%; margin-top: 10px; margin-left: 20%;" onclick="peakBuySubmit${status.index}(this);">예약</button>
													</form>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
							<!--  -->

							<div class="container">
								<div class="row">
									<div class="col-lg-10 mx-auto">
										<div class="filter-result">
											<div class="job-content">
												<c:forEach items="${detailList }" var="bean" varStatus="status">
												<div class="job-box d-md-flex align-items-center justify-content-between mb-30">
													<div class="job-left my-4 d-md-flex align-items-center flex-wrap" style="width: 100%;">
														<div>
															<!-- <img src="http://placehold.it/350x200" /> -->
															<img style="width: 350px; height: 230px; border-radius: 10px;" src="../../${bean.roomInfo_img }" />
														</div>
														<ul style="margin-bottom:0px; font-size:20px; font: black; font-style: normal; width: 50%; ">
															<li style="font-size: 30px; padding-bottom: 30px;">혼자 자는방</li>
															<li style="border-bottom: 1px solid gray; margin-bottom: 30px; padding-bottom:20px; ">가격 <span style="display: inline-block; float: right;">20000</span></li>
															<li>
																<input style="width:100%;" class="btn btn-outline-primary" role="btn" type="text" value="예약"/>
															</li>
														</ul>
													</div>
												</div>
												</c:forEach>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!--  -->
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

					<c:forEach items="${reviewList}" var="bean" varStatus="status">
						<div class="review-box">
							<div class="review-writedDate${status.index} review-writedDateA">${bean.review_writedDate }</div>
							<div class="review-writer blockquote-footer">${bean.review_writer}</div>
							<div class="review-star">별점 : ${bean.review_starPoint}</div>
							<div class="review-content">${bean.review_content}</div>
						</div>
					</c:forEach>
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