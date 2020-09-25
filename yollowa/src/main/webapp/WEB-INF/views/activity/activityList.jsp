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

.smallList>p>a {
	font-size: 15px;
	text-decoration: none;
	display: block;
}
/* category end */

/* selected link */

#search-right {
	margin-top: 20px;
	margin-left: 20px;
}

#filter-1, #filter-2 {
	display: inline-block;
}

#actiList>div {
	margin: 30px 10px;
	width: 20%;
	background-color: gray;
	display: inline-block;
}

#actiList>div img {
	width: 100%;
}

#actiList div ul {
	padding-left: 10px;
	list-style: none;
	color: white;
	margin: 5px 0px 10px;
}

#search{
	margin: 0px auto;
}


.smallList{
/* 	display: none;
 */}

#minPay,#maxPay{
	width: 100px;
	text-align: center;
}
#search{
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
	
	
</script>

<meta charset="UTF-8">
<title>액티비티</title>
</head>
<body>
	<%@ include file="../template/header.jspf"%>
	<%@ include file="../template/menu.jspf"%>
	<div class="container">
		<div class="page-header">
			<p>
				<a href="../">메인 페이지</a> > 액티비티 페이지
			</p>
			<h1>
				액티비티 <small>Activity</small>
			</h1>
		</div>
		<div class="row">
			<div id="category" class="col-md-3">
				<div class="bigList arrowUp">
					<p>종류</p>
					<div class="smallList">
						<p><label><input type="checkbox" name="color" value="blue">수상스키</label></p>
						<p><label><input type="checkbox" name="color" value="blue">번지점프</label></p>
						<p><label><input type="checkbox" name="color" value="blue">스키</label></p>
					</div>
				</div>
				<div class="bigList arrowUp">
					<p>여행지</p>
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
					<h2>111건의 검색결과</h2>
					<div>
						<div id="filter-2">
							<form id="custom-search-form"
								class="form-search form-horizontal pull-right">
								<div id="search" class="input-append span12">
									<input type="text" id="search" name="search" class="search-query" placeholder="검색어를 입력하세요"/>
									<button type="submit" class="btn btn-primary">검색</button>
									<br/>가격대
									<input type="text" id="minPay" name="minPay" class="search-query" placeholder="최소금액"/> -
									<input type="text" id="maxPay" name="maxPay" class="search-query" placeholder="최대금액"/>
									&nbsp;&nbsp;&nbsp;					
									
									<div class="btn-group">
									  <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									    Action
									  </button>
									  <div class="dropdown-menu">
									    <a class="dropdown-item" href="#">Action</a>
									    <a class="dropdown-item" href="#">Another action</a>
									    <a class="dropdown-item" href="#">Something else here</a>
									    <div class="dropdown-divider"></div>
									    <a class="dropdown-item" href="#">Separated link</a>
									  </div>
									</div>			
									
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
	<%@ include file="../template/footer.jspf"%>

</body>
</html>