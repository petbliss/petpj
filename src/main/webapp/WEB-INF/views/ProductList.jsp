<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false"%>
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
<!--<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>상품목록</title>
<script>
	$(document).ready(function(){
		$("#btnAdd").click(function(){
			location.href="${path}/views/product/write.do";
		});
		$("#btnEdit").click(function(){
			location.href="${path}/views/product/edit.do";
		});
	});
</script>
</head>
<body>

<%@ include file="top.jsp" %> 
<%@ include file="nav.jsp" %>
<h2>상품목록</h2>
	<c:if test="${sessionScope.adminId != null}">
		<button type="button" id="btnAdd">상품등록</button><br>
	</c:if>
	<div>
		<div class="row">
			<div class="col">상품ID</div>
			<div class="col">상품이미지</div>
			<div class="col">상품명</div>
			<div class="col">가격</div>
		</div>
		<c:forEach var="row" items="${list}">
		<div class="row">
			<div class="col">
				${row.productId}
			</div>
			<div class="col">
				<a href="${path}/views/product/detail/${row.productId}">
					<img src="${path}/images/${row.productUrl}" height="110px">
				</a>
			</div>
			<div class="col">
				<a href="${path}/views/product/detail/${row.productId}">${row.productName}</a><br>
				<a href="${path}/views/product/edit/${row.productId}">[상품편집]</a>
			</div>
			<div class="col">
				<fmt:formatNumber value="dto" pattern="###,###,###"/>
			</div>
		</div>
		</c:forEach>
	</div>
<%@ include file="footer.jsp" %>
</body>
</html>
