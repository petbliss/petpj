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
<title>Category_Others_Articles</title>
<style>
.card-title {
	text-align : left;
	color : black;	
	margin-left : -5%;
	margin-right : -5%;
	margin-top : -10%;	
}
.card-text {
	 text-align : right;
	 color : black;
}
.card {	
	padding-top : 10px;
	padding-left : 20px;
	padding-bottom : 10px;
	width : 230px;
	z-index:1;	
}
</style>
</head>
<body>
<jsp:include page="top.jsp"/>
<jsp:include page="nav.jsp"/>
<jsp:include page="sidemenu.jsp"/>

	<div class="container">		
		<h3 class="text-center text-info">실내/외 용품/장난감</h3>		
		<div class="row mb-3">
		
		<!--  이 아래부터 상품 출력 -->
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Others_Articles/Category_Others_Articles01.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">가벼운 철제 새장</h5>
					<h6 class="card-text">11,200원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Others_Articles/Category_Others_Articles02.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">부착걸이형 나무 새창틀</h5>
					<h6 class="card-text">6,050원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Others_Articles/Category_Others_Articles03.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">고슴도치용 포켓</h5>
					<h6 class="card-text">13,100원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Others_Articles/Category_Others_Articles04.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">고슴도치용 하이쿠션</h5>
					<h6 class="card-text">20,000원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Others_Articles/Category_Others_Articles05.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">산코 급수기 125ml</h5>
					<h6 class="card-text">10,000원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Others_Articles/Category_Others_Articles06.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">토끼용 수동 급수기 100ml</h5>
					<h6 class="card-text">10,400원</h6>
				</div>
				</a>
			</div>


		</div>		
	</div>


<jsp:include page="footer.jsp"/>
</body>
</html>