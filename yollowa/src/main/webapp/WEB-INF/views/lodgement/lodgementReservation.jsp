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
</style>
<script type="text/javascript">

</script>

<meta charset="UTF-8">
<title>숙박</title>
</head>
<body>
	<%@ include file="../template/header.jspf"%>
	<%@ include file="../template/menu.jspf"%>
	예약페이지
	
	
	<%@ include file="../template/footer.jspf"%>
</body>


</html>