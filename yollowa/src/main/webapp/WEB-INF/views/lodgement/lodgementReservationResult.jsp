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
<!-- swal -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<style type="text/css">
</style>
<script type="text/javascript">
	
</script>

<meta charset="UTF-8">
<title>결제완료</title>
</head>
<body>
	<%@ include file="../template/header.jspf"%>
	<%@ include file="../template/menu.jspf"%>
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div>
					<h2 style="text-align: center;">예약이 완료되었습니다</h2>
					<div>
						<ul style="list-style: none;">
							<li>예약자 : 홍길동</li>
							<li>예약자 : 홍길동</li>
							<li>예약자 : 홍길동</li>
						</ul>
					</div>
					
					<a class="btn btn-outline-primary" href="#" >예약 확인하기</a>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>


	<%@ include file="../template/footer.jspf"%>
</body>


</html>