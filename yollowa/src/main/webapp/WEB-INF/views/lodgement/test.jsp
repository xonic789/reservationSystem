<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="../template/head.jspf"%>
<style type="text/css">
.behclick-panel .panel-heading {
	padding: 10px 15px;
	border-bottom: 1px solid transparent;
	border-bottom: 1px solid darkslategrey;
}

/* upDown Fix start*/
#upDown{
	border: 1px solid black;
	position: fixed;
	top:400px;
	right: 200px;
	padding: 3px 6px;
}

/* upDown Fix end*/

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

#category {
	border-right: 1px solid lightgray;
}

#category>div:first-child {
	margin-top: 30px;
}

#category>div {
	margin-bottom: 25px;
	padding-right: 15px;
	font-size: 16px;
}

.smallList>p:hover {
	background-color: #EEEEED;
	cursor: pointer;
}

h2 {
	margin-top: 50px;
	margin-left: 20px;
}

.bigList>p {
	font-size: 18px;
	margin-bottom: 5px;
}

.smallList {
	margin-left: 15px;
	margin-bottom: 5px;
}

.smallList>p {
	margin-bottom: 8px;
}

.smallList>p>label>input {
	font-size: 15px;
	text-decoration: none;
}
/* category end */

/* 금액설정 폼 start */

#payAmount{
	padding: 0px 10px;
}
/* 금액설정 폼 end */

/* selected link */

#search-right {
	margin-top: 20px;
	margin-left: 20px;
}

#lodgeList>div {
	margin: 30px 10px;
	width: 30%;
	background-color: white;
	display: inline-block;
	box-shadow: 1px 1px 1px gray;
}

#lodgeList>div img {
	width: 100%;
}

#lodgeList div a ul {
	padding-left: 10px;
	list-style: none;
	color: black;
	margin: 5px 0px 10px;
}
#lodgeList div a{
	text-decoration: none;
}

#dropdownMenuButton1,#dropdownMenuButton2{
	margin-right:10px;
	float:left;
}

#searchQuery{
	margin-left: 50px;
	float: none;
}

#minPay,#maxPay{
	width: 100px;
	text-align: center;
}

</style>
<script type="text/javascript">
	
	// 카테고리 라디오 박스
	function allLodgementR(){
		$('.hotel').show();
		$('.motel').show();
		$('.pesion').show();
		$('.resort').show();
		$('.guest').show();
		
		$('h2').text($('.allList').length+"건의 검색결과");
	};
	
	function hotelR(){
		$('.hotel').show();
		$('.motel').hide();
		$('.pesion').hide();
		$('.resort').hide();
		$('.guest').hide();
		
		$('h2').text($('.hotel').length+"건의 검색결과");
	};
	
	
	function motelR(){
		$('.hotel').hide();
		$('.motel').show();
		$('.pesion').hide();
		$('.resort').hide();
		$('.guest').hide();
		
		$('h2').text($('.motel').length+"건의 검색결과");
	};
	
	
	function pensionR(){
		$('.hotel').hide();
		$('.motel').hide();
		$('.pesion').show();
		$('.resort').hide();
		$('.guest').hide();
		
		$('h2').text($('.pesion').length+"건의 검색결과");
	};
	
	
	function resortR(){
		$('.hotel').hide();
		$('.motel').hide();
		$('.pesion').hide();
		$('.resort').show();
		$('.guest').hide();
		
		$('h2').text($('.resort').length+"건의 검색결과");
	};
	function guestR(){
		$('.hotel').hide();
		$('.motel').hide();
		$('.pesion').hide();
		$('.resort').hide();
		$('.guest').show();
		
		$('h2').text($('.guest').length+"건의 검색결과");
	};
	
	
	
	
	
	/* 달력 */
	var today = new Date();
	var month,day;
	
	if(today.getDate()<10){
		day="0"+today.getDate();
	}else{
		day=today.getDate();
	}
	
	if(today.getMonth()<9){
		month="0"+(today.getMonth()+1);
	}else{
		month=today.getMonth()+1;
	}
	
	var msg = (today.getYear()+1900) +"-"+month+ "-"+day;
	
	$(function() {
		$('#currentDate').attr('value', msg);
		$('#currentDate').attr('min', msg);
	});
	
	/* 리스트 마우스 오버 */
	$(function() {
		$('#lodgeList>div').mouseover(function(){
			$(this).css('cursor','pointer').css('transform','translate(0,-5px)').css('box-shadow','3px 3px 3px gray');
		});
		
		$('#lodgeList>div').mouseleave(function(){
			$(this).css('cursor','none').css('transform','translate(0,0)').css('box-shadow','1px 1px 1px gray');
		});
	});
	
	/* updown button */
	$(function() {
		$('#upIcon').mouseover(function(){
			$(this).css('cursor','pointer');
		});
		
		$('#downIcon').mouseover(function(){
			$(this).css('cursor','pointer');
		});
		
	});
	
	
	
</script>

<meta charset="UTF-8">
<title>숙박</title>
</head>
<body>
	<%@ include file="../template/header.jspf"%>
	<%@ include file="../template/menu.jspf"%>
	<div class="container">
		<div id="headerUp" class="page-header">
			<p>
				<a href="../">메인 페이지</a> > 숙박 페이지
			</p>
			<h1>
				숙박 <small>Lodgement</small>
			</h1>
		</div>
		<div id="upDown">
			<a id="upIcon" href="#headerUp">
				<svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-chevron-double-up" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
				  <path fill-rule="evenodd" d="M7.646 2.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 3.707 2.354 9.354a.5.5 0 1 1-.708-.708l6-6z"/>
				  <path fill-rule="evenodd" d="M7.646 6.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 7.707l-5.646 5.647a.5.5 0 0 1-.708-.708l6-6z"/>
				</svg>
			</a><br/>
			<svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-dash" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
			  <path fill-rule="evenodd" d="M4 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 4 8z"/>
			</svg><br/>
			<a id="downIcon" href="#footer">
				<svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-chevron-double-down" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
				  <path fill-rule="evenodd" d="M1.646 6.646a.5.5 0 0 1 .708 0L8 12.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z"/>
				  <path fill-rule="evenodd" d="M1.646 2.646a.5.5 0 0 1 .708 0L8 8.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z"/>
				</svg>
			</a>
		</div>
		
		<div class="row">
			<div id="category" class="col-md-3">
				<div class="bigList arrowUp">
					<p>숙박 종류</p>
					<div class="smallList">
						<div>
							<input type="radio" id="allLodgement" name="lodList" value="allLodgement" checked="checked" onclick="allLodgementR();">
							<label for="allLodgement">전체</label>
						</div>
						<div>
							<input type="radio" id="hotel" name="lodList" value="hotel" onclick="hotelR();">
							<label for="hotel">호텔</label>
						</div>
						<div>
							<input type="radio" id="motel" name="lodList" value="motel" onclick="motelR();">
							<label for="motel">모텔</label>
						</div>
						<div>
							<input type="radio" id="pension" name="lodList" value="pension" onclick="pensionR();">
							<label for="pension">펜션</label>
						</div>
						<div>
							<input type="radio" id="resort" name="lodList" value="resort" onclick="resortR();">
							<label for="resort">리조트/콘도</label>
						</div>
						<div>
							<input type="radio" id="guest" name="lodList" value="guest" onclick="guestR();">
							<label for="guest">게스트하우스</label>
						</div>
					</div>
				</div>
				<div class="bigList arrowUp">
					<p>위치</p>
					<div class="smallList">
						<div>
							<input type="radio" id="allPlace" name="allPlace" value="allPlace" checked="checked"/>
							<label for="allPlace">전체</label>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-9">
				<div id="search-right">
					<h2>${cnt}건의 검색결과</h2>
					<div id="filter-2">
						<div id="search" class="input-append span12">
						
								<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false">예약가능 날짜</button>
								<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
									<form id="currentDate1">
										<input id="currentDate" type="date"/>
										<button type="submit" class="btn btn-primary">확인</button>
									</form>
								</div>
						
							<div class="dropdown">
								<button class="btn btn-secondary dropdown-toggle" type="button"
									id="dropdownMenuButton2" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false">가격대</button>
								<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
									<form id="payAmount" action="">
										<input type="text" id="minPay" name="minPay" class="search-query" placeholder="최소금액"/> -
										<input type="text" id="maxPay" name="maxPay" class="search-query" placeholder="최대금액"/>
										<button type="submit" class="btn btn-primary">확인</button>
									</form>
								</div>
							</div>
							<div>
								
							</div>
							<div>
								<form id="custom-search-form" class="form-search form-horizontal pull-right">
									<input type="text" id="searchQuery" name="searchQuery" class="search-query" placeholder="검색어를 입력하세요"/>
									<button class="btn btn-primary">
										<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-search" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
										  <path fill-rule="evenodd" d="M10.442 10.442a1 1 0 0 1 1.415 0l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1 1 0 0 1 0-1.415z"/>
										  <path fill-rule="evenodd" d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z"/>
										</svg>
									</button>
								</form>
							</div>	
						</div>
					</div>
					<div id="lodgeList">
						ddd
					</div>

				</div>
			</div>
		</div>
	</div>
	<%@ include file="../template/footer.jspf"%>

</body>
</html>