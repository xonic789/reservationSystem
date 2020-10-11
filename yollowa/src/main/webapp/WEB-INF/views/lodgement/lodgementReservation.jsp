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

<style type="text/css">
#jumbo div{
	margin-bottom: 30px; 

}

#jumbo div p{
	font-size: 21px;
	color: gray;
	margin: 0px;
}

#jumbo div span{
	font-size: 21px;
}
</style>
<script type="text/javascript">

</script>

<meta charset="UTF-8">
<title>숙박</title>
</head>
<body>
	<%@ include file="../template/header.jspf"%>
	<%@ include file="../template/menu.jspf"%>
	<div class="container">
		<div class="row">
			<div class="col-md-8" style="margin-top: 50px;">
				<div class="row">
					<div class="col-md-11" >
						<div>
							<h4>예약자 이름<h4>
							<input style="width: 100%; padding: 3px 10px;" type="text" value="Scott" readonly="readonly" /> 
						</div>
						
						<!-- 이용약관 동의 -->
						<div class="form-group">
						  <div class="custom-control custom-checkbox" >
						    <input type="checkbox" class="custom-control-input" id="customCheck1" >
						    <label class="custom-control-label" for="customCheck1"  data-toggle="modal" data-target="#exampleModal" style="text-decoration: underline; cursor: pointer;">숙소이용규칙 및 취소/환불규정 동의</label><span style="color:red;">&nbsp;(필수)</span>
						</div>
						<!-- Modal start -->
						<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="exampleModalLabel">숙소이용규칙 및 취소/환불 규정(필수)</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						      <div class="modal-body">
						        <c:forEach items="${infoList }" var="bean">
						        	${bean.information_refundInfo }
						        </c:forEach>
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
						      </div>
						    </div>
						  </div>
						</div>
						<!-- Model end -->
						
						<div class="custom-control custom-checkbox">
						  <input type="checkbox" class="custom-control-input" id="customCheck2" >
						  <label class="custom-control-label" for="customCheck2">만 14세 이상 확인</label><span style="color:red;">&nbsp;(필수)</span>
						  </div>
						</div>
						
					</div>
					<div class="col-md-1"></div>
				</div>
			</div>
			
			<div id="jumbo" class="col-md-4 jumbotron " style="margin-top: 50px; display:inline-block;">
				<div>
					<p>숙소이름</p>
					<span>${reservList.get(0)}</span>
				</div>
				
				<div>
					<p>객실 명</p>
					<span>
						<c:forEach items="${roomDetail }" var="bean">
							${bean.roomInfo_name }
						</c:forEach>
					</span>
				</div>
				
				<div>
					<p>체크인</p>
					<span>${reservList.get(2)}</span>
				</div>
				
				<div style="border-bottom:1px solid lightgray; padding-bottom: 30px;">
					<p>체크아웃</p>
					<span>${reservList.get(3)}</span>
				</div>
				
				<div>
					<p style="color: black;">총 결제 금액</p>
					<p style="color: #593196;">55000원</p>
				</div>
				<div style="margin: 0px; padding: 0px;">
					<button type="button" class="btn btn-primary btn-lg btn-block">결제하기</button>
				</div>
			</div>
		</div>
	</div>


	<%@ include file="../template/footer.jspf"%>
</body>


</html>