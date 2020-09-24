<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../template/head.jspf"%>
<style rel="stylesheet" type="text/css">
	/* category start */
	.page-header {
		border-bottom: 1px solid gray;
		padding-top: 15px;
		padding-bottom: 25px;
	}
	
	#category {
		border-right: 1px solid gray;
	}
	
	#category>div:first-child {
		margin-top: 30px;
	}
	
	#category>div {
		margin-bottom: 25px;
		padding-right: 15px;
		font-size: 16px;
	}
	
	#category>div:hover {
		background-color: lightgray;
		cursor: pointer;
	}
	
	h2 {
		margin-top: 50px;
		margin-left: 20px;
	}
	/* category end */
	
	/* content start */
	#form{
		margin-top: 10px;
		margin-left: 30px;
	}
	.form-group{
		margin-left:15px;
		margin-bottom:30px;
	}
	.form-group > div{
		margin-left:15px;
	}
	.label_title{
		font-size:16px;
	}
	.infoTitle{
		margin-top: 40px;
		margin-bottom: 30px;
		padding-bottom: 10px;
		border-bottom: 1px solid lightgray;
	}
	.type_label{
		margin-right:15px;
	}
	#image_container{
		margin-top:20px;
	}
	#image_container>img{
		border-radius:10px;
		margin-right:15px;
		width:120px;
		height:120px;
	}
</style>
<script type="text/javascript">
function setThumbnail(event) { 
	var reader = new FileReader();
	reader.onload = function(event) {
		var img = document.createElement("img");
		img.setAttribute("src", event.target.result);
		document.querySelector("div#image_container").appendChild(img);
		}; 
		
		reader.readAsDataURL(event.target.files[0]); 
	}
	

</script>
</head>
<body>
	<%@ include file="../template/header.jspf"%>
	<%@ include file="../template/menu.jspf"%>
	<div class="container">
		<div class="page-header">
			<p>
				<a href="../">메인 페이지</a> > 호스트 페이지
			</p>
			<h1>
				호스트 페이지 <small> Host page</small>
			</h1>
		</div>
		<div class="row">
			<div id="category" class="col-md-3">
				<div>
					<a href="${pageContext.request.contextPath }/host/">내가 작성한 글</a>
				</div>
				<div>
					<a href="${pageContext.request.contextPath }/host/ladd">숙박 게시글 등록</a>
				</div>
				<div>
					<a href="${pageContext.request.contextPath }/host/aadd">엑티비티 게시글 등록</a>
				</div>
				<div>
					<a href="">나의 게시글 리뷰</a>
				</div>
			</div>
			<div class="col-md-9">
				<h2>숙박 게시글 등록</h2>
				<form id="form">
				  <h4 class="infoTitle">기본정보 등록</h4>
				  
				  <div class="form-group">
				  	<label class="label_title" for="type">타입</label><br/>
				  	<div>
					  	<label class="radio-inline type_label">
						<input type="radio" name="type" id="hotel" value="hotel"> 호텔
						</label>
						<label class="radio-inline type_label">
						<input type="radio" name="type" id="motel" value="motel"> 모텔
						</label>
						<label class="radio-inline type_label">
						<input type="radio" name="type" id="Pension" value="Pension"> 팬션
						</label>
					</div>
				  </div>
				  
				  <div class="form-group">
				  	<label for="title" class="label_title">글 제목</label>
				  	<div>
				  		<input type="text" class="form-control" name="title" id="title" placeholder="글 제목을 입력하세요">
				  	</div>
				  </div>


					<div class="form-group">
				  	<label class="label_title">제목사진 등록</label><br/>
				  	<div>
					  	<input type="file" id="image" accept="image/*" onchange="setThumbnail(event);"/> 
					  	<div id="image_container"></div>
				  	</div>
				  </div>
				  
				  <div class="form-group">
				    <label class="label_title" for="exampleInputEmail1">사장님 한마디</label>
				    <div>
					<textarea class="form-control" rows="3" placeholder="ex) 한국의 전통적인 분위기와 모던한 실내 인테리어가 조화를 이루는 한옥 호텔형 펜션입니다.
아트밸리, 아침고요수목원, 베어스타운스키장, 허브 아일랜드 등 다양한 관광지가 있습니다."></textarea>
					</div>
				  </div>
				  
				  
				  <button type="submit" class="btn btn-default">Submit</button>
				</form>
			</div>
		</div>
	</div>
	<%@ include file="../template/footer.jspf"%>
</body>
</html>