<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>   
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<title>index_notice</title>
<style>
.index_notice {
	margin-left : 170px;
}
.notice_post {
	color : black;
}
</style>
</head>
<body>
<div class="container">
<h3 class="text-center text-info">공지사항</h3>
<div class="index_notice">
       <ul>
           <li><a href="#" class="notice_post">배송지연 공지사항</a></li>
           <li><a href="#" class="notice_post">고객감사 3월의 이벤트</a></li>
           <li><a href="#" class="notice_post">고객감사 2월의 이벤트</a></li>
           <li><a href="#" class="notice_post">베르가모 케이지 불량품 관련 공지</a></li>
       </ul>
</div>

</div>

</body>
</html>