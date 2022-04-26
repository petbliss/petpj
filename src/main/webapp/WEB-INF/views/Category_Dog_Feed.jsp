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
<title>Category_Dog_Feed</title>
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
		<h3 class="text-center text-info">사료/간식/먹거리</h3>		
		<div class="row mb-3">
		
		<!--  이 아래부터 상품 출력 -->
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_Feed/Category_Dog_Feed01.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">펫다뭄 강아지 사료 5kg</h5>
					<h6 class="card-text">52,400원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_Feed/Category_Dog_Feed02.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">도비스페셜 강아지 사료 10kg</h5>
					<h6 class="card-text">105,150원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_Feed/Category_Dog_Feed03.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">개풍당당 프리미엄 강아지 간식</h5>
					<h6 class="card-text">42,400원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_Feed/Category_Dog_Feed04.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">프라임벨런스 대형 강아지사료 15kg</h5>
					<h6 class="card-text">87,450원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_Feed/Category_Dog_Feed05.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">토펫 치킨베지테블맛</h5>
					<h6 class="card-text">93,920원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_Feed/Category_Dog_Feed06.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">퍼피골드 대형 개사료</h5>
					<h6 class="card-text">91,100원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_Feed/Category_Dog_Feed07.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">시저 골드</h5>
					<h6 class="card-text">50,000원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_Feed/Category_Dog_Feed08.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">시저 닭고기 캔형</h5>
					<h6 class="card-text">55,800원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_Feed/Category_Dog_Feed09.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">도비 나이스 8kg</h5>
					<h6 class="card-text">88,800원</h6>
				</div>
				</a>
			</div>

		</div>		
	</div>


<jsp:include page="footer.jsp"/>
</body>
</html>