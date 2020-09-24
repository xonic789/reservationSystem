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
				
		.list-group li{
			 height: 30px;
		}
		
		.pagination {
	  		 justify-content: center;
		}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../template/header.jspf" %>
<%@ include file="../template/menu.jspf" %>
<div class="row">
	<div class="col-sm-1">
		<!-- 사이드 바 메뉴-->
		  <!-- 패널 타이틀1 -->
		<div class="panel panel-info">
		    <div class="panel-heading">
		      <h3 class="panel-title">고객센터</h3>
		    </div>
		    <!-- 사이드바 메뉴목록1 -->
		    <ul class="list-group">
		      <li class="list-group-item-text"><a href="#">공지사항</a></li>
		      <li class="list-group-item-text"><a href="#">FAQ</a></li>
		      <li class="list-group-item-text"><a href="#">Q&A</a></li>
		    </ul>
		</div>
	</div>
	<div class="col-sm-11">
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
</div>
</div>
<%@ include file="../template/footer.jspf" %>
</body>
</html>