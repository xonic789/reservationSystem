<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../template/head.jspf" %>
<style rel="stylesheet" type="text/css">
	.page-header{
		border-bottom: 1px solid gray;
		padding-top: 15px;
		padding-bottom: 25px;
	}
	#category{
		border-right: 1px solid gray;
	}
	#category>div:first-child{
		margin-top: 30px;
	}
	#category>div{
		margin-bottom: 15px;
		padding-right:15px;
	}
	#category>div:hover {
		background-color: lightgray;
		cursor: pointer;
	}
</style>
<script type="text/javascript">
</script>
</head>
<body>
<%@ include file="../template/header.jspf" %>
<%@ include file="../template/menu.jspf" %>
<div class="container">
	<div class="page-header">
		<p> 메인 페이지 > 호스트 페이지
		<h1>호스트 페이지 <small> Host page</small></h1>
	</div>
	<div class="row">
		<div id="category" class="col-md-3">
			<div>숙박 게시글 등록하기</div>
			<div>엑티비티 게시글 등록하기</div>
			<div>나의 게시글 리뷰 보기</div>
		</div>
		<div class="col-md-9">
		</div>
	</div>
</div>
<%@ include file="../template/footer.jspf" %>
</body>
</html>