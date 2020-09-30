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
	h2{
		font-size: 35px;
	}
	/* category end */
	
	
	/* content start */
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
		color: #7F23A4;
		padding : 3px 0px 3px 10px;
		margin-top: 20px;
		margin-bottom:15px;
		margin-right: 20px;
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
		display:inline-block;
		margin-left: 20px;
	}
	.form-control{
		display:inline-block;
		width:610px;
	}
	.btns{
		text-align: right;
	}
	.btn-outline-primary{
		margin-right:10px;
	}
	.btn-outline-danger{
		margin-left:5px;
	}
	.imgInput{
		
	}
	.titleImgFile{
		display: inline-block;
	}
	.btnAdd{
		width:120px;
		hight: 500px;
		cursor:pointer;
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
		margin-left:5px;
	}
	#location{
		display: inline-block;
	}
	.inputHash{
		width:545px;
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
	$(document).ready(function(){
		if($('.temp').val()==0){
			$('.temp').val("관리자 승인이 대기중인 글입니다");
		}else if($('.temp').val()==1){
			$('.temp').val("관리자 승인이 완료된 글입니다. 정상적으로 등록이 완료되었습니다.")
		}
		
		var jumbo = '<div class="jumbotron">';
		jumbo+='<h1 class="display-6">등록된 숙박 게시글이 존재하지 않습니다.</h1>';
		jumbo+='<hr class="my-4">';
		jumbo+='<p class="lead">욜로와에 자신의 숙박업소에 대한 글 작성하기!</p>';
		jumbo+='<a class="btn btn-primary" href="#" role="button">숙박 게시글 등록</a>';
		jumbo+='</div>';
		
		if($('.inputCon').val()==null){
			$('#hostInfo').append(jumbo);
		}
		
	});
	
	/* 수정 버튼 클릭 이벤트 */
	function modiClick(a){
		var number = $(a).next().val();
		if($(a).text()=='수정'){
			$('.lodgemodifyEl'+number).attr('disabled', false);
			$(a).text('수정 완료');
			
			var divNum = number-1;
			
			// 클래스의 마지막이 0 인 것들은 속성변화
			$('.imgInput'+number+0).prev().text('타이틀 사진 등록');
			$('.imgInput'+number+0).attr('type','file');
			$('.imgInput'+number+0).attr('accept','.jpg, .jpeg, .png, .webp');
			$('.imgInput'+number+0).css('width','610px');
			$('.imgInput'+number+0).removeClass('form-control');
			$('.imgDiv'+divNum).append('<a onclick="addTitleImg('+divNum+')" class="btnAdd btn btn-primary">사진추가 버튼</a>');	
			$('.inputCon').css('margin-left','15px');
			
			// 클래스의 마지막이 1 이상인 것들은 삭제
			for(var i=1; i<100; i++){
				$('.imgInput'+number+i).prev().remove();
				$('.imgInput'+number+i).remove();
			}

			/* 해시태그 동적 변환 */
			$('.hashDiv'+divNum).append('<a onclick="addInputHashtag('+divNum+')" class="btnAdd btn btn-primary">태그추가 버튼</a>');	
			$('.').css('width','500px');
			
			
			/* 위치 수정 
			var location = '<input type="text" class="location'+number+' form-control" name="lodgement_location" id="sample5_address" placeholder="주소">';
			location += '<input type="button" class="btn btn-primary" onclick="sample5_execDaumPostcode()" value="주소 검색"><br>';
			location += '<div id="map" style="width:100%;height:300px;margin-top:10px;display:none"></div>';
			
			$('.location'+number).prev().text('위치 등록');
			
			$('.loc'+number).remove();
			$('.location'+number).append(location);
			$('#sample5_address').css('width','520px');
			$('#sample5_address').css('margin-left','15px');
			$('#sample5_address').css('margin-right','10px'); */
			
			
		}else if($(a).text()=='수정 완료'){
			$(a).attr('href','ladd');
		}
	}
	
	/* 글 타이틀 사진 추가 */
	function addTitleImg(divNum){
		$('.titleImgFile'+divNum).append('<div class="title">타이틀 사진 등록</div><input type="file" id="titleImg" class="inputCon" name="lodgement_img" value="${requestScope[titleName] }" />\
								<button onclick="removetitleImg()" type="button" class="titleImgRemove btn btn-danger">삭제</button><br/>'
		);
	}

	/* 해쉬태그 등록 add input method (name, class ="notice") */
	function addInputHashtag(divNum){
		$('.hashBox'+divNum).append('<div class="title hashDiv${num.index }">해시태그 추가</div><input type="text" class="inputCon inputHash form-control" name="lodgement_hashTag" value="${requestScope[hashTagName] }" />\
								<button onclick="removeInput()" type="button" class="btnRemove btn btn-danger">삭제</button><br/>'
		);
	}
	
	/* 타이틀 디테일 사진 동적 추가된 input delete method */
	function removetitleImg(){
		$('.titleImgRemove').on('click', function(){
			$(this).prev().remove();
			$(this).prev().remove();
			$(this).next().remove();
			$(this).remove();
		});
	};
	
	/* 글 정보 태그 동적 추가된 input delete method */
	function removeInput(){
		$('.btnRemove').on('click', function(){
			$(this).prev().remove();
			$(this).prev().remove();
			$(this).next().remove();
			$(this).remove();
		});
	};
	
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
			</div>
		<div class="col-md-9">
		<div id="hostInfo">
			<h2>나의 글 정보</h2>
			<p id="sub">사업자께서 등록하신 욜로와 글 등록 정보입니다.</p>
			<h4>숙박 게시글 정보</h4>
			<c:forEach items="${lodgementList }" begin="0" varStatus="num" var="lodgeList">
			
			<!-- String path = "/upload/lodgement/titleImg/";
			ServletContext context = req.getSession().getServletContext();
			String realPath = context.getRealPath(path); -->
			<input type="hidden" id="imgPath" value="${path }"></input>

			<div class="lodgementBox">
				<h5>${lodgeList.lodgement_companyName }</h5><a href="#" class="btn btn-outline-primary">디테일 페이지로 이동</a><a href="addRoom/${lodgeList.lodgement_number }" class="btn btn-outline-success">방 등록 현황</a><br/>
				<div class="list">
					<div class="title">업체명</div>
					<input type="text" class="inputCon form-control" value="${lodgeList.lodgement_companyName }" disabled="disabled"/>
										
					<div class="titleImgFile${num.index }">
						<div class="title imgDiv${num.index }">대표 이미지</div>
						<c:set var="sizeNumber" value="titleImgSize${num.index }" ></c:set>
						<c:forEach begin="0" end="${requestScope[sizeNumber]-1 }" varStatus="number">
						
							<c:set var="titleName" value="imgName${num.index }${number.index }"></c:set>
							<c:if test="${0 ne number.index }">
								<div class="title">디테일 이미지 ${number.index }</div>
							</c:if>
							<input type="text" id="titleImg" class="imgInput${lodgeList.lodgement_number }${number.index } inputCon form-control lodgemodifyEl${lodgeList.lodgement_number }" name="lodgement_img" value="${requestScope[titleName] }" disabled="disabled" />
						</c:forEach>
							
					</div>

					<div class="title">위치</div>
					<input type="text" class="inputCon form-control" name="lodgement_location" value="${lodgeList.lodgement_location }" disabled="disabled"/>
					
					<%-- <div class="title">위치</div>
					<div class="location">
						<input type="text" class="inputCon form-control loc${number.index } lodgemodifyEl${lodgeList.lodgement_number }" name="lodgement_location" value="${lodgeList.lodgement_location }" disabled="disabled"/>
					</div>
					 --%>
					<div class="hashBox${num.index }">
					<div class="title hashDiv${num.index }">해시태그1</div>
					<c:set var="hashTagSize" value="hashTagSize${num.index }"></c:set>
					<c:forEach begin="0" end="${requestScope[hashTagSize]-1 }" varStatus="number">
						<c:set var="hashTagName" value="hashTag${num.index }${number.index }"></c:set>
						<c:if test="${0 ne number.index }">
							<div class="title">해시태그${number.index+1 }</div>
						</c:if>
						<input type="text" class="inputCon form-control lodgemodifyEl${lodgeList.lodgement_number }" name="lodgement_hashTag" value="${requestScope[hashTagName] }" disabled="disabled"/>
					</c:forEach>
					</div>
					<div class=""></div>
					
					<div class="title">후기 수</div>
					<input type="text" class="inputCon form-control" value="${lodgeList.lodgement_reviewCount }" disabled="disabled" />
					<div class="title">좋아요 수</div>
					<input type="text" class="inputCon form-control" value="${lodgeList.lodgement_goodCount }" disabled="disabled" />
					<div class="title">평점</div>
					<input type="text" class="inputCon form-control" value="${lodgeList.lodgement_reviewGradeRate }" disabled="disabled" />
					<div class="title">글 등록 현황</div>
					<input type="text" class="inputCon temp form-control" value="${lodgeList.lodgement_temp }" disabled="disabled" />
					
					<div class="btns">
						<a class="btn btn-outline-warning lodgeModify${lodgeList.lodgement_number }" onclick="modiClick(this);">수정</a>
						<input type="hidden" value="${lodgeList.lodgement_number }"></input>
						<a href="#" class="btn btn-outline-danger">삭제</a>
					</div>
				</div>
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