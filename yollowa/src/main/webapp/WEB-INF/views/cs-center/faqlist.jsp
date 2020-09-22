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
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../template/header.jspf" %>
<%@ include file="../template/menu.jspf" %>
<h2>FAQ</h2>
  <p>이 곳은 고객님들께서 자주 물으시는 질문과 답변을 모아둔 공간입니다.</p>
<table class="table">
  <thead class="thead-light">
    <tr>
      <th>글번호</th>
      <th>제목</th>
      <th>작성자</th>
      <th>작성일</th>
      <th>조회수</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="i" begin="1" end="5">
    <tr>
      <td>${i }</td>
      <td>${i }번째 테스트 게시글입니다</td>
      <td>관리자</td>
      <td>2020-09-20</td>
      <td>200</td>
    </tr>
    </c:forEach>
  </tbody>
</table>
<ul class="pagination pagination-sm">
  <li class="page-item"><a class="page-link" href="#">이전</a></li>
  <li class="page-item"><a class="page-link" href="#">1</a></li>
  <li class="page-item"><a class="page-link" href="#">2</a></li>
  <li class="page-item"><a class="page-link" href="#">3</a></li>
  <li class="page-item"><a class="page-link" href="#">4</a></li>
  <li class="page-item"><a class="page-link" href="#">5</a></li>
  <li class="page-item"><a class="page-link" href="#">다음</a></li>
</ul>



<%@ include file="../template/footer.jspf" %>

</body>
</html>