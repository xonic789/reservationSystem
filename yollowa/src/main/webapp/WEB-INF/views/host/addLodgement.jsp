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
	.btnRemove, .roomImgRemove, .titleImgRemove{
		line-height: 8px;
	}
	.hashtag, .notice, .basic_info, .add_people, .service, .refund_info{
		width:705px;
		display:inline-block;
		margin-bottom:10px;
	}
	
	/* 기본정보 등록 end */

	/***************************************************************************************************/

	/* 방 추가등록 start  */
	.oneRoom{
		border: 1px solid lightgray;
		padding:20px 20px 20px 0px;
		margin-bottom:40px;
		border-radius: 5px;
	}
	.peakStartDate, .peakEndDate{
		margin-left: 10px;
		margin-right: 50px;
	}
	.offPeakPrice{
		margin-left:30px;
	}
	.peakPrice{
		margin-left:46px;
	}
	
	.minPeople{
		margin-right: 13px;
	}
	.maxPeople{
		margin-left: 30px;
		margin-right: 13px;
	}
	.extraPrice{
		margin-left:28px;
	}
	.roomImg, .titleImg{
		margin-bottom:10px;
	}
	.addRoomBtn{
		background-color: #F0F0F0;
		color: black;
		border:0px;
		margin-bottom:100px;
		line-height: 50px;	
	}
	.roomRemoveDiv{
		position: absolute;
		margin-left:703px;
		text-align: center;
	}
	.roomRemoveDiv>a{
		line-height:10px;
		display: inline-block;
	}
	#submit{
		text-align: center;
	}
	/* 방 추가등록 end  */
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

/* 방 추가 */
var temp = 1;
function addRoom(){
	temp++;
	var oneRoom;
	oneRoom = '<div class="oneRoom oneRoom'+temp+'">';
	oneRoom += '<div class="roomRemoveDiv">';
	oneRoom += '<a onclick="removeRoom('+temp+')" class="removeRoomBtn btn btn-danger" role="btn">방 삭제</a>';
	oneRoom += '</div>';
	oneRoom += '<div class="form-group">';
	oneRoom += '<label for="roomName'+temp+'" class="label_title">'+temp+'번 방 이름</label>';
	oneRoom += '<div>';
	oneRoom += '<input type="text" class="form-control roomName" name="roomName'+temp+'" placeholder="방 이름을 입력하세요">';
	oneRoom += '</div>';
	oneRoom += '</div>';
	oneRoom += '<div class="form-group">';
	oneRoom += '<label class="label_title" for="roomImg">방 사진 등록</label>';
	oneRoom += '<a onclick="addRoomImg('+temp+')" id="addImgBtn'+temp+'" class="btnAdd btn btn-primary">사진 추가 등록</a>';
	oneRoom += '<p>1장 이상 등록 가능하며, 첫번째 사진은 해당 방 대표사진으로 등록됩니다</p>';
	oneRoom += '<div class="roomImgFile'+temp+'">';
	oneRoom += '<input type="file" class="roomImg" name="roomImg'+temp+'" /><br/>';
	oneRoom += '</div>';
	oneRoom += '</div>';
	oneRoom += '<div class="form-inline">';
	oneRoom += '<label for="peakStartDate1" class="label_title">성수기 시작 날짜</label>';
	oneRoom += '<div>';
	oneRoom += '<input type="date" class="form-control peakStartDate" name="peakStartDate'+temp+'">';
	oneRoom += '</div>';
	oneRoom += '<label for="peakEndDate'+temp+'" class="label_title">성수기 종료 날짜</label>';
	oneRoom += '<div>';
	oneRoom += '<input type="date" class="form-control peakEndDate" name="peakEndDate'+temp+'">';
	oneRoom += '</div>';
	oneRoom += '</div>';
	oneRoom += '<div class="form-inline">';
	oneRoom += '<label for="offPeakPrice'+temp+'" class="label_title">비성수기 가격</label>';
	oneRoom += '<div>';
	oneRoom += '<input type="number" class="form-control offPeakPrice" name="offPeakPrice'+temp+'"> 원';
	oneRoom += '</div>';
	oneRoom += '<label for="peakPrice'+temp+'" class="label_title peakPrice">성수기 가격</label>';
	oneRoom += '<div>';
	oneRoom += '<input type="number" class="form-control peakPrice" name="peakPrice'+temp+'"> 원';
	oneRoom += '</div>';
	oneRoom += '</div>';
	oneRoom += '<div class="form-inline">';
	oneRoom += '<label for="minPeople'+temp+'" class="label_title minPeople">기본 인원</label>';
	oneRoom += '<div>';
	oneRoom += '<select class="form-control" name="minPeople'+temp+'">';
	oneRoom += '<option>2</option>';
	oneRoom += '<option>3</option>';
	oneRoom += '<option>4</option>';
	oneRoom += '<option>5</option>';
	oneRoom += '<option>6</option>';
	oneRoom += '</select>';
	oneRoom += '명';
	oneRoom += '</div>';
	oneRoom += '<label for="maxPeople'+temp+'" class="label_title maxPeople">최대인원</label>';
	oneRoom += '<div>';
	oneRoom += '<select class="form-control" name="maxPeople'+temp+'">';
	oneRoom += '<option>3</option>';
	oneRoom += '<option>4</option>';
	oneRoom += '<option>5</option>';
	oneRoom += '<option>6</option>';
	oneRoom += '<option>7</option>';
	oneRoom += '<option>8</option>';
	oneRoom += '<option>9</option>';
	oneRoom += '<option>10</option>';
	oneRoom += '<option>11</option>';
	oneRoom += '<option>12</option>';
	oneRoom += '<option>13</option>';
	oneRoom += '<option>14</option>';
	oneRoom += '<option>15</option>';
	oneRoom += '<option>16</option>';
	oneRoom += '<option>17</option>';
	oneRoom += '<option>18</option>';
	oneRoom += '<option>19</option>';
	oneRoom += '<option>20</option>';
	oneRoom += '</select>';
	oneRoom += '명';
	oneRoom += '</div>';
	oneRoom += '<label for="extraPrice'+temp+'" class="label_title extraPrice">인원 추가 비용</label>';
	oneRoom += '<div>';
	oneRoom += '<input type="number" class="form-control extraPrice" name="extraPrice'+temp+'" placeholder="1명 추가 기준 가격"> 원';
	oneRoom += '</div>';
	oneRoom += '</div>';
	oneRoom += '</div>';
	
	$('.roomBox').append(oneRoom);
}

/* 글 타이틀 사진 추가 */
function addTitleImg(){
	$('.titleImgFile').append('<input type="file" class="titleImg" name="titleImg" />\
							<button onclick="removetitleImg()" type="button" class="titleImgRemove btn btn-danger">삭제</button><br/>'
	);
}

/* 방 사진 추가 */
function addRoomImg(temp){
	console.log(temp);
	$('.roomImgFile'+temp+'').append('<input type="file" class="roomImg" name="roomImg'+temp+'" id="roomImg'+temp+'" />\
							<button onclick="removeRoomImg()" type="button" class="roomImgRemove btn btn-danger">삭제</button><br/>'
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

/* 방 디테일 사진 동적 추가된 input delete method */
function removeRoomImg(){
	$('.roomImgRemove').on('click', function(){
		$(this).prev().remove();
		$(this).next().remove();
		$(this).remove();
	});
};

/* 방 추가된 div class="oneRoom" delete */
function removeRoom(temp){
	console.log('oneRoom'+temp+'');
	$('.removeRoomBtn').on('click', function(){
		$('.oneRoom'+temp+'').remove();
	});
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
				<form id="form">
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
						<input type="radio" name="Lcategory" id="Pension" value="Pension"> 팬션
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
				  
				  
				  <h4 class="infoTitle">방 정보 등록</h4>
				  
				  <div class="roomBox">
					  <div class="oneRoom oneRoom1">
					    <div class="form-group">
						  <label for="roomName1" class="label_title">1번 방 이름</label>
						  <div>
						    <input type="text" class="form-control roomName" name="roomName1" placeholder="방 이름을 입력하세요">
						  </div>
					    </div>
	
						<div class="form-group">
					      <label class="label_title" for="roomImg">방 사진 등록</label>
						  <a onclick="addRoomImg(1)" id="addImgBtn1" class="btnAdd btn btn-primary">사진 추가 등록</a>
						  <p>1장 이상 등록 가능하며, 첫번째 사진은 해당 방 대표사진으로 등록됩니다</p>
					      <div class="roomImgFile1">
							<input type="file" class="roomImg" name="roomImg1" /><br/>
						  </div>
					    </div>
						
					    <div class="form-inline">
						  <label for="peakStartDate1" class="label_title">성수기 시작 날짜</label>
						  <div>
						    <input type="date" class="form-control peakStartDate" name="peakStartDate1">
						  </div>
						  
						  <label for="peakEndDate1" class="label_title">성수기 종료 날짜</label>
						  <div>
						    <input type="date" class="form-control peakEndDate" name="peakEndDate1">
						  </div>
					    </div>
	
					    <div class="form-inline">
						  <label for="offPeakPrice1" class="label_title">비성수기 가격</label>
						  <div>
						    <input type="number" class="form-control offPeakPrice" name="offPeakPrice1"> 원
						  </div>
						  
						  <label for="peakPrice1" class="label_title peakPrice">성수기 가격</label>
						  <div>
						    <input type="number" class="form-control peakPrice" name="peakPrice1"> 원
						  </div>
					    </div>
	
					    <div class="form-inline">
						  <label for="minPeople1" class="label_title minPeople">기본 인원</label>
						  <div>
							<select class="form-control" name="minPeople1">
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
								<option>6</option>
							</select>
							명
						  </div>
						  <label for="maxPeople1" class="label_title maxPeople">최대인원</label>
						  <div>
						    <select class="form-control" name="maxPeople1">
								<option>3</option>
								<option>4</option>
								<option>5</option>
								<option>6</option>
								<option>7</option>
								<option>8</option>
								<option>9</option>
								<option>10</option>
								<option>11</option>
								<option>12</option>
								<option>13</option>
								<option>14</option>
								<option>15</option>
								<option>16</option>
								<option>17</option>
								<option>18</option>
								<option>19</option>
								<option>20</option>
							</select>
							명
						  </div>
						  
						  <label for="extraPrice1" class="label_title extraPrice">인원 추가 비용</label>
						  <div>
						    <input type="number" class="form-control extraPrice" name="extraPrice1" placeholder="1명 추가 기준 가격"> 원
						  </div>
					    </div>
					    
					    
					  
					  </div>
				  </div>
				  
				  <div>
				  	<a onclick="addRoom()" class="addRoomBtn btn btn-primary btn-lg btn-block">방 추가하기</a>	
				  </div>
				  
				  <div id="submit">
				  	<button type="submit" class="btn btn-primary">글 등록하기</button>
				  </div>
				</form>
			</div>
		</div>
	</div>
	<%@ include file="../template/footer.jspf"%>
</body>
</html>