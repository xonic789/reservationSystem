<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="../template/head.jspf"%>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

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
	font-size:50px;
}
h3{
	margin-bottom: 15px;
}

h3:first-letter {
	padding-left: 10px;
	border-left: 2px solid purple;
}


.quantity-style{
     text-align: center;  
     min-width: 38px; 
     max-width: 38px;
}

.quantity-wrapper{
     width: 38px; 
}

/* 객실 예약 */
.room{
	border: 1px solid lightgray;
	border-radius:10px;
	padding: 10px 10px; 
	margin: 20px 100px;

}


.roominfo>div>img{
	height: 170px;
}

.roominfo>div{
	display:inline-block;
	margin-right: 30px;
}

.roominfo>div+div{
}


#map-div,#info-div,#review-div{
	padding-top: 20px;
	padding-bottom:20px;
	border-top: 1px solid lightgray;

}

/* 리뷰css */
.review-div{
	margin-top: 20px;
}
.review-box{
	padding:10px 20px;
	margin-bottom:30px;
	background-color: #F7F3FF ;
	border-radius: 10px;
}

.review-writer{
	font-style:italic;
	font-size: 15px;
}

.review-writedDateA{
	float: right;
}

</style>
<script type="text/javascript">

	/* 달력 */
	/* 
	function nalja(n){
		var nal = $(n).prev().val();
		
		$.ajax({
			type:'get',
			data:{
				nal:nal
			},
			url:'./'
		});
		
		console.log(nal);
		document.currentDate1.submit();
	};
	 */
	 $(document).ready(function() {
		 $("#datepicker").val($.datepicker.formatDate('yy-mm-dd',new Date()));
	 });
	 
	 // 날짜 선택
	 function picker(a){

		 var num = "articleNum="+$('#articleNumber').val()+"&selectDate="+$(a).val();
		
		$.ajax({
			type:'post',
			dataType : 'json',
			data:num,
			url:$('#articleNumber').val()+"/ajax",
			
			success:function(s){
				
				$.each(s,function(idx,val){
					var bool=false;
					
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
		
		
		/* <c:forEach items="${roomList}" var="bean" varStatus="status">

			console.log($(('.offPeak${status.index}')).text()); // 비성수기
			console.log($(('.peak${status.index}')).text()); // 성수기
		</c:forEach> */


	 };
	 
	 $(function(){
		  $( "#datepicker" ).datepicker({
			  dateFormat: "yy-mm-dd"
		  });
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
			<c:forEach items="${detailList }" var="bean">
				<h2>${bean.lodgement_companyName}</h2>
			</c:forEach>
				<div id="infoList">
					<div class="jumbotron">
						<h3>객실 예약</h3>
							<input id="articleNumber" type="hidden" value="${article}" />
						<div id="package-div-option">
							<div id="dateDiv">
								<input id="datepicker" class="btn btn-primary"  aria-labelledby="dropdownMenuButton" 
									role="btn" name="nal" type="text" readonly="readonly" placeholder="예약가능 날짜" onchange="picker(this);"/>
							</div>
							
							<div style="margin-top:40px;box-sizing: border-box; ">
								<h5>방 선택</h5>
								
								<c:forEach items="${roomList }" var="bean" varStatus="status">
								<div class="room">
									<div class="roominfo" >
										<div style="margin:10px 5px;">
											<img alt="" src="../../${bean.roomInfo_img }">
										</div>
										<div style="width: 40%;">
											<div style="font-size: 20px;">
												<p style="padding:5px auto;">${bean.roomInfo_name }</p>
											</div>
											<div class="div-offPeak${status.index}" style="border-bottom: 1px solid lightgray;font-size: 15px;padding-bottom:5px;">
												<form name="offPeakform${status.index}" action="test" method="post"  >
													<span>가격 </span>
													<input class="paymentOffPeak${status.index}" name="LReservInfo_payment" type="hidden" value="${bean.roomInfo_offPeakPrice }"/>
													<span class="offPeak${status.index}" style="float: right;">${bean.roomInfo_offPeakPrice }</span>
													<button style="width: 60%;  margin-top: 10px; margin-left:20%;" onclick="offPeakBuySubmit${status.index}(this);" >예약</button>
												</form>
											</div>
											<div class="div-peak${status.index}" style="border-bottom: 1px solid lightgray;font-size: 15px;padding-bottom:5px; display: none;">
												<form name="peakform${status.index}" action="test" method="post"  >
													<span>가격 </span>
													<input class="paymentPeak${status.index}" name="LReservInfo_payment" type="hidden" value="${bean.roomInfo_peakPrice }" />
													<span class="peak${status.index}" style="float: right;">${bean.roomInfo_peakPrice }</span>
													<button style="width: 60%;  margin-top: 10px; margin-left:20%;" onclick="peakBuySubmit${status.index}(this);" >예약</button>
												</form>
											</div>
										</div>
									</div>
								</div>
								</c:forEach>
								
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

					<div id="review-div" >
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