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
	/* category end */
	
	
	/* content start */
	h2{
		font-size: 35px;
	}
	.list{
		margin-left:20px;
		padding-top:20px;
		padding-bottom:25px;
	}
	#sub{
		margin-top:20px;
		margin-bottom:50px;
	}
	h4{
		padding-bottom:5px;
		border-bottom: 2px solid lightgray;
	}
	h5{
		padding : 3px 0px 3px 10px;
		margin-top: 20px;
		margin-bottom:15px;
		display:inline-block;
		border-left: 2px solid #B167CF;
	}
	.title{
		display:inline-block;
		padding-top:3px;
		padding-bottom:3px;
		border-right: 2px solid lightgray;
		width: 150px;
		line-height: 30px;
		margin-bottom:15px;
	}
	.inputCon{
		margin-left: 20px;
	}
	.form-control{
		display:inline-block;
		width:615px;
	}
	/* .list{
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
	} */
	
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
		<p>${userVo.user_name }님 호스트 페이지 입니다.</p>
	</div>
	<div class="row">
		<div id="category" class="col-md-3">
				<div class="bigList">
					<p>글 보기</p>
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
				</div>
			</div>
		<div class="col-md-9">
		<div id="hostInfo">
			<h2>나의 글 정보</h2>
			<p id="sub">사업자께서 등록하신 욜로와 글 등록 정보입니다.</p>
			<h4>숙박 게시글 정보</h4>
			<c:forEach items="${lodgementList }" var="lodgeList">
			<h5>${lodgeList.lodgement_companyName }</h5><br/>
			<div class="list">
				<form class="form">
					<div class="title">업체명</div><input type="text" class="inputCon form-control" value="${lodgeList.lodgement_companyName }" disabled="disabled"></input>
					<div class="title">위치</div><input type="text" class="inputCon form-control" value="${lodgeList.lodgement_location }" disabled="disabled"></input>
					<div class="title">해쉬태그</div><input type="text" class="inputCon form-control" value="${lodgeList.lodgement_hashTag }" disabled="disabled"></input>
					<div class="title">타이틀 이미지</div><input type="file" class="inputCon" value="${lodgeList.lodgement_img }"/>
					
				</form>
			</div>
			</c:forEach>
			
		</div>		
		
		
		
		
		
		
			<%-- <div id="lodgement"> 
			<h2 id="lodgementHeader">${userVo.user_name }님의 숙박 글목록</h2>
				<c:forEach items="${lodgementList }" var="lodgeList">
				<div class="list">
					<img class="rounded" src="${pageContext.request.contextPath }/resources/img/hotel1.jpg">
					<div class="listContent">
						<p class="hashtag">${lodgeList.lodgement_hashTag }</p>
						<h4>${lodgeList.lodgement_companyName }</h4>
						<p>${lodgeList.lodgement_location }</p>
						<p>평점 ★★★☆☆</p> 
						<p>후기 322개</p>
						<p class="modify"><a href="#">글 수정하기</a></p>
						<p class="delete"><a href="#">글 삭제하기</a></p>
					</div>
				</div>
				</c:forEach>
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
			</div> --%>
		</div>
	</div>
</div>
<%@ include file="../template/footer.jspf" %>
</body>
</html>