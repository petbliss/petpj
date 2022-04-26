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

<div id="main" class="container template_width board_width">
	<div class="xans-element- xans-board xans-board-title ">
		<div class="title">
			<h2 align="center">
				<font color="#333333">공지사항</font>				
			</h2>
			<p>공지사항입니다.</p>
		</div>
	</div>
	
	<table class="table table-striped table-hover" id="searchTable" >
		<thead>
			<tr>
				<th>번호</th>
  				<th>제목</th>
  				<th>작성자</th>
  				<th>작성일</th>
  				<th>조회수</th>
			</tr>
		</thead>
		
		<tbody>		
			<c:forEach items="${listContent}" var="dto">
				<tr>
					<td id="nid">${dto.nId}</td> 					
					<td>
						<a class="notice_content_view" href="notice_content_view?nId=${dto.nId}">${dto.nTitle}</a>
					</td>
					<td>${dto.nWriter}</td>  <!-- bName은 user id -->
					<td>${dto.nRdate}</td>
					<td>${dto.nHit}</td>
				</tr>
			</c:forEach>
		</tbody>
		
	</table>
</div>

<div class="container" id="boardOnly">
	<nav aria-label="Page navigation"> <!-- aria-label은 라벨표시가 안되는 것을 예방 -->
		<ul class="pagination justify-content-center" id="pagination" style="margin:20px 0">
			
		</ul>
	</nav>
	<a id="write" class="btn btn-outline-dark" href="notice_write_view">글작성</a>
</div>

<br/><br/><br/>

</body>
</html>