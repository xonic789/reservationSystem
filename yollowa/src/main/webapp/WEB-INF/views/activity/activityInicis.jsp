<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
  </head>
  <body>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script>
var IMP = window.IMP; // 생략가능
IMP.init('imp40929352'); // 가맹점 식별코드

IMP.request_pay({
    pg : 'html5_inicis', // 이니시스 웹표준 
    pay_method : 'card', // 결제수단 카드
    merchant_uid : 'merchant_' + new Date().getTime(), // 결제가된적 있는 merchant_uid로는 재결제 불가 
    name : '주문명:결제테스트', //16자 이내 권장
    amount : 100,	//결제 금액
    buyer_email : 'vnvnwn@gmail.com',
    buyer_name : '이성범',
    buyer_tel : '010-8629-2737'
/*     buyer_addr : '서울특별시 강남구 삼성동',
    buyer_postcode : '123-456' */
}, function(rsp) {
    if ( rsp.success ) {
        var msg = '결제가 완료되었습니다.  ';
        msg += '결제 금액 : ' + rsp.paid_amount+"원";
    } else {
        var msg = '결제에 실패하였습니다. 다시 결제해주세요.';
        msg += '에러내용 : ' + rsp.error_msg;
    }
	    alert(msg);
	    window.location.href='http://localhost:8080/yollowa/activity/list';
});
</script>
  </body>
</html>