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

#actiList>div {
	margin: 30px 10px;
	width: 30%;
	background-color: white;
	display: inline-block;
	box-shadow: 1px 1px 1px gray;
}

#actiList>div img {
	width: 100%;
}

#actiList div a ul {
	padding-left: 10px;
	list-style: none;
	color: black;
	margin: 5px 0px 10px;
}
#actiList div a{
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
	
	/* 달력 */
	var today = new Date();
	var msg = (today.getYear()+1900) +"-0"+(today.getMonth()+1)+ "-"+today.getDate();

	$(function() {
		$('#currentDate').attr('value', msg);
		$('#currentDate').attr('min', msg);
	});
	
	/* 리스트 마우스 오버 */
	$(function() {
		$('#actiList>div').mouseover(function(){
			$(this).css('cursor','pointer').css('transform','translate(0,-5px)').css('box-shadow','3px 3px 3px gray');
		});
		
		$('#actiList>div').mouseleave(function(){
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
	
	
	/* 카테고리 */
	/* $(function() {
		
		$('#category>.bigList').on('click',function(){
			
			if(document.querySelector(".bigList").className == 'bigList arrowUp'){
				$(this).find('.smallList').stop().slideDown(800);
				$(this).removeClass('arrowUp').addClass('arrowDown');
			}else{
				$(this).find('.smallList').stop().slideUp(800);
				$(this).removeClass('arrowDown').addClass('arrowUp');
			}
			
		}); */
		/* $('#category>.bigList').on('click',function(){
			if($(this).find('.smallList'))
			$(this).find('.smallList').stop().slideUp(800);
		});
	});
 */
		
	
	
</script>

<meta charset="UTF-8">
<title>액티비티</title>
</head>
<body>
	<%@ include file="../template/header.jspf"%>
	<%@ include file="../template/menu.jspf"%>
	<div class="container">
		<div id="headerUp" class="page-header">
			<p>
				<a href="../">메인 페이지</a> > 액티비티 페이지
			</p>
			<h1>
				액티비티 <small>Activity</small>
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
					<p>액티비티 종류</p>
					<div class="smallList">
						<p><label><input type="checkbox" name="color" value="blue">스키</label></p>
						<p><label><input type="checkbox" name="color" value="blue">번지점프</label></p>
						<p><label><input type="checkbox" name="color" value="blue">레프팅</label></p>
						<p><label><input type="checkbox" name="color" value="blue">수상레저</label></p>
					</div>
				</div>
				<div class="bigList arrowUp">
					<p>위치</p>
					<div class="smallList">
						<p><label><input type="checkbox" name="color" value="blue">서울</label></p>
						<p><label><input type="checkbox" name="color" value="blue">경기도</label></p>
						<p><label><input type="checkbox" name="color" value="blue">대구</label></p>
						<p><label><input type="checkbox" name="color" value="blue">부산</label></p>
					</div>
				</div>
			</div>
			
			<div class="col-md-9">
				<div id="search-right">
					<h2>${count}건의 검색결과</h2>
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
					<div id="actiList">
					<c:forEach items="${list}" var="bean"> 
						<div>
							<a href="detail/${bean.activity_number }">
								<img alt="" src="../${bean.activity_img }">
								<ul>
									<li>${bean.activity_title}</li>
									<li>★ ${bean.activity_reviewGradeRate} (리뷰 ${bean.activity_reviewCount}건)</li>
								</ul>
							</a>
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