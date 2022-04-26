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
<title>Category_Dog_Articles</title>
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
				<img class="card-img-top" src="images/Category_Dog_Articles/Category_Dog_Articles01.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">이카리우 개목걸이</h5>
					<h6 class="card-text">6,100원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_Articles/Category_Dog_Articles02.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">우리사랑 대형견 전용 목줄(댸)</h5>
					<h6 class="card-text">8,050원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_Articles/Category_Dog_Articles03.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">세이프로미 소형견용 텐트 쿠션세트</h5>
					<h6 class="card-text">11,900원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_Articles/Category_Dog_Articles04.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">리베라 중형견용 쿠션텐트</h5>
					<h6 class="card-text">35,000원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_Articles/Category_Dog_Articles05.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">스테인리스 중형 밥그릇</h5>
					<h6 class="card-text">10,700원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_Articles/Category_Dog_Articles06.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">남산 강아지 우산겸용 산책줄</h5>
					<h6 class="card-text">13,400원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_Articles/Category_Dog_Articles07.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">포셋 고무공 강아지장난감</h5>
					<h6 class="card-text">3,500원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_Articles/Category_Dog_Articles08.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">마이푸티 실리콘 개껌장난감</h5>
					<h6 class="card-text">6,130원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_Articles/Category_Dog_Articles09.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">강아지 전용 밥그릇 2종세트 나무판포함</h5>
					<h6 class="card-text">10,500원</h6>
				</div>
				</a>
			</div>

		</div>		
	</div>


<jsp:include page="footer.jsp"/>
</body>
</html>