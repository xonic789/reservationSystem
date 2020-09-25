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
		display: inline-block;
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
	
	/***************************************************************************************************/
	
	
	/* 기본정보 등록 start */
	#sub{
		margin-left:25px;
	}
	#form{
		margin-top: 10px;
		margin-left: 30px;
	}
	.form-group, .form-inline{
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
	.btnAdd{
		cursor:pointer;
		margin-left:10px;
		margin-bottom:0px;
		text-decoration:none;		
		display: inline-block;
		line-height: 4px;
		border: 0px;
	}
	.btnAdd:hover{
		background-color:#E3A1ED;
	}
	.btnRemove, .titleImgRemove{
		line-height: 8px;
	}
	.hashtag, .notice, .basic_info, .add_people, .service, .refund_info{
		width:705px;
		display:inline-block;
		margin-bottom:10px;
	}
	#submit{
		margin-top:50px;
	}
	
	/* 기본정보 등록 end */

	/***************************************************************************************************/

</style>
<script type="text/javascript">

/* 이미지 등록 시 미리보기 기능 */
function setThumbnail(event) { 
	var reader = new FileReader();
	reader.onload = function(event) {
		var img = document.createElement("img");
		img.setAttribute("src", event.target.result);
		document.querySelector("div#image_container").appendChild(img);
		}; 
		reader.readAsDataURL(event.target.files[0]); 
	}

/* 해쉬태그 등록 add input method (name, class ="notice") */
function addInputHashtag(){
	$('.addInputHashtag').append('<input type="text" class="form-control hashtag" name="hashtag" />\
							<button onclick="removeInput()" type="button" class="btnRemove btn btn-danger">삭제</button><br/>'
	);
}


/* 공지사항 등록 add input method (name, class ="notice") */
function addInputNotice(){
	$('.addInputNotice').append('<input type="text" class="form-control notice" name="notice" />\
							<button onclick="removeInput()" type="button" class="btnRemove btn btn-danger">삭제</button><br/>'
	);
}

/* 기본정보 등록 add input method (name, class ="basic_info") */
function addInputBasicInfo(){
	$('.addInputBasicInfo').append('<input type="text" class="form-control basic_info" name="basic_info" />\
							<button onclick="removeInput()" type="button" class="btnRemove btn btn-danger">삭제</button><br/>'
	);
}

/* 인원 추가정보 등록 add input method (name, class ="basic_info") */
function addInputAddPeople(){
	$('.addInputAddPeople').append('<input type="text" class="form-control add_people" name="add_people" />\
							<button onclick="removeInput()" type="button" class="btnRemove btn btn-danger">삭제</button><br/>'
	);
}

/* 편의시설 및 서비스 등록 add input method (name, class ="basic_info") */
function addInputService(){
	$('.addInputService').append('<input type="text" class="form-control service" name="service" />\
							<button onclick="removeInput()" type="button" class="btnRemove btn btn-danger">삭제</button><br/>'
	);
}

/* 취소 및 환불규정 등록 add input method (name, class ="basic_info") */
function addInputRefundInfo(){
	$('.addInputRefundInfo').append('<input type="text" class="form-control refund_info" name="refund_info" />\
							<button onclick="removeInput()" type="button" class="btnRemove btn btn-danger">삭제</button><br/>'
	);
}


/* 글 타이틀 사진 추가 */
function addTitleImg(){
	$('.titleImgFile').append('<input type="file" class="titleImg" name="titleImg" />\
							<button onclick="removetitleImg()" type="button" class="titleImgRemove btn btn-danger">삭제</button><br/>'
	);
}

/* 글 정보 태그 동적 추가된 input delete method */
function removeInput(){
	$('.btnRemove').on('click', function(){
		$(this).prev().remove();
		$(this).next().remove();
		$(this).remove();
	});
};

/* 타이틀 디테일 사진 동적 추가된 input delete method */
function removeTitleImg(){
	$('.titleImgRemove').on('click', function(){
		$(this).prev().remove();
		$(this).next().remove();
		$(this).remove();
	});
};



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
				<h2>숙박 게시글 등록</h2>
				<p id="sub">아래 입력박스들을 모두 기입해야 글 등록이 가능합니다<p>
				<form id="form" action="ladd" method="post">
				  <h4 class="infoTitle">기본정보 등록</h4>
				  
				  <div class="form-group">
				  	<label class="label_title" for="Lcategory">타입</label><br/>
				  	<div>
					  	<label class="radio-inline type_label">
						<input type="radio" name="Lcategory" id="hotel" value="hotel"> 호텔
						</label>
						<label class="radio-inline type_label">
						<input type="radio" name="Lcategory" id="motel" value="motel"> 모텔
						</label>
						<label class="radio-inline type_label">
						<input type="radio" name="Lcategory" id="Pension" value="Pension"> 펜션
						</label>
					</div>
				  </div>

					<div class="form-group">
						<label for="title" class="label_title">업체명</label>
						<p>계정에 사업자로 등록되어 있는 업체명이 표시되며 선택사항이 존재하지 않으면 글 등록에 제한됩니다</p>
						<div>
							<select class="form-control">
								<option>신라호텔</option>
								<option>단양 랄랄라 패러글라이딩</option>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label for="title" class="label_title">글 제목</label>
						<div>
							<input type="text" class="form-control" name="title" id="title" placeholder="글 제목을 입력하세요">
						</div>
					</div>
					
					<div class="form-group">
				    <label class="label_title" for="hashtag">해쉬태그</label>
					<a onclick="addInputHashtag()" class="btnAdd btn btn-primary">태그 추가</a>
				    <p>해쉬태그는 5개까지 등록 가능하며 앞에 '#' 을 붙여서 작성해주세요</p>
				    <div class="addInputHashtag">
				    	<input type="text" class="form-control hashtag" name="hashtag" placeholder="#욜로와단독"/>
					</div>
				  </div>


					<div class="form-group">
				      <label class="label_title" for="titleImg">타이틀 사진 등록</label>
					  <a onclick="addTitleImg()" class="btnAdd btn btn-primary">사진 추가 등록</a>
					  <p>1장 이상 등록 가능하며, 첫번째 사진은 해당 글 대표사진으로 등록됩니다</p>
				      <div class="titleImgFile">
						<input type="file" class="titleImg" name="titleImg" /><br/>
					  </div>
				    </div>

					<div class="form-group">
				    <label class="label_title" for="comment">사장님 한마디 등록</label>
				    <div>
					<textarea class="form-control" rows="3" name="comment" id="comment" placeholder="손님을 끌어들일 달콤한 멘트를 작성하세요"></textarea>
					</div>
				  </div>

				  <div class="form-group">
				    <label class="label_title" for="notice">공지사항 등록</label>
					<a onclick="addInputNotice()" class="btnAdd btn btn-primary" role="btn">태그 추가</a>
				    <div class="addInputNotice">
				    	<input type="text" class="form-control notice" name="notice" placeholder="공지사항 정보"/>
					</div>
				  </div>

				  <div class="form-group">
				    <label class="label_title" for="basic_info">기본정보 등록</label>
					<a onclick="addInputBasicInfo()" class="btnAdd btn btn-primary">태그 추가</a>
				    <div class="addInputBasicInfo">
				    	<input type="text" class="form-control basic_info" name="basic_info" placeholder="체크인아웃 정보 및 주차가능 여부 등"/>
					</div>
				  </div>

				  <div class="form-group">
				    <label class="label_title" for="add_people">인원 추가정보 등록</label>
					<a onclick="addInputAddPeople()" class="btnAdd btn btn-primary">태그 추가</a>
				    <div class="addInputAddPeople">
				    	<input type="text" class="form-control add_people" name="add_people" placeholder="인원추가 정보"/>
					</div>
				  </div>

				  <div class="form-group">
				    <label class="label_title" for="service">편의시설 및 서비스 등록</label>
					<a onclick="addInputService()" class="btnAdd btn btn-primary">태그 추가</a>
				    <div class="addInputService">
				    	<input type="text" class="form-control service" name="service" placeholder="편의시설 및 서비스"/>
					</div>
				  </div>

				  <div class="form-group">
				    <label class="label_title" for="refund_info">취소 및 환불규정 등록</label>
					<a onclick="addInputRefundInfo()" class="btnAdd btn btn-primary">태그 추가</a>
				    <div class="addInputRefundInfo">
				    	<input type="text" class="form-control refund_info" name="refund_info" placeholder="취소 및 환불규정"/>
					</div>
				  </div>
				  
				  
				  <button type="submit" class="submit btn btn-primary btn-lg btn-block">글 등록하기</button>				  
				</form>
			</div>
		</div>
	</div>
	<%@ include file="../template/footer.jspf"%>
</body>
</html>