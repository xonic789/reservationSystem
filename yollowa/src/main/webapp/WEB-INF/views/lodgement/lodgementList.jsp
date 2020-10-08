<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../template/head.jspf"%>
<style type="text/css">
/* category start */
.page-header{
		border-bottom: 1px solid lightgray;
		padding-top: 15px;
		padding-bottom: 25px;
	}
	.page-header>p{
		margin-top: 10px;
		margin-bottom:2px;
	}
	#category{
		border-right: 1px solid lightgray;
	}
	
	#category>div:first-child{
		margin-top: 30px;
	}
	#category>div{
		margin-bottom: 25px;
		padding-right:15px;
		font-size: 16px;
	}
	.custom-control-label{
		display: block;
		margin-bottom: 10px;
	}
	.custom-control-label:hover {
		background-color: #EEEEED;
		cursor: pointer;
	}
	#hostInfo{
		margin-top: 30px;
		margin-left: 20px;
	}
	.bigList>p{
		font-size: 18px;
		margin-bottom:5px;
	}
	.smallList{
		margin-left: 15px;
		margin-bottom: 5px;
	}
	.smallList>p {
		margin-bottom:8px;
	}
	.smallList>p>a{
		font-size:15px;
		text-decoration: none;
		display: block;
	}
	h2{
		font-size: 35px;
	}
/* category end */

/* context start */
#con{
	padding: 25px 0px 60px 20px;
}
h3{
	margin-bottom: 30px;
}
.form-search{
	display: inline-block;	
	margin-right:250px;
}
.search-query{
	width:285px;
	padding : 0px 12px 0px 12px;
	line-height: 28px;
	display: inline-block;
}
.searchBtn{
	line-height: 22px;
	display: inline-block;
}

.sort{
	display:inline-block;
	width:180px;
}

.oneLodge{
	width:252px;
	height: 269px;
	border: 1px solid lightgray;
	display: inline-block;
	margin-right:20px;
	margin-top: 30px;
	cursor: pointer;
}
.oneLodge:nth-child(3n){
	margin-right:0px;
}

.lodgeImgBox{
	width:252px;
	height: 144px;
	background-color: lightgray;
}
.type{
	padding: 5px 0px 0px 5px;
}
.sub{
	padding: 0px 12px 12px 12px;
	overflow: hidden;
}
.companyName{
	padding-top: 8px;
	font-size: 16px;
	overflow: hidden;
}
.price{
	padding-top: 20px;
	font-size: 18px;
	font-style: bold;
}
.reviewRate{
	color:#DCA60A;
}
/* context end */

</style>

<script type="text/javascript">
	$(document).ready(function(){
		<c:forEach items="${listAll}" begin="0" varStatus="num" var="bean">
			if($('.type${num.index}').text()=='hotel'){
				$('.type${num.index}').text('호텔')
			}else if($('.type${num.index}').text()=="motel"){
				$('.type${num.index}').text('모텔')
			}else if($('.type${num.index}').text()=="pension"){
				$('.type${num.index}').text("펜션")
			}else if($('.type${num.index}').text()=="resort"){
				$('.type${num.index}').text("리조트/콘도")
			}else if($('.type${num.index}').text()=="guest"){
				$('.type${num.index}').text("게스트하우스")
			}
		</c:forEach>

		
		<c:forEach items="${listAll}" begin="0" varStatus="num" var="bean">
			console.log($('.price${num.index}').text());
			console.log('lodgementNumber='+${bean.lodgement_number});
			var ln = "lodgementNumber="+${bean.lodgement_number};
			
			$.ajax({
				url:"list/priceSelect",
				data:ln,
				dataType:"json",
				type:"post",
				success:function(data){
					$('.price${num.index}').text(data);
					var price = $('.price${num.index}').text().replace(/\B(?=(\d{3})+(?!\d))/g,',');
					$('.price${num.index}').text('￦ '+price); 
				}
			});
			
			
		</c:forEach>
	
	
	});
	
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
		
		<div class="row">
			<div id="category" class="col-md-3">
				<div class="bigList arrowUp">
					<p>숙박 종류</p>
					<div class="smallList">
						<div class="custom-control custom-radio">
							<input type="radio" id="allLodgement" class="custom-control-input" name="lodList" value="allLodgement" checked="checked" onclick="allLodgementR();">
							<label class="custom-control-label" for="allLodgement">전체</label>
						</div>
						<!-- <div class="custom-control custom-radio">
					      <input type="radio" id="customRadio1" name="customRadio" class="custom-control-input" checked="">
					      <label class="custom-control-label" for="customRadio1">호텔</label>
					    </div> -->
						<div class="custom-control custom-radio">
							<input type="radio" id="hotel" class="custom-control-input" name="lodList" value="hotel" onclick="hotelR();">
							<label class="custom-control-label" for="hotel">호텔</label>
						</div>
						<div class="custom-control custom-radio">
							<input type="radio" id="motel" class="custom-control-input" name="lodList" value="motel" onclick="motelR();">
							<label class="custom-control-label" for="motel">모텔</label>
						</div>
						<div class="custom-control custom-radio">
							<input type="radio" id="pension" class="custom-control-input" name="lodList" value="pension" onclick="pensionR();">
							<label class="custom-control-label" for="pension">펜션</label>
						</div>
						<div class="custom-control custom-radio">
							<input type="radio" id="resort" class="custom-control-input" name="lodList" value="resort" onclick="resortR();">
							<label class="custom-control-label" for="resort">리조트/콘도</label>
						</div>
						<div class="custom-control custom-radio">
							<input type="radio" id="guest" class="custom-control-input" name="lodList" value="guest" onclick="guestR();">
							<label class="custom-control-label" for="guest">게스트하우스</label>
						</div>
					</div>
				</div>
				<!-- <div class="bigList arrowUp">
					<p>위치</p>
					<div class="smallList">
						<div>
							<input type="radio" id="allPlace" name="allPlace" value="allPlace" checked="checked"/>
							<label for="allPlace">전체</label>
						</div>
					</div>
				</div> -->
			</div>
			
			<div class="col-md-9">
				<div id="con">
					<h3>${cnt}건의 검색결과</h3>
					<div id="filter-2">
					  <div id="search" class="input-append span12">
						  <!-- 검색 form -->
						  <form id="custom-search-form" class="form-search">
							<input type="text" id="searchQuery" name="searchQuery" class="form-control search-query" placeholder="검색어를 입력하세요"/>
							<button class="btn btn-secondary searchBtn">
							  <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-search" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
								<path fill-rule="evenodd" d="M10.442 10.442a1 1 0 0 1 1.415 0l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1 1 0 0 1 0-1.415z"/>
								<path fill-rule="evenodd" d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z"/>
							  </svg>
							</button>
						  </form>
						<!-- 관련도 필터 form -->
						<span>정렬 : </span>
						<select class="form-control sort">
							<option>관련도순</option>
							<option>후기순</option>
							<option>좋아요순</option>
							<option>최신순</option>
						</select>	  	
					  </div>
					</div>
					
					<div id="lodgeList">
					<c:forEach items="${listAll}" begin="0" varStatus="num" var="bean"> 
						<div class="${bean.lodgement_category } allList oneLodge" onclick="location.href='detail/${bean.lodgement_number}'">
							<div class="lodgeImgBox">
							  <div class="type${num.index }">${bean.lodgement_category}</div>
							  <img alt="">
							</div>
 							<div class="sub">
							  <div class="companyName">${bean.lodgement_companyName}</div>
							  <span class="reviewRate">★ ${bean.lodgement_reviewGradeRate} </span><span> (리뷰 ${bean.lodgement_reviewCount}건)</span>
							  <div class="price price${num.index }">가격</div>
							</div>
						</div>
					</c:forEach>
						
						
					</div>

				</div>
			</div>
		</div>
	</div>
	<%@ include file="../template/footer.jspf"%>

</body>
</html>