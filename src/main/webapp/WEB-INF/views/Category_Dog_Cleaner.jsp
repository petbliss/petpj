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
<title>Category_Dog_Cleaner</title>
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
				<img class="card-img-top" src="images/Category_Dog_Cleaner/Category_Dog_Cleaner01.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">목용 고무패드 장갑</h5>
					<h6 class="card-text">19,000원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_Cleaner/Category_Dog_Cleaner02.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">아쿠아 10L 대형 목욕대아</h5>
					<h6 class="card-text">13,100원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_Cleaner/Category_Dog_Cleaner03.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">목욕용 대아 2개입</h5>
					<h6 class="card-text">8,400원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_Cleaner/Category_Dog_Cleaner04.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">엘리오펫 목욕용 고무 브러쉬</h5>
					<h6 class="card-text">10,450원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_Cleaner/Category_Dog_Cleaner05.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">아루이아 털 브러쉬</h5>
					<h6 class="card-text">5,600원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_Cleaner/Category_Dog_Cleaner06.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">도기 순한 샴푸 700ml</h5>
					<h6 class="card-text">31,200원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_Cleaner/Category_Dog_Cleaner07.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">오가닉 대형견 전용 샴푸 </h5>
					<h6 class="card-text">41,000원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_Cleaner/Category_Dog_Cleaner08.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">그룸 샴푸 4종 세트</h5>
					<h6 class="card-text">90,800원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_Cleaner/Category_Dog_Cleaner09.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">웅빠가 만든 흡수왕패드 배변시트</h5>
					<h6 class="card-text">23,050원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_Cleaner/Category_Dog_Cleaner10.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">페리 패드</h5>
					<h6 class="card-text">28,400원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Dog_Cleaner/Category_Dog_Cleaner11.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">강아지 1회용 배변패드 1팩</h5>
					<h6 class="card-text">9,100원</h6>
				</div>
				</a>
			</div>

		</div>		
	</div>


<jsp:include page="footer.jsp"/>
</body>
</html>