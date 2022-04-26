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
<title>Category_Dog_ETC</title>
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
		<h3 class="text-center text-info">기타</h3>		
		<div class="row mb-3">
		
		<!--  이 아래부터 상품 출력 -->
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_ETC/Category_Dog_ETC01.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">바이오액티비 심장사상충방지</h5>
					<h6 class="card-text">14,010원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_ETC/Category_Dog_ETC02.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">인트라젠 장건강 예방</h5>
					<h6 class="card-text">10,150원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_ETC/Category_Dog_ETC03.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">그린리피트 상어연골 60g</h5>
					<h6 class="card-text">9,900원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_ETC/Category_Dog_ETC04.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">파워멀티비타민</h5>
					<h6 class="card-text">20,000원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_ETC/Category_Dog_ETC05.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">빅시비 조인트 60g</h5>
					<h6 class="card-text">19,950원</h6>
				</div>
				</a>
			</div>


		</div>		
	</div>


<jsp:include page="footer.jsp"/>
</body>
</html>