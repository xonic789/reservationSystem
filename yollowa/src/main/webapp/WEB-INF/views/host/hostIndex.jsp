<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../template/head.jspf" %>
<style rel="stylesheet" type="text/css">
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
	.smallList>p:hover {
		background-color: #EEEEED;
		cursor: pointer;
	}
	h2{
		margin-top: 50px;
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
	/* category end */
	
	
	/* content start */
	.list{
		height: 250px;
		border-bottom: 1px solid lightgray;
		margin-left: 50px;
		padding-top: 20px;
		padding-bottom: 25px;
	}
	.list>img{
		width: 260px;
		height: 200px;
		overflow: hidden;
		float: left;
		margin-right: 30px;
	}
	.listContent>p{
		margin-bottom:10px;
	}
	.listContent>h4{
		/* color: #460080; */
		margin-bottom: 20px;
	}
	.listContent>.hashtag{
		margin-bottom:0px;
		color:gray;
	}
	.modify>a{
		color: #1660A1;
	}
	.delete>a{
		color: #B81616;
	}
	.modify, .delete{
		display: inline-block;
		margin-top: 10px;
		margin-right: 20px;
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
		<p> <a href="../">메인 페이지</a> > 호스트 페이지 </p>
		<h1>호스트 페이지 <small> Host page</small></h1>
	</div>
	
	<div class="row">
		<div id="category" class="col-md-3">
				<div class="bigList">
					<p>글 보기</p>
					<div class="smallList">
						<p><a href="${pageContext.request.contextPath }/host/">내가 작성한 글</a></p>
					</div>
					<div class="smallList">
						<p><a href="${pageContext.request.contextPath }/host/">내가 작성한 글</a></p>
					</div>
					<div class="smallList">
						<p><a href="${pageContext.request.contextPath }/host/">내가 작성한 글</a></p>
					</div>
				</div>
				<div class="bigList">
					<p>글 등록하기</p>
					<div class="smallList">
						<p><a href="${pageContext.request.contextPath }/host/ladd">숙박 게시글 등록</a></p>
					</div>
					<div class="smallList">
						<p><a href="${pageContext.request.contextPath }/host/aadd">엑티비티 게시글 등록</a></p>
					</div>
				</div>
				<div class="bigList">
					<p>글 등록하기</p>
					<div class="smallList">
						<p><a href="">숙박 게시글 리뷰</a></p>
					</div>
					<div class="smallList">
						<p><a href="">엑티비티 게시글 리뷰</a></p>
					</div>
				</div>
			</div>
		<div class="col-md-9">
			<div id="lodgement"> 
			<h2 id="lodgementHeader">나의 숙박 글 리스트</h2>
				<div class="list">
					<img class="rounded" src="${pageContext.request.contextPath }/resources/img/hotel1.jpg">
					<div class="listContent">
						<p class="hashtag">#분위기깡패 #감성호텔 #조식제공</p>
						<h4>신라스테이 삼성</h4>
						<p>경기도 안산시 단원구 선부광장남로17</p>
						<p>평점 ★★★☆☆</p> 
						<p>후기 322개</p>
						<p class="modify"><a href="#">글 수정하기</a></p>
						<p class="delete"><a href="#">글 삭제하기</a></p>
					</div>
				</div>
				<div class="list">
					<img class="rounded" src="${pageContext.request.contextPath }/resources/img/hotel2.webp">
					<div class="listContent">
						<p class="hashtag">#욜로와단독 #고급호텔 #조식제공</p>
						<h4>서울 신라호텔</h4>
						<p>경기도 안산시 단원구 선부광장남로17</p>
						<p>평점 ★★★★☆</p> 
						<p>후기 569개</p>
						<p class="modify"><a href="#">글 수정하기</a></p>
						<p class="delete"><a href="#">글 삭제하기</a></p>
					</div>
				</div>
			</div>
			<div id="activity">
			<h2 id="activityHeader">나의 액티비티 글 리스트</h2>
				<div class="list">
					<img class="rounded" src="${pageContext.request.contextPath }/resources/img/activity1.webp">
					<div class="listContent">
						<p class="hashtag">#욜로와단독 #고급호텔 #조식제공</p>
						<h4>경복궁 한복대여&헤어스타일링 (한복남)</h4>
						<p>경기도 안산시 단원구 선부광장남로17</p>
						<p>평점 ★★★★☆</p> 
						<p>후기 839개</p>
						<p class="modify"><a href="#">글 수정하기</a></p>
						<p class="delete"><a href="#">글 삭제하기</a></p>
					</div>
				</div>
				<div class="list">
					<img class="rounded" src="${pageContext.request.contextPath }/resources/img/activity2.webp">
					<div class="listContent">
						<p class="hashtag">#부산요트 #반려견동반가능 #어드벤처 #아웃도어</p>
						<h4>부산 럭셔리 요트 체험</h4>
						<p>경기도 안산시 단원구 선부광장남로17</p>
						<p>평점 ★★★★☆</p> 
						<p>후기 134개</p>
						<p class="modify"><a href="#">글 수정하기</a></p>
						<p class="delete"><a href="#">글 삭제하기</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../template/footer.jspf" %>
</body>
</html>