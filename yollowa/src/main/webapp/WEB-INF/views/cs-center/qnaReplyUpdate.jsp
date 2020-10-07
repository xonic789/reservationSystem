<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../template/head.jspf" %>

<script src="${pageContext.request.contextPath}/resources/js/ckeditor/ckeditor.js"></script>
<style rel="stylesheet" type="text/css">
	/* category start */
	.page-header{
		border-bottom: 1px solid lightgray;
		padding-top: 15px;
		padding-bottom: 25px;
	}
	.page-header>p{
		margin-top: 10px;
		margin-bottom:2px;
	}
	#category{
		border-right: 1px solid lightgray;
	}
	#category>div:first-child{
		margin-top: 30px;
	}
	#category>div{
		margin-bottom: 25px;
		padding-right:15px;
		font-size: 16px;
	}
	.smallList>p:hover {
		background-color: #EEEEED;
		cursor: pointer;
	}
	h2{
		margin-top: 50px;
		margin-left: 20px;
	}
	.bigList>p{
		font-size: 18px;
		margin-bottom:5px;
	}
	.smallList{
		margin-left: 15px;
		margin-bottom: 5px;
	}
	.smallList>p {
		margin-bottom:8px;
	}
	.smallList>p>a{
		font-size:15px;
		text-decoration: none;
		display: block;
	}
	/* category end */
		
	/* content start */
	.box1 {
		margin: 32px auto 10px auto;
		display: flex;
		position: relative;
	}
	#titleLabel{
		width: 8%;
 	 	font-size: 20px;
 		text-align: center;
	}
	#titleInput{
	}
	.box3 {
		text-align: left;
		margin-top: 10px;
	}
	#submitBtn {
	}
	/* content end */
		
</style>
<script type="text/javascript">
	$(document).ready(function() {
		CKEDITOR.replace('editor',
			    {
		      height : '500px',  //에디터 높이
		      startupFocus : false
	    });
		
	});
	
</script>
</head>
<body>
<%@ include file="../template/header.jspf" %>
<%@ include file="../template/menu.jspf" %>
<div class="container">
	<div class="page-header">
		<p> <a href="../">메인 페이지</a> > 고객센터 > Q&amp;A </p>
		<h1>Q&amp;A <small> 욜로와에서 고객님들에게 알려드립니다.</small></h1>
	</div>
	<div class="row">
		<div id="category" class="col-md-2">
				<div class="bigList">
					<p>고객센터</p>
					<div class="smallList">
						<p><a href="${pageContext.request.contextPath }/cs-center/notice/">공지사항</a></p>
					</div>
					<div class="smallList">
						<p><a href="${pageContext.request.contextPath }/cs-center/faq/">FAQ</a></p>
					</div>
					<div class="smallList">
						<p><a href="${pageContext.request.contextPath }/cs-center/qna/">Q&amp;A</a></p>
					</div>
				</div>
		</div>
		<div class="col-md-10">
			<div class="box1">
				<div id="title"><h1>${bean.title }</h1></div>
			</div>
			<div class="row">
				<div class="col-md-4">
				<span id="writer">작성자 | ${bean.writer }</span>
				</div>
				<div class="col-md-6">
				<span id="date">작성일 | ${bean.writeddate }</span>
				</div>
				<div class="col-md-2">
				<span id="cnt">조회수 | ${bean.cnt }</span>
				</div>
			</div>
			<div class="box3">${bean.content }</div>
			<c:forEach items="${reply }" var="reply">
			<div class="box3">-----------------------------------------------------------------------------------</div>
			<div>
				<c:if test="${reply.replyNo != target}">
					<div>
						<c:set var="qnaNo" value="${reply.qnaNo }"></c:set>
						<span>작성자: ${reply.replyWriter } | </span>
						<span>작성일: ${reply.updateDate } | </span>
						<span><a href="${pageContext.request.contextPath }/cs-center/qna/reply/update/repno=${reply.replyNo },qnano=${reply.qnaNo }">수정하기</a> | </span>
						<span><a href="${pageContext.request.contextPath }/cs-center/qna/reply/delete/repno=${reply.replyNo },qnano=${reply.qnaNo }">삭제하기</a> | </span>
					</div>
					<div>
						내용:${reply.replyText }
					</div>
				</c:if>
				<c:if test="${reply.replyNo == target}">
					<form action="${pageContext.request.contextPath }/cs-center/qna/reply/update/repno=${reply.replyNo },qnano=${reply.qnaNo }" method="post">
						<div>
						<c:set var="qnaNo" value="${reply.qnaNo }"></c:set>
						<span>작성자: ${reply.replyWriter } | </span>
						<span>작성일: ${reply.updateDate } | </span>
						<span><a href="${pageContext.request.contextPath }/cs-center/qna/reply/delete/repno=${reply.replyNo },qnano=${reply.qnaNo }">삭제하기</a> | </span>
					</div>
						<div>
							<input type="hidden" name="replyNo" value='<c:out value="${reply.replyNo }"></c:out>' />
							<input type="hidden" name="qnaNo" value='<c:out value="${reply.qnaNo }"></c:out>' />
							<textarea name="replyText" id="replyText" placeholder="댓글을 입력해 주세요">${reply.replyText }</textarea>
						</div>
						<div>
							<input type="submit" value="작성하기"/>
						</div>
					</form>
				</c:if>
			</div>
			</c:forEach>
			<div class="box3">-----------------------------------------------------------------------------------</div>
			
			<div class="box4">
				<input type="button" id="modify" class="btn btn-primary" onclick ="location.href='../modify/${bean.qnano }'" value="수정하기">
				<input type="button" id="delete" class="btn btn-primary" onclick ="location.href='../delete/${bean.qnano }'" value="삭제하기">
				<input type="button" id="list" class="btn btn-primary" onclick ="history.back();" value="목록">
			</div> 
		</div>
	</div>
</div>
<%@ include file="../template/footer.jspf" %>
</body>
</html>