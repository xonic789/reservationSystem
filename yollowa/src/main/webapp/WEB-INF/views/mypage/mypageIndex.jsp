<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YOLLOWA</title>
<%@ include file="../template/head.jspf" %>
<style type="text/css">
	.list-group{
		background-color: white;
	}
	.list{
		float:left;
		width:274px;
		list-style: none;
		padding: 0;
		margin: 0;
		}
	.card-body{
		font-size: 20px;
		padding: 10px;
	}
	.card{
		border-radius: 5px;
	}
	.card>img{
		overflow: hidden;
	}
	.table{
		width:70%;
		margin: 15px;
	}
	
</style>
</head>
<body>
<%@ include file="../template/header.jspf" %>
<%@ include file="../template/menu.jspf" %>
<div class="container">

<div class="page-header">
	<p>메인 페이지 > 마이 페이지</p>
	<h1>마이페이지  <small>  My Page</small></h1>
</div>
<div class="row">
<ul class="list">
<li>
	<div class="card mb-3">
	  <img style="height: 200px; width: 100%; display: block;" src="../resources/img/mypageImage.png" alt="">
	  <div class="card-body">
	    <p class="card-text" style="text-align: center;"><!-- ${user.name} -->XXX님</p>
	  </div>
	  <div class="card-body">
	    <a href="#" class="card-link">내 정보</a>
	    </div>
	    <div class="card-body">
	    <a href="#" class="card-link">장바구니</a>
	    </div>
	    <div class="card-body">
	    <a href="#" class="card-link">찜 목록</a>
	    </div>
	    <div class="card-body">
	    <a href="#" class="card-link">이용 내역</a>
	    </div>
	  </div>
	  </li>
		<li>
	<div class="card">
    <div class="card-body">
    <h4 class="card-title">내가 쓴 글</h4>
	    <a href="#" class="card-link">리뷰 모아보기</a>
    </div>
    <div class="card-body">
	    <a href="#" class="card-link">Q&A 모아보기</a>
    </div>
</div>
</li>
</ul>
</div>
</div>
<%@ include file="../template/footer.jspf" %>
</body>
</html>