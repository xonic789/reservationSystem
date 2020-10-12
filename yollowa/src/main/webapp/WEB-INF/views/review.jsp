<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<%@ include file="template/head.jspf"%>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<link rel="stylesheet" href="../../resources/css/fontawesome-stars.css">

<style type="text/css">
 form{
	border: 1px solid;
	margin-top: 100px;
	padding: 20px;
	border-radius: 5px;
} 
form>h2{
	text-align: center;
}
#writer{
	border: none;
	background-color: white;
}
#info1,#info2{
	border: none;
	background-color: white;
}
</style>
<meta charset="UTF-8">
<script type="text/javascript" src="../../resources/js/jquery.barrating.min.js"></script>
<script type="text/javascript">
	$(function() {
		 $('#starPoint').barrating({
		        theme: 'fontawesome-stars'
		      });
	});
</script>
<title>리뷰 쓰기</title>
</head>

<body>
	<%@ include file="template/header.jspf"%>
	<%@ include file="template/menu.jspf"%>

	<div class="container">
	
	<!-- 받아온 값으로 숙박인지 액티비티인지 넣어주기 -->
		<c:if test="${service eq 2 }">
		<form action="${pageContext.request.contextPath }/review_write" method="post">
		<h2>숙박 리뷰 쓰기</h2>
		<input type="hidden" name="review_articleNumber" value="${reviewInfo.lReservInfo_acticleNumber }">
		<input type="hidden" name="review_reservNumber" value="${reviewInfo.lReservInfo_number }">
		<input type="hidden" name="review_category" value="${service }">
		
			<div class="form-group row">
				<label for="lodgement_companyName" class="col-sm-2 col-form-label">숙소 정보</label>
				<div class="col-sm-10">
					<input type="text" id="info1" class="form-control" value="${reviewInfo.lodgement_companyName }" readonly>
				</div>
				<label for="roomInfo_name" class="col-sm-2 col-form-label">방 정보</label>
				<div class="col-sm-10">
					<input type="text" id="info2" class="form-control" value="${reviewInfo.roomInfo_name }" readonly>
				</div>
				<label for="lReservInfo_payment" class="col-sm-2 col-form-label">결제 금액</label>
				<div class="col-sm-10">
					<input type="text" id="info2" class="form-control" value="${reviewInfo.lReservInfo_payment }" readonly>
				</div>
			</div>
			<div class="form-group row">
				<label for="" class="col-sm-2 col-form-label">닉네임</label>
				<div class="col-sm-10">
					<input type="text" id="writer" class="form-control" name="review_writer" value="${user.user_nickName }" readonly>
				</div>
			</div>
			<div class="form-group row">
				<label for="title" class="col-sm-2 col-form-label">제목</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="title" name="review_title" >
				</div>
			</div>
			<div class="form-group row">
				<label for="star" class="col-sm-2 col-form-label">별점</label>
				<div class="col-sm-10">
				<select class="form-control form-control-lg" id="starPoint" name="review_starPoint">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
				</select>
				</div>
			</div>
			
			<div class="form-group row">
			    <label for="contents" class="col-sm-2 col-form-label">리뷰 내용</label>
				<div class="col-sm-10">			   
			    <textarea class="form-control" id="content" name="review_content" rows="5" style="resize: none;" placeholder="바른 후기를 써주시기 바랍니다(5자 이상)"></textarea>
				</div>
			</div>
			
			<div class="form-group row">
				<div class="col-sm-12" style="text-align: center;">
					<button type="submit" class="btn btn-primary">작성하기</button>
				</div>
			</div>
		</form>
		</c:if>
		<c:if test="${service eq 1 }">
		<form action="" method="post">
		<h2>액티비티 리뷰 쓰기</h2>
		
			<div class="form-group row">
				<label for="" class="col-sm-2 col-form-label">액티비티 정보</label>
				<div class="col-sm-10">
					<input type="text" id="info" class="form-control" readonly>
				</div>
			</div>
			<div class="form-group row">
				<label for="" class="col-sm-2 col-form-label">닉네임</label>
				<div class="col-sm-10">
					<input type="text" id="writer" class="form-control" readonly>
				</div>
			</div>
			<div class="form-group row">
				<label for="title" class="col-sm-2 col-form-label">제목</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="title" name="review_title" >
				</div>
			</div>
			<div class="form-group row">
				<label for="star" class="col-sm-2 col-form-label">별점</label>
				<div class="col-sm-10">
				<select class="form-control form-control-lg" id="starPoint" name="review_starPoint">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
				</select>
				</div>
			</div>
			
			<div class="form-group row">
			    <label for="contents" class="col-sm-2 col-form-label">리뷰 내용</label>
				<div class="col-sm-10">			   
			    <textarea class="form-control" id="content" name="review_content" rows="5" style="resize: none;" placeholder="바른 후기를 써주시기 바랍니다(5자 이상)"></textarea>
				</div>
			</div>
			
			<div class="form-group row">
				<div class="col-sm-12" style="text-align: center;">
					<button type="submit" class="btn btn-primary">작성하기</button>
				</div>
			</div>
		</form>
		</c:if>
	</div>
	
	<%@ include file="template/footer.jspf"%>

</body>
</html>