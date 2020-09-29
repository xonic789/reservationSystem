<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- 아임포트 결제 api -->
	<!-- <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-x.y.z.js"></script> -->
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<%@ include file="../template/head.jspf"%>
<script>

	IMP.init('imp40929352'); // 아임포트 관리자 페이지의 "시스템 설정" > "내 정보" 에서 확인 가능

	IMP.request_pay({
	    pg : 'html5_inicis', //이니시스 웹표준
	    pay_method : 'card', // 결제수단 : 카드 
	    merchant_uid : 'merchant_' + new Date().getTime(), // 가맹점에서 생성/관리하는 고유 주문번호
	    name : '주문명:결제테스트', // 주문명 - 16자 이내로 권장
	    amount : 100,	//결제할 금액
	    buyer_email : 'vnvnwn@gmail.com',	//주문자 email
	    buyer_name : '이성범',	// 주문자 이름
	    buyer_tel : '010-8629-2737',	//주문자 번호
	    buyer_addr : '서울특별시 강남구 삼성동',	//주문자 주소
	    buyer_postcode : '123-456'	//주문자 우편번호
	}, function(rsp) {
	    if ( rsp.success ) {
	        var msg = '결제가 완료되었습니다.';
	        msg += '고유ID : ' + rsp.imp_uid;
	        msg += '상점 거래ID : ' + rsp.merchant_uid;
	        msg += '결제 금액 : ' + rsp.paid_amount;
	        msg += '카드 승인번호 : ' + rsp.apply_num;
	    } else {
	        var msg = '결제에 실패하였습니다.';
	        msg += '에러내용 : ' + rsp.error_msg;
	    }

	    alert(msg);
	});
</script>
</head>
<body>


</body>
</html>
