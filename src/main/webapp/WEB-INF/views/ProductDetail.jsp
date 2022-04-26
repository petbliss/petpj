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
<meta id="_csrf" name="_csrf" content="${_csrf.token}"/> <!-- csrf설정 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" 
 integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" 
 crossorigin="anonymous">
<!--<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>제품상세페이지</title>

</head>
<body>

<%@ include file="top.jsp" %> 
<%@ include file="nav.jsp" %>

<div style="float:left;">
	<img src="${path}/images/${dto.prodcutUrl}"  width="750" height="750">
</div>
<div class="col">
				<div style="height: 300px; width: 400px;">
					<div class="row">
						<div class="col">상품명</div>
						<div class="col">${dto.productName}</div>
					</div>
					<div class="row">
						<div class="col">가격</div>
						<div class="col"><fmt:formatNumber value="${dto.productPrice}" pattern="###,###,###"/></div>
					</div>
					<div class="row">
						<div class="col">상품소개</div>
						<div class="col">${dto.productDesc}</div>
					</div>
					<div class="row">
						<div class="col">
							<form name="form1" method="post" action="${path}/views/cart/insert.do">
								<input type="hidden" name="productId" value="${dto.productId}">
								<select name="amount">
									<c:forEach begin="1" end="10" var="i">
										<option value="${i}">${i}</option>
									</c:forEach>
								</select>&nbsp;개
								<input type="submit" value="장바구니에 담기">
							</form>
							<a href="${path}/views/product/list.do">상품목록</a>
						</div>
					</div>
				</div>
			</div>
<%@ include file= footer.jsp %>
</body>
</html>