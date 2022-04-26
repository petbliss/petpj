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
<title>Category_Cat_Cleaner</title>
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
		<h3 class="text-center text-info">미용/위생</h3>		
		<div class="row mb-3">
		
		<!--  이 아래부터 상품 출력 -->
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Cat_Cleaner/Category_Cat_Cleaner01.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">세미포미 고양이 놀이 장난감</h5>
					<h6 class="card-text">17,000원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Cat_Cleaner/Category_Cat_Cleaner02.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">자동 털브러쉬</h5>
					<h6 class="card-text">19,000원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Cat_Cleaner/Category_Cat_Cleaner03.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">첫작품Cat 화장실모레 5L</h5>
					<h6 class="card-text">45,400원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Cat_Cleaner/Category_Cat_Cleaner04.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">아덕 목욕커버</h5>
					<h6 class="card-text">9,000원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Cat_Cleaner/Category_Cat_Cleaner05.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">고양이용 목욕철장 케이지</h5>
					<h6 class="card-text">11,050원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Cat_Cleaner/Category_Cat_Cleaner06.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">목욕용 고무 손장갑 할큄방지</h5>
					<h6 class="card-text">7,000원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Cat_Cleaner/Category_Cat_Cleaner07.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">오가닉 고양이 전용 샴푸</h5>
					<h6 class="card-text">41,000원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Cat_Cleaner/Category_Cat_Cleaner08.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">탄탄 화장실 모레 4종 고급형</h5>
					<h6 class="card-text">50,800원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Cat_Cleaner/Category_Cat_Cleaner09.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">마이네코 고양이 골판지 화장실 조립형</h5>
					<h6 class="card-text">10,000원</h6>
				</div>
				</a>
			</div>

		</div>		
	</div>


<jsp:include page="footer.jsp"/>
</body>
</html>