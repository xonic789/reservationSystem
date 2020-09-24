<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../template/head.jspf" %>
<style type="text/css">
		
		.nav-item{
			border-radius: 7px;
		}
		.nav-link{
			font-size:16px;
			
		}
		 .carousel-item,
		.carousel-inner,
		.carousel-inner img {
		  height: 100%;
		}
		.carousel-item {
		  text-align: center;
		}
		.carousel {
		  height: 600px;
		}
		.carousel-inner img {
		  width: 100%;
		}
		
		#title{
			width: 100%;
			height: 200px;
			line-height:200px;
			text-align: center;
		}
</style>
<meta charset="UTF-8">
<title>숙박 리스트</title>
</head>
<body>
<%@ include file="../template/header.jspf" %>
<%@ include file="../template/menu.jspf" %>
	
	<div id="title">
		숙박리스트
	</div>

<%@ include file="../template/footer.jspf" %>

</body>
</html>






