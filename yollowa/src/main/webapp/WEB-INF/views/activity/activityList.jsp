<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<%@ include file="../template/head.jspf" %>
<style type="text/css">
	
	.nav-item{
		border-radius: 7px;
	}
	.nav-link{
		font-size:16px;
		
	}
	 .carousel-item,
	.carousel-inner,
	.carousel-inner img {
	  height: 100%;
	}
	.carousel-item {
	  text-align: center;
	}
	.carousel {
	  height: 600px;
	}
	.carousel-inner img {
	  width: 100%;
	}
	
	.col-md-6{
		border-left: 1px solid gray;
	}
	
	#title{
		text-align: center;
	}
	#title:after{
		content: "";
        display: block;
        width: 63%;
        border-bottom: 1px solid gray;
        margin: 20px auto;
	}
	
    .behclick-panel  .list-group {
   		margin-bottom: 0px;
	}
	.behclick-panel .list-group-item:first-child {
		border-top-left-radius:0px;
		border-top-right-radius:0px;
	}
	.behclick-panel .list-group-item {
		border-right:0px;
		border-left:0px;
	}
	.behclick-panel .list-group-item:last-child{
		border-bottom-right-radius:0px;
		border-bottom-left-radius:0px;
	}
	.behclick-panel .list-group-item {
		padding: 5px;
	}
	.behclick-panel .panel-heading {
		padding: 10px 15px;
        border-bottom: 1px solid transparent;
		border-top-right-radius: 0px;
		border-top-left-radius: 0px;
		border-bottom: 1px solid darkslategrey;
	}
	.behclick-panel .panel-heading:last-child{
		/* border-bottom: 0px; */
	}
	.behclick-panel {
		border-radius: 0px;
		border-right: 0px;
		border-left: 0px;
		border-bottom: 0px;
		box-shadow: 0 0px 0px rgba(0, 0, 0, 0);
	}
	.behclick-panel .radio, .checkbox {
		margin: 0px;
		padding-left: 10px;
	}
	.behclick-panel .panel-title > a, .panel-title > small, .panel-title > .small, .panel-title > small > a, .panel-title > .small > a {
		outline: none;
	}
	.behclick-panel .panel-body > .panel-heading{
		padding:10px 10px;
	}
	.behclick-panel .panel-body {
		padding: 0px;
	}
	
	.behclick-panel a:link {
	    text-decoration:none;
	}

	.behclick-panel a:visited {
	    text-decoration:none;
	}

	.behclick-panel a:hover {
	    text-decoration:none;
	}

	/* selected link */
	.behclick-panel a:active {
	    text-decoration:none;
	}
	/* 
	.container-fluid{
		padding-left:3%;
		
	}
 */	
	#search-right{
		margin-top:20px; 
		margin-left: 20px;
	} 
	
	#filter-1,#filter-2{
		display: inline-block;
	}
		
	#actiList>div{
		margin: 30px 10px;
		width:20%;
		background-color: gray;
		display: inline-block;
	}
	
	#actiList>div img{
		width: 100%;
	}
	
	#actiList div ul{
		padding-left:10px;
		list-style: none;
		color:white;
		margin: 5px 0px 10px;
		
	}
</style>
	<%-- 
	<c:url value="resources/css/bootstrap-slider.min.css" var="sliderCSS"/>
	<c:url value="resources/js/bootstrap-slider.min.js" var="sliderJS"/>
	<link rel="stylesheet" type="text/css" href="${sliderCSS }">
	<script type="text/javascript" src="${sliderJS }"/> 
	--%>
<script type="text/javascript">
	
	//카테고리
	function toggleChevron(e) {
		$(e.target).prev('.panel-heading').find("i.indicator").toggleClass('fa-caret-down fa-caret-right');
	}
	$('#accordion').on('hidden. bs.collapse', toggleChevron);
	$('#accordion').on('shown.bs.collapse', toggleChevron);
	
	//가격 슬라이더
	$("#set-amount").slider({});
	var slider = new Slider('#set-amount', {});
	
	
</script>

<meta charset="UTF-8">
<title>액티비티</title>
</head>
<body>
<%@ include file="../template/header.jspf" %>
<%@ include file="../template/menu.jspf" %>
	
	<div id="title">
		<img alt="" src="../resources/img/activity/activityMain.png">
	</div>
	
	<div>
	
		<div class="container">
		    <div class="row">
				<div class="col-md-3">
					<div id="accordion" class="panel panel-primary behclick-panel">
						<div class="panel-heading">
							<h3 class="panel-title">카테고리 선택</h3>
						</div>
						<div class="panel-body" >
							<div class="panel-heading " >
								<h4 class="panel-title">
									<a data-toggle="collapse" href="#collapse0">
										<i class="indicator fa fa-caret-down" aria-hidden="true"></i> 가격
									</a>
								</h4>
							</div>
							<div id="collapse0" class="panel-collapse collapse in" >
								<ul class="list-group">
									<li class="list-group-item">
										<div class="checkbox">
											<label>
												<input type="checkbox" value="">
												0 - 1000￦
											</label>
										</div>
									</li>
									<li class="list-group-item">
										<div class="checkbox" >
											<label>
												<input type="checkbox" value="">
												1000￦ - 2000￦
											</label>
										</div>
									</li>
									<li class="list-group-item">
										<div class="checkbox"  >
											<label>
												<input type="checkbox" value="">
												2000￦ - 6000￦
											</label>
										</div>
									</li>
									<li class="list-group-item">
										<div class="checkbox"  >
											<label>
												<input type="checkbox" value="">
												6000￦ -
											</label>
										</div>
									</li>
								</ul>
							</div>
		
							<div class="panel-heading " >
								<h4 class="panel-title">
									<a data-toggle="collapse" href="#collapse1">
										<i class="indicator fa fa-caret-down" aria-hidden="true"></i> 종류
									</a>
								</h4>
							</div>
							<div id="collapse1" class="panel-collapse collapse in" >
								<ul class="list-group">
									<li class="list-group-item">
										<div class="checkbox">
											<label>
												<input type="checkbox" value="">
												스카이다이빙
											</label>
										</div>
									</li>
									<li class="list-group-item">
										<div class="checkbox" >
											<label>
												<input type="checkbox" value="">
												수상레저
											</label>
										</div>
									</li>
									<li class="list-group-item">
										<div class="checkbox"  >
											<label>
												<input type="checkbox" value="">
												번지점프
											</label>
										</div>
									</li>
								</ul>
							</div>
							<div class="panel-heading" >
								<h4 class="panel-title">
									<a data-toggle="collapse" href="#collapse3"><i class="indicator fa fa-caret-down" aria-hidden="true"></i> abc</a>
								</h4>
							</div>
							<div id="collapse3" class="panel-collapse collapse in">
								<ul class="list-group">
									<li class="list-group-item">
										<div class="checkbox">
											<label>
												<input type="checkbox" value="">
												1
											</label>
										</div>
									</li>
									<li class="list-group-item">
										<div class="checkbox" >
											<label>
												<input type="checkbox" value="">
												2
											</label>
										</div>
									</li>
									<li class="list-group-item">
										<div class="checkbox"  >
											<label>
												<input type="checkbox" value="">
												3
											</label>
										</div>
									</li>
								</ul>
							</div>
							<div class="panel-heading" >
								<h4 class="panel-title">
									<a data-toggle="collapse" href="#collapse2"><i class="indicator fa fa-caret-right" aria-hidden="true"></i> ABC</a>
								</h4>
							</div>
							<div id="collapse2" class="panel-collapse collapse">
								<ul class="list-group">
									<li class="list-group-item">
										<div class="checkbox">
											<label>
												<input type="checkbox" value="">
												7
											</label>
										</div>
									</li>
									<li class="list-group-item">
										<div class="checkbox" >
											<label>
												<input type="checkbox" value="">
												8
											</label>
										</div>
									</li>
									<li class="list-group-item">
										<div class="checkbox">
											<label>
												<input type="checkbox" value="">
												9
											</label>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			
				<div class="col-md-9">
					<div id="search-right">
						<div id="filter-container">
							<h2>111건의 검색결과</h2>
							<div id="filter-1">
								<b>1000원</b> <input id="ex2" type="range" class="col-sm-2" value="" data-min="0" data-max="450,000" data-step="500" data-value="[250,450]"/> <b>100000원</b>
							</div>
							<div id="filter-2">
								<form id="custom-search-form" class="form-search form-horizontal pull-right">
					                <div class="input-append span12">
					                    <input type="text" class="search-query" placeholder="검색어를 입력하세요">
					                    <button type="submit" class="btn btn-primary">검색</button>
					                </div>
					            </form>
							</div>
						</div>
						<div id="actiList">
							<div>
								<img alt="" src="../resources/img/activity/jump.jpg">
								<ul>
									<li>방콕 스카이 발코니 뷔페</li>
									<li>★ 4.0 (리뷰 1234건)</li>
									<li>￦ 2,000</li>
								</ul>
							</div>
							
							<div>
								<img alt="" src="../resources/img/activity/jump.jpg">
								<ul>
									<li>방콕 스카이 발코니 뷔페</li>
									<li>★ 4.0 (리뷰 1234건)</li>
									<li>￦ 2,000</li>
								</ul>
							</div>
							
							<div>
								<img alt="" src="../resources/img/activity/jump.jpg">
								<ul>
									<li>방콕 스카이 발코니 뷔페</li>
									<li>★ 4.0 (리뷰 1234건)</li>
									<li>￦ 2,000</li>
								</ul>
							</div>
							
							<div>
								<img alt="" src="../resources/img/activity/jump.jpg">
								<ul>
									<li>방콕 스카이 발코니 뷔페</li>
									<li>★ 4.0 (리뷰 1234건)</li>
									<li>￦ 2,000</li>
								</ul>
							</div>
							
							<div>
								<img alt="" src="../resources/img/activity/jump.jpg">
								<ul>
									<li>방콕 스카이 발코니 뷔페</li>
									<li>★ 4.0 (리뷰 1234건)</li>
									<li>￦ 2,000</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<%@ include file="../template/footer.jspf" %>

</body>
</html>