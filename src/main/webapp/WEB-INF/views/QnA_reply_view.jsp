<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>   
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">    
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" 
integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" 
crossorigin="anonymous">
<!--
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<div class="container">
	<h3 class="text-center">댓글 작성</h3>
	<form action="qreply" method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		<input type="hidden" name="qSecret" value="${QnA_reply_view.qSecret}">
		<input type="hidden" name="qGroup" value="${QnA_reply_view.qGroup}">
		<input type="hidden" name="qStep" value="${QnA_reply_view.qStep}">
		<input type="hidden" name="qIndent" value="${QnA_reply_view.qIndent}"> 
		
		<div class="form-group">
			<label for="uId">번호</label>
			<input type="text" class="form-control" id="uId" name="qId"
				value="${QnA_reply_view.qId}" readonly> 
		</div>
		<div class="form-group">
			<label for="hit">히트수</label>
			<input type="text" class="form-control" id="hit" name="qHit"
				value="${QnA_reply_view.qHit}" readonly>
		</div>
		<div class="form-group">
			<label for="uname">이름</label>
			<!-- 로그인한 사람 아이디 -->
			<input type="text" class="form-control" id="uname" name="qWriter" 
				value="${user}" required>			
		</div>
		<!-- 제목고ㅘ 내용은 원래 것을 보여 주고 수정 -->
		<div class="form-group">
			<label for="title">제목:</label>
			<input type="text" class="form-control" id="title" name="qTitle" 
				value="${QnA_reply_view.qTitle}" required>			
		</div>
		<div class="form-group">
			<label for="content">내용:</label>
			<textarea class="form-control" id="content" name="qContent" rows="10" required> 
 		 		${QnA_reply_view.qContent}
 		 	</textarea>
		</div>
		<button type="submit" class="btn btn-outline-dark">댓글작성</button>
		&nbsp;&nbsp; <a href="QnA" class="btn btn-dark">목록보기</a>
	</form>
</div>
</body>
</html>