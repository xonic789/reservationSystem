<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<%@ include file="../template/head.jspf" %>
	<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
	 <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	 <style type="text/css">
	 	.button{
	 		width:191px;
	 		height: 40px;
	 	}
	 </style>
</head>
<body>
	<%@ include file="../template/header.jspf" %>
	<%@ include file="../template/menu.jspf" %>
	<div class="container">
	<form action="${pageContext.request.contextPath }/login/result" method="post">
	  <div class="form-group">
	    <label for="user_id">ID : </label>
	    <input type="text" class="form-control" name="user_id" id="user_id" placeholder="아이디를 입력해주세요">
	  </div>
	  <div class="form-group">
	    <label for="user_password">Password</label>
	    <input type="password" class="form-control" id="user_password" name="user_password" placeholder="비밀번호를 입력해주세요">
	  </div>
	  <button type="submit" class="btn btn-primary">로그인</button>
	</form>
			
	</div>
	
	<div class="text-center">
		<a href="${naver_url }"><img class="button" src="../resources/img/naverButton.png"/></a>
		<a href="https://kauth.kakao.com/oauth/authorize?client_id=65ddf9c4a57ddf27e0cf2ac5eaac8af5&redirect_uri=http://localhost:8080/yollowa/login/kakao/callback&response_type=code"><img class="button" src="../resources/img/kakaoButton.png"/></a>
	</div>
	<%@ include file="../template/footer.jspf" %>
</body>
</html>