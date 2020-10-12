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
.lodgementHref:hover{
	text-decoration: none;
	cursor: pointer;
}
.lodgementHref{
	color:black;
	cursor: pointer;
}
.con{
	padding-top:25px;
}
h3{
	margin-bottom: 30px;
}
.filterDiv{
	margin-bottom:30px;
}
.form-search{
	display: inline-block;	
	/* margin-right:242px; */
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
.allList{
	padding: 0px 10px 15px 10px;
}
.oneLodge{
	width:100%;
	border: 1px solid lightgray;
	display: inline-block;
	cursor: pointer;
}
/* .oneLodge:nth-child(3n){
	margin-right:0px;
} */

.lodgeImgBox{
	max-width: 100%;
	max-width: 100%;
	overflow:hidden;
	position: relative;
}
.titleImg{
	max-width: 100%;
	left:0;
	top:0;
	position: relative;
	display:block;
	z-index:1;
	padding: 0;
}
.map{
	background-color:rgba(100,100,100,0.5);
	color:white;
	width:100%;
	z-index:2;
	padding: 0px 5px 0px 5px;
	display:inline-block;
	position: absolute;
	top:167px;
	left:0px;
}
.mapSpan{
	color:white;
	width:100%;
	z-index:2;
	display:inline-block;
	position: absolute;
	top:167px;
	left:0px;
}
.type{
	z-index:2;
	background-color: black;
	color:white;
	display:inline-block;
	padding: 1px 8px 1px 8px;
	position: absolute;
	top:0px;
	left:0px;
}
.sub{
	padding: 0px 10px 6px 10px;
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

/* dropBox start */
.wrap-drop {
background:#e7ded5;
box-shadow:3px 3px 3px rgba(0,0,0,.2);
cursor:pointer;
width:100%;
float:right;
max-width:225px;
padding:1rem;
position:relative;
z-index:3;
display: inline-block;
line-height: 10px;
}

.wrap-drop::after {
border-color:#695d52 transparent;
border-style:solid;
border-width:10px 10px 0;
content:"";
height:0;
margin-top:-4px;
position:absolute;
right:1rem;
top:50%;
width:0;
}

.wrap-drop .drop {
background:#e7ded5;
box-shadow:3px 3px 3px rgba(0,0,0,.2);
display:none;
left:0;
list-style:none;
margin-top:0;
opacity:0;
padding-left:0;
pointer-events:none;
position:absolute;
right:0;
top:100%;
z-index:2;
}

.wrap-drop .drop li a {
color:#695d52;
display:block;
padding:1rem;
text-decoration:none;
}

.wrap-drop span {
color:#928579;
}

.wrap-drop .drop li:hover a {
background-color:#695d52;
color:#e7ded5;
}

.wrap-drop.active::after {
border-width:0 10px 10px;
}

.wrap-drop.active .drop {
display:block;
opacity:1;
pointer-events:auto;
}
/* dropBox end */

</style>

<script type="text/javascript">
	$(document).ready(function(){
		
		// Inspiration: https://tympanus.net/codrops/2012/10/04/custom-drop-down-list-styling/

		function DropDown(el) {
		    this.dd = el;
		    this.placeholder = this.dd.children('span');
		    this.opts = this.dd.find('ul.drop li');
		    this.val = '';
		    this.index = -1;
		    this.initEvents();
		}

		DropDown.prototype = {
		    initEvents: function () {
		        var obj = this;
		        obj.dd.on('click', function (e) {
		            e.preventDefault();
		            e.stopPropagation();
		            $(this).toggleClass('active');
		        });
		        obj.opts.on('click', function () {
		            var opt = $(this);
		            obj.val = opt.text();
		            obj.index = opt.index();
		            obj.placeholder.text(obj.val);
		            opt.siblings().removeClass('selected');
		            opt.filter(':contains("' + obj.val + '")').addClass('selected');
		        }).change();
		    },
		    getValue: function () {
		        return this.val;
		    },
		    getIndex: function () {
		        return this.index;
		    }
		};

		$(function () {
		    // create new variable for each menu
		    var dd1 = new DropDown($('#noble-gases'));
		    // var dd2 = new DropDown($('#other-gases'));
		    $(document).click(function () {
		        // close menu on document click
		        $('.wrap-drop').removeClass('active');
		    });
		});
	
		
		<c:forEach items="${listAll}" begin="0" varStatus="num" var="bean">
			if($('.type${num.index}').text()=='hotel'){
				$('.type${num.index}').text('호텔');
			}else if($('.type${num.index}').text()=="motel"){
				$('.type${num.index}').text('모텔');
			}else if($('.type${num.index}').text()=="pension"){
				$('.type${num.index}').text("펜션");
			}else if($('.type${num.index}').text()=="resort"){
				$('.type${num.index}').text("리조트/콘도");
			}else if($('.type${num.index}').text()=="guest"){
				$('.type${num.index}').text("게스트하우스");
			}
		</c:forEach>

		
		<c:forEach items="${listAll}" begin="0" varStatus="num" var="bean">
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
		$('.pension').show();
		$('.resort').show();
		$('.guest').show();
		
		$('h3').text($('.allList').length+"건의 검색결과");
	};
	
	function hotelR(){
		$('.motel').hide();
		$('.pension').hide();
		$('.resort').hide();
		$('.guest').hide();
		$('.hotel').show();
		
		$('h3').text($('.hotel').length+"건의 검색결과");
	};
	
	
	function motelR(){
		$('.hotel').hide();
		$('.pension').hide();
		$('.resort').hide();
		$('.guest').hide();
		$('.motel').show();
		
		$('h3').text($('.motel').length+"건의 검색결과");
	};
	
	
	function pensionR(){
		$('.hotel').hide();
		$('.motel').hide();
		$('.resort').hide();
		$('.guest').hide();
		$('.pension').show();
		
		$('h3').text($('.pension').length+"건의 검색결과");
	};
	function resortR(){
		$('.hotel').hide();
		$('.motel').hide();
		$('.pension').hide();
		$('.guest').hide();
		$('.resort').show();
		
		$('h3').text($('.resort').length+"건의 검색결과");
	};
	function guestR(){
		$('.hotel').hide();
		$('.motel').hide();
		$('.pension').hide();
		$('.resort').hide();
		$('.guest').show();
		
		$('h3').text($('.guest').length+"건의 검색결과");
	};
	
	// 관련도 순 선택
	function selectOption(me){
			
		if(($(me).text()=='후기순')){
			var items = $('.reviewCount').get();
			items.sort(function(a,b){
				var aa = $(a).text();
				var bb = $(b).text();
				
				return bb-aa;
			})
			$.each(items, function(idx,ele){
				$('.existShow').append($(ele).parent().parent().parent());
			})
		}else if(($(me).text()=='별점순')){
			var items = $('.reviewRate').get();
			items.sort(function(a,b){
				var Alength = $(a).text().length;
				var aa = $(a).text().substring(1,Alength);
				
				var Blength = $(b).text().length;
				var bb = $(b).text().substring(1,Blength);
				
				return bb-aa;
			});
			$.each(items, function(idx,ele){
				$('.existShow').append($(ele).parent().parent().parent());
			});
			
		}else if(($(me).text()=='가격높은순')){
			var items = $('.price').get();
			items.sort(function(a,b){
				var Alength = $(a).text().length;
				var keyA = $(a).text().substring(2,Alength).replaceAll(",","");
				console.log("A"+keyA);

				var Blength = $(b).text().length;
				var keyB = $(b).text().substring(2,Blength).replaceAll(",","");
				
			    return keyA-keyB;
			});
			$.each(items, function(idx, ele){
				$('.existShow').prepend($(ele).parent().parent().parent());
			});
			
			
		}else if(($(me).text()=='가격낮은순')){
			var items = $('.price').get();
			console.log(items);
			items.sort(function(a,b){
				var Alength = $(a).text().length;
				var keyA = $(a).text().substring(2,Alength).replaceAll(",","");
				console.log("A"+keyA);

				var Blength = $(b).text().length;
				var keyB = $(b).text().substring(2,Blength).replaceAll(",","");
				console.log("B"+keyB);
				
				/* if (keyB > keyA) return 1;
			    if (keyA > keyB) return -1; */
			    
			    console.log("return::"+(keyA-keyB));
			    return keyA-keyB;
			});
			console.log(items);
			
			$.each(items, function(idx, ele){
				$('.existShow').append($(ele).parent().parent().parent());
			});
			
			
		}else if(($(me).text()=='최신순')){
			
			var items = $('.filterLodgeNumber').get();
			items.sort(function(a,b){
				var aa = $(a).text();
				var bb = $(b).text();
				return aa-bb;
			});
			
			$.each(items,function(idx,ele){
				$('.existShow').prepend($(ele).parent().parent());
			});
		}
	};
		
	
	/* function searchFunction(search){
		if(event.keyCode==13){
			var searchVal = 'searchVal='+$(search).val();
			$.ajax({
				type:'GET',
				dataType: 'json',
				url: 'list/lodgementSearch',
				data: searchVal,
				success:function(data){
					console.log('성공'+data);
				},
				error:function(e){
					alert('실패'+e);
				}
			});
		}
	}; */
	
</script>

<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script> 
<script> AOS.init(); </script>


<meta charset="UTF-8">
<title>숙박</title>
</head>
<body>
	<%@ include file="../template/lodgeHeader.jspf"%>
	<%@ include file="../template/lodgeMenu.jspf"%>
	<div class="container">
		<div id="headerUp" class="page-header">
			<p>
				<a href="../">메인 페이지</a> > <a href="list"> 숙박 페이지</a>
			</p>
			<h1>
				<a class="lodgementHref" href="list">숙박 <small>Lodgement</small></a>
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
			<div class="con">
				<h3>${cnt}건의 검색결과</h3>
				<div class="row filterDiv">
					<div class="col-md-8">
						  <!-- 검색 form -->
						  <form action="./lodgeSearch" method="GET" class="form-search">
							<input type="text" id="searchQuery" name="searchQuery" class="form-control search-query" placeholder="검색어를 입력하세요" />
							<button type="submit" class="btn btn-secondary searchBtn">
							  <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-search" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
								<path fill-rule="evenodd" d="M10.442 10.442a1 1 0 0 1 1.415 0l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1 1 0 0 1 0-1.415z"/>
								<path fill-rule="evenodd" d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z"/>
							  </svg>
							</button>
						  </form>
					</div>
					<div class="col-md-4">
						<div class="wrap-drop" id="noble-gases">
						    <span>관련도순</span>
						    <ul class="drop">
						        <li><a onclick="selectOption(this);">후기순</a></li>
						        <li><a onclick="selectOption(this);">별점순</a></li>
						        <li><a onclick="selectOption(this);">가격높은순</a></li>
						        <li><a onclick="selectOption(this);">가격낮은순</a></li>
						        <li><a onclick="selectOption(this);">최신순</a></li>
						    </ul>
						</div>
					</div>
				</div>
				
				<div id="lodgeList" class="existShow row">
					<c:forEach items="${listAll}" begin="0" varStatus="num" var="bean"> 
						<div class="${bean.lodgement_category } allList col-md-4" onclick="location.href='detail/${bean.lodgement_number}'">
							<div class="oneLodge">
								<div class="lodgeImgBox">
								  <div class="type type${num.index }">${bean.lodgement_category}</div>
								  <img class="titleImg col-md" style="height:187px;" alt="" src="/lodgement/titleImg/${bean.lodgement_img }">
								  <div class="map">
									  <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-geo-alt" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
									    <path fill-rule="evenodd" d="M12.166 8.94C12.696 7.867 13 6.862 13 6A5 5 0 0 0 3 6c0 .862.305 1.867.834 2.94.524 1.062 1.234 2.12 1.96 3.07A31.481 31.481 0 0 0 8 14.58l.208-.22a31.493 31.493 0 0 0 1.998-2.35c.726-.95 1.436-2.008 1.96-3.07zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z"/>
									    <path fill-rule="evenodd" d="M8 8a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
									  </svg>
									  <span>${bean.lodgement_location }</span>
								  </div>
								</div>
								<div class="sub">
								  <div class="companyName">${bean.lodgement_companyName}</div>
								  <span class="reviewRate">★${bean.lodgement_reviewGradeRate} </span><span> (리뷰 </span><span class="reviewCount">${bean.lodgement_reviewCount}</span><span>건)</span>
								  <div class="price price${num.index }">등록된 방 없음</div>
								</div>
								<div class="filterLodgeNumber" style="display:none;">${bean.lodgement_number }</div>
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