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
/
category start /
.page-header {
	border-bottom: 1px solid lightgray;
	padding-top: 15px;
	padding-bottom: 25px;
}

.page-header>p {
	margin-top: 10px;
	margin-bottom: 2px;
}

/
category end /
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

/
객실 예약 /
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

#info-div, #review-div {
	padding-top: 20px;
	padding-bottom: 20px;
	border-top: 1px solid lightgray;
}

/
달력 start / / 달력 end / / 리뷰css /
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

/
datePicker start /
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

/
datePicker end /
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

.career-form .form-control::-webkit-input-placeholder { / Chrome
	/Opera/Safari / color:#fff;
	
}

.career-form .form-control::-moz-placeholder { / Firefox 19+ / color:#fff;
	
}

.career-form .form-control:-ms-input-placeholder { / IE 10+ / color:#fff;
	
}

.career-form .form-control:-moz-placeholder { / Firefox 18- / color:#fff;
	
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

/* 캐러셀 start */
.carousel-item div>img{
	width: 280px;
	height:200px;
}
/* 캐러셀 end */
</style>
<script type="text/javascript">

// 달력
/* $(document).ready(function() {
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
		var InValue = $(a).val();
		$('.sdateVal').val(InValue);
	
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
		
		
	};
	
	function pickerOut(o){
		var outValue = $(o).val();
		$('.edateVal').val(outValue);
	};




	// 패키지 옵션 설정 버튼 
	$(function() {
		$('#package-div-option-select button').mouseover(function(){
			
			$(this).css('background-color','#EDE1FA');
			
		});
		
			$('#package-div-option-select button').mouseleave(function(){
			$(this).css('background-color','white');
		});
	});


/* 		
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
		
		
		/*
		if($('.uuu').text()=="로그인"){
		alert("로그인이 필요한 기능입니다. 로그인페이지로 이동합니다.");
		window.location.href="../../login/";
		}else{
			document.peakform${status.index}.submit();
		}
		*/
	
	}
</c:forEach>
 */

// 장바구니
function wish(){
window.location.href="../../";
};


$("link[rel='shortcut icon']").attr("href", "${pageContext.request.contextPath}/resources/img/icons/favicon.png");


// 캐러셀 이미지
$(document).ready(function(){
	

	// 타이틀 이미지 carousel
	var title_Hidden_Img = $('#title-carousel').find('input').val();
	console.log(title_Hidden_Img);
	var title_Img_List = title_Hidden_Img.split("&");
	for(var i=0;i<title_Img_List.length;i++){
		if(i==0){
			var carouselActive= '<div class="carousel-item active">';
			carouselActive+='<img src="/lodgement/titleImg/'+title_Img_List[i]+'"';
			carouselActive+= ' class="d-block w-100 titImg" alt="..."></div>';

			$('#title-carousel').append(carouselActive);
		}else{
			var carouselDefault= '<div class="carousel-item">';
			carouselDefault+='<img src="/lodgement/titleImg/'+title_Img_List[i]+'"';
			carouselDefault+= ' class="d-block w-100 titImg" alt="..."></div>';
			
			$('#title-carousel').append(carouselDefault);
		} 
	};
	$('.titImg').css('height','500px');
	
	
	// 방 이미지 carousel start
	<c:forEach items="${detailList}" var="bean" varStatus="status">
	
		var hiddenImg = $(".hiddenImg"+${status.index}).val();
		var imgList = hiddenImg.split("&");
		for(var i=0;i<imgList.length;i++){
			var img =imgList[i];
			if(i==0){
				var carouselActive= '<div class="carousel-item active">';
				carouselActive+='<img src="/lodgement/roomImg/'+imgList[i]+'"';
				carouselActive+= ' class="d-block w-100 carImg" alt="..."></div>';

				$('.carousel-inner'+${status.index}).append(carouselActive);
			}else{
				var carouselDefault= '<div class="carousel-item">';
				carouselDefault+='<img src="/lodgement/roomImg/'+imgList[i]+'"';
				carouselDefault+= ' class="d-block w-100 carImg" alt="..."></div>';
				
				$('.carousel-inner'+${status.index}).append(carouselDefault);
			} 
		};
	</c:forEach>
		$('.carImg').css('height','250px');
	
	// 방 캐러셀 end
	
});




</script>

<meta charset="UTF-8">
<title>숙박</title>
</head>
<body>
	<%@ include file="../template/header.jspf"%>
	<%@ include file="../template/menu.jspf"%>
	<div class="container">
	
	
		<div class="page-header">
		<!-- -->
			
			<div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
			  <div id="title-carousel" class="carousel-inner">
				<input type="hidden" value="${listImg}"/>


			  </div>
			  <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			  </a>
			  <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </a>
			</div>
		</div>
		<!--  -->
		<h2>${startEndDay.getLodgement_companyName()}</h2>
		
		
		<!--  -->
		<ul class="nav nav-tabs" id="myTab" role="tablist">
			<li class="nav-item" role="presentation">
				<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">객실 예약</a>
			</li>
			<li class="nav-item" role="presentation">
				<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">기본 정보</a>
			</li>
			<li class="nav-item" role="presentation">
				<a class="nav-link" id="map-tab" data-toggle="tab" href="#map" role="tab" aria-controls="map" aria-selected="false">위치</a>
			</li>
			<li class="nav-item" role="presentation">
				<a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">리뷰</a>
			</li>
		</ul>
		<div class="tab-content" id="myTabContent">
			<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
				<!-- 객실예약 -->
				<div class="row">
			<div id="category" class="col-md-12">
				<div class="">
					<div id="infoList">
						<h3>
							객실 예약 <small style="font-size: 15px;">( 체크인 날짜를 기준으로 가격이 표시됩니다 )</small>
						</h3>
						<input id="articleNumber" type="hidden" value="${article}" />
						<div id="package-div-option">
							<div id="dateDiv">
								<input id="sdate" class="btn btn-primary" aria-labelledby="dropdownMenuButton" role="btn" name="nal" type="text" readonly="readonly" placeholder="체크인" onchange="pickerIn(this);" /> 
								<input id="edate" class="btn btn-primary" aria-labelledby="dropdownMenuButton" role="btn" name="nal" type="text" readonly="readonly" placeholder="체크아웃" onchange="pickerOut(this);"/>
							</div>
							<!-- -->

							<div class="container">
								<div class="row">
									<div class="col-lg-10 mx-auto">
										<div class="filter-result">
											<div class="job-content">
												<c:forEach items="${detailList }" var="bean" varStatus="status">
													<input class="hiddenImg${status.index }" type="hidden" value="${bean.roomInfo_img }"/>
													<div class="job-box d-md-flex align-items-center justify-content-between mb-30">
														<div class="job-left my-4 d-md-flex align-items-center flex-wrap row" style="width: 100%;">
																<!-- <img src="http://placehold.it/350x200" /> -->
																
															<div id="carouselExampleControls" class="carousel slide col-md-6" data-ride="carousel" style="overflow: hidden;">
															  <div class="carousel-inner${status.index } ">
															   <!-- carousel  -->
															    
															  </div>
															 
															</div>
															<!-- 비수기 start -->
															<ul class="div-offPeak${status.index} col-md-6"  style="font-size: 20px; font: black; font-style: normal;">
																<form name="offPeakform${status.index}" action="reservation/${bean.roomInfo_articleNumber}">
																	<li style="font-size: 30px; padding-bottom: 30px;">${bean.roomInfo_name }</li>
																	
																	<input class="paymentOffPeak${status.index}" name="roomNumber" type="hidden" value="${bean.roomInfo_roomNumber}" />
																	<input type="hidden" name="sdate" class="sdateVal"/>
																	<input type="hidden" name="edate" class="edateVal"/>
																	
																	<li style="border-bottom: 1px solid gray; margin-bottom: 30px; padding-bottom: 20px;"> 가격
																		<span style="display: inline-block; float: right;">${bean.roomInfo_offPeakPrice }</span>
																	</li>
																<!-- Modal start -->
																<button style="margin-bottom: 20px;" type="button" class="btn btn-secondary disabled" data-toggle="modal" data-target="#exampleModal${status.index}off">
																	  객실 이용 안내
																</button>
																<div class="modal fade" id="exampleModal${status.index}off" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
																  <div class="modal-dialog  modal-dialog-centered">
																    <div class="modal-content">
																      <div class="modal-header">
																        <h5 class="modal-title" id="exampleModalLabel">객실 이용 안내</h5>
																        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
																          <span aria-hidden="true">&times;</span>
																        </button>
																      </div>
																      <div class="modal-body">
																	      <h5><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-person-plus-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
																			  <path fill-rule="evenodd" d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm7.5-3a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z"/>
																			</svg> 인원 당 추가 요금</h5>
																		  <p>￦ ${bean.roomInfo_extraPrice }</p>
																		  <hr>
																		  <h5><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-people-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
																				  <path fill-rule="evenodd" d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5.784 6A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216zM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"/>
																				</svg> 최소인원 / 최대인원</h5>
																		  <p>${bean.roomInfo_minPeople }명 / ${bean.roomInfo_maxPeople }명</p>
																		  <hr>

																		  <h5>
																		  	<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-calendar-week" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
																				<path fill-rule="evenodd" d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
																				<path d="M11 6.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-5 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1z"/>
																			</svg>
																				성수기 기간</h5>
																		  <p>${bean.roomInfo_peakStartDate} ~ ${bean.roomInfo_peakEndDate}</p>
																      </div>
																      <div class="modal-footer">
																        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
																      </div>
																    </div>
																  </div>
																</div>
																
																<!-- Modal end -->
																<li>
																	<button style="width: 100%;" class="btn btn-outline-primary" type="submit" >예약</button>
																</li>
																</form>
																
															</ul>
															<!-- 비수기 end -->
															
															<!-- 성수기 start -->
															<ul class="div-peak${status.index} col-md-6" style="font-size: 20px; font: black; font-style: normal; display: none;">
																<form name="peakform${status.index}" action="reservation/${bean.roomInfo_articleNumber}&${bean.roomInfo_roomNumber }&${bean.roomInfo_peakStartDate}&${bean.roomInfo_peakEndDate}">
																	<li style="font-size: 30px; padding-bottom: 30px;">${bean.roomInfo_name }</li>
																	
																	<input class="paymentPeak${status.index}" name="roomNumber" type="hidden" value="${bean.roomInfo_roomNumber}" />
																	<input type="hidden" name="sdate" class="sdateVal"/>
																	<input type="hidden" name="edate" class="edateVal"/>
																	
																	<li style="border-bottom: 1px solid gray; margin-bottom: 30px; padding-bottom: 20px;"> 가격
																		<span style="display: inline-block; float: right;">${bean.roomInfo_peakPrice }</span>
																	</li>
																<!-- Modal start -->
																<button style="margin-bottom: 20px;" type="button" class="btn btn-secondary disabled" data-toggle="modal" data-target="#exampleModal${status.index}">
																	  객실 이용 안내
																</button>
																<div class="modal fade" id="exampleModal${status.index}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">

																  <div class="modal-dialog  modal-dialog-centered">
																    <div class="modal-content">
																      <div class="modal-header">
																        <h5 class="modal-title" id="exampleModalLabel">객실 이용 안내</h5>
																        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
																          <span aria-hidden="true">&times;</span>
																        </button>
																      </div>
																      <div class="modal-body">
																	      <h5><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-person-plus-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
																			  <path fill-rule="evenodd" d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm7.5-3a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z"/>
																			</svg> 인원 당 추가 요금</h5>
																		  <p>￦ ${bean.roomInfo_extraPrice }</p>
																		  <hr>
																		  <h5><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-people-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
																				  <path fill-rule="evenodd" d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5.784 6A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216zM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"/>
																				</svg> 최소인원 / 최대인원</h5>
																		  <p>${bean.roomInfo_minPeople }명 / ${bean.roomInfo_maxPeople }명</p>
																		  <hr>
																		  <h5>
																		  	<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-calendar-week" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
																				<path fill-rule="evenodd" d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
																				<path d="M11 6.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-5 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1z"/>
																			</svg>
																				성수기 기간</h5>
																		  <p>${bean.roomInfo_peakStartDate} ~ ${bean.roomInfo_peakEndDate}</p>
																      </div>
																      <div class="modal-footer">
																        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
																      </div>
																    </div>
																  </div>
																</div>
																
																<!-- Modal end -->
																
																<li>
																	<button style="width: 100%;" class="btn btn-outline-primary" type="submit" >예약</button>
																</li>
																</form>
															</ul>
															<!-- 성수기 end -->
															
														</div>
													</div>
												</c:forEach>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- -->
					</div>
				</div>
			</div>
		</div>
	</div>
			<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
				<!-- ...정보 -->
				<div id="info-div">
					<h3>기본정보</h3>
						<p>
						<c:forEach items="${infoList }" var="bean">
							${bean.information_notice}
						</c:forEach>
						</p>
				</div>
			</div>
			<div class="tab-pane fade" id="map" role="tabpanel" aria-labelledby="map-tab">
				<!-- 지도 -->
				<div>
					<h3>지도</h3>
					<p style="margin-top:-12px">
					    <em class="link">
					        <a href="javascript:void(0);" onclick="window.open('http://fiy.daum.net/fiy/map/CsGeneral.daum', '_blank', 'width=981, height=650')">
					            혹시 주소 결과가 잘못 나오는 경우에는 여기에 제보해주세요.
					        </a>
					    </em>
					</p>
					<div id="map" style="width:100%;height:350px;"></div>
				</div>
			</div>
			<div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
				<!-- ..리뷰 -->
				
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
	<%-- <div style="margin-top: 40px; box-sizing: border-box;">
								<h5>방 선택</h5>

								<c:forEach items="${detailList }" var="bean" varStatus="status">
									<div class="room">
										<div class="roominfo">
											<div style="margin: 10px 5px;">
												<img style="border-radius: 10px;" alt=""
													src="../../${bean.roomInfo_img }">
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
														<span>가격 </span> <input
															class="paymentOffPeak${status.index}"
															name="LReservInfo_payment" type="hidden"
															value="${bean.roomInfo_offPeakPrice }" /> <span
															class="offPeak${status.index}" style="float: right;">${bean.roomInfo_offPeakPrice }</span>
													</form>
													<button class="btn btn-outline-primary"
														style="float: right;"
														onclick="offPeakBuySubmit${status.index}(this);">예약</button>
												</div>
												<div class="div-peak${status.index}"
													style="font-size: 15px; padding-bottom: 5px; display: none;">
													<form name="peakform${status.index}" action="test"
														method="post">
														<span>가격 </span> <input class="paymentPeak${status.index}"
															name="LReservInfo_payment" type="hidden"
															value="${bean.roomInfo_peakPrice }" /> <span
															class="peak${status.index}" style="float: right;">${bean.roomInfo_peakPrice }</span>
														<button class="btn btn-outline-primary"
															style="width: 60%; margin-top: 10px; margin-left: 20%;"
															onclick="peakBuySubmit${status.index}(this);">예약</button>
													</form>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div> --%>
</body>
<script>
<!-- 
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
-->


/*  ///////////////////////////*/
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('${pin}', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
        console.log("coords:"+coords);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">${companyName}</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    

</script> 


</html>