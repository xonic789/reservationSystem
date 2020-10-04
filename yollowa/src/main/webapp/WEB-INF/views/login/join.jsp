<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!--===============================================================================================-->

	<link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/img/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/joinutil.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/joinmain.css">
<!--===============================================================================================-->

<%@ include file="../template/head.jspf"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/bootstrap/js/bootstrap.js"/>
<style type="text/css">
</style>
<script type="text/javascript">
</script>
</head>
<body>
	<%@ include file="../template/header.jspf"%>
	<%@ include file="../template/menu.jspf"%>
	

	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form" method="post" action="${pageContext.request.contextPath }/join/">
				<span class="contact100-form-title" style="font-family: 'MapoPeacefull';">
					YOLLOWA <br/>
					회원가입
				</span>
			
				<div class="wrap-input100 validate-input" data-validate="필수 입력사항 입니다.">
					<span class="label-input100" style="font-family: 'MapoPeacefull';">아이디</span>
					<input class="input100" type="text" id="user_id" name="user_id" style="font-family: 'MapoPeacefull';" placeholder="아이디를 입력해주세요">
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input" data-validate="필수 입력사항 입니다.">
					<span class="label-input100" style="font-family: 'MapoPeacefull';">패스워드</span>
					<input class="input100" type="password" id="user_password" name="user_password" style="font-family: 'MapoPeacefull';" placeholder="패스워드를 입력해주세요">
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input" data-validate="필수 입력사항 입니다.: 00000000000">
					<span class="label-input100" style="font-family: 'MapoPeacefull';">휴대폰</span>
					<input class="input100" type="text" id="user_phoneNumber"  name="user_phoneNumber" style="font-family: 'MapoPeacefull';" placeholder="휴대폰 번호를 입력해주세요">
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input" data-validate="필수 입력사항 입니다.">
					<span class="label-input100" style="font-family: 'MapoPeacefull';">이름</span>
					<input class="input100" type="text" id="user_name"  name="user_name" style="font-family: 'MapoPeacefull';" placeholder="이름을 입력해주세요">
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input" data-validate="필수 입력사항 입니다.">
					<span class="label-input100" style="font-family: 'MapoPeacefull';">생년월일</span>
					<input class="input100" type="date" id="user_birthday" name="user_birthday" style="font-family: 'MapoPeacefull';" placeholder="생년월일을 입력해주세요">
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100">
					<span class="label-input100" style="font-family: 'MapoPeacefull';">닉네임</span>
					<input class="input100" type="text" name="user_nickName" style="font-family: 'MapoPeacefull';" placeholder="닉네임을 입력해주세요">
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 input100-select" data-validate="필수 입력사항 입니다.">
					<span class="label-input100" style="font-family: 'MapoPeacefull';">성별</span>
					<div>
						<select class="selection-2" name="user_gender">
							<option>남</option>
							<option>여</option>
						</select>
					</div>
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input" data-validate = "이메일 형식을 지켜주세요: ex@abc.xyz">
					<span class="label-input100" style="font-family: 'MapoPeacefull';">이메일</span>
					<input class="input100" type="text" name="user_email" style="font-family: 'MapoPeacefull';" placeholder="이메일을 입력해주세요">
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100">
					<span class="label-input100" style="font-family: 'MapoPeacefull';">우편번호</span>
					<input onclick="daumPostcode()" class="btn btn-primary" type="button" value="주소 검색"/>
					<input class="input100" type="text" id="roadAddress" name="user_address" style="font-family: 'MapoPeacefull';" placeholder="도로명주소" readonly/>
					<input class="input100" type="text" id="jibunAddress" style="font-family: 'MapoPeacefull';" placeholder="지번주소" readonly/> 
					<input class="input100" type="text" id="detailAddress" name="addressDetail" style="font-family: 'MapoPeacefull';" placeholder="상세주소" />
					<span class="focus-input100"></span>
				</div>
		
				<div class="wrap-input100 input100-select">
					<span class="label-input100" style="font-family: 'MapoPeacefull';">홈페이지 이용 목적</span>
					<div style="font-family: 'MapoPeacefull';">
						<select class="selection-2" style="font-family: 'MapoPeacefull';" name="user_likes">
							<option>액티비티 예약</option>
							<option>숙박 예약</option>
						</select>
					</div>
					<span class="focus-input100"></span>
				</div>

				<!-- <div class="wrap-input100 validate-input" data-validate = "Message is required">
					<span class="label-input100" style="font-family: 'MapoPeacefull';">Message</span>
					<textarea class="input100" name="message" placeholder="Your message here..."></textarea>
					<span class="focus-input100"></span>
				</div> -->

				<div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
						<button class="contact100-form-btn" type="submit">
							<span>
								회원가입
							</span>
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>



	<div id="dropDownSelect1"></div>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function daumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById("roadAddress").value = roadAddr;
                document.getElementById("jibunAddress").value = data.jibunAddress;
            }
        }).open();
    }
</script>
<!--===============================================================================================-->

<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath }/resources/
	vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath }/resources/
	vendor/bootstrap/js/popper.js"></script>
	<script src="${pageContext.request.contextPath }/resources/
	vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath }/resources/
	vendor/select2/select2.min.js"></script>
	<script>
		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});
	</script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath }/resources/
	vendor/daterangepicker/moment.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/
	vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath }/resources/
	vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath }/resources/
	js/main.js"></script>

	<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>
	
	<%@ include file="../template/footer.jspf"%>
</body>
</html>