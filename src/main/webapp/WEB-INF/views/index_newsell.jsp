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
<title>shop_newsell</title>
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
	border: none;
	padding-top : 10px;
	padding-left : 20px;
	padding-bottom : 10px;
	width : 230px;
	z-index:1;
}
</style>
</head>
<body>

	<div class="container">		
		<h3 class="text-center text-info">신상품</h3>		
		<div class="row mb-3">
		
		<!--  이 아래부터 상품 출력 -->
			
			<div class="card">
				<a href="#">
				<img class="card-img-top" src="images/Test1.jpg" alt="Card image" />
				<div class="card-body">					
					<h5 class="card-title">고양이 화장실</h5>
					<h6 class="card-text">32,400원</h6>		
				</div>
				</a>
			</div>
			<div class="card">
				<a href="#">
				<img class="card-img-top" src="images/Test2.jpg" alt="Card image" />
				<div class="card-body">					
					<h5 class="card-title">고양이 화장실 모래</h5>
					<h6 class="card-text">10,000원</h6>
				</div>
				</a>
			</div>
			<div class="card">
				<a href="#">
				<img class="card-img-top" src="images/Test3.jpg" alt="Card image" />
				<div class="card-body">					
					<h5 class="card-title">고양이 통조림 1개입</h5>
					<h6 class="card-text">12,000원</h6>		
				</div>
				</a>
			</div>
			<div class="card">
			<a href="#">
				<img class="card-img-top" src="images/Test4.jpg" alt="Card image" />
				<div class="card-body">					
					<h5 class="card-title">고양이 소파</h5>
					<h6 class="card-text">23,000원</h6>		
				</div>
			</a>
			</div>
			
			<div class="card">
				<a href="#">
				<img class="card-img-top" src="images/Test1.jpg" alt="Card image" />
				<div class="card-body">					
					<h5 class="card-title">고양이 화장실</h5>
					<h6 class="card-text">32,400원</h6>		
				</div>
				</a>
			</div>
			<div class="card">
				<a href="#">
				<img class="card-img-top" src="images/Test2.jpg" alt="Card image" />
				<div class="card-body">					
					<h5 class="card-title">고양이 화장실 모래</h5>
					<h6 class="card-text">10,000원</h6>
				</div>
				</a>
			</div>			
			<div class="card">
				<a href="#">
				<img class="card-img-top" src="images/Test3.jpg" alt="Card image" />
				<div class="card-body">					
					<h5 class="card-title">고양이 통조림 1개입</h5>
					<h6 class="card-text">12,000원</h6>		
				</div>
				</a>
			</div>			
			<div class="card">
			<a href="#">
				<img class="card-img-top" src="images/Test4.jpg" alt="Card image" />
				<div class="card-body">					
					<h5 class="card-title">고양이 소파</h5>
					<h6 class="card-text">23,000원</h6>		
				</div>
			</a>
			</div>
			
			<div class="card">
				<a href="#">
				<img class="card-img-top" src="images/Test1.jpg" alt="Card image" />
				<div class="card-body">					
					<h5 class="card-title">고양이 화장실</h5>
					<h6 class="card-text">32,400원</h6>		
				</div>
				</a>
			</div>
			<div class="card">
				<a href="#">
				<img class="card-img-top" src="images/Test2.jpg" alt="Card image" />
				<div class="card-body">					
					<h5 class="card-title">고양이 화장실 모래</h5>
					<h6 class="card-text">10,000원</h6>
				</div>
				</a>
			</div>
			<div class="card">
				<a href="#">
				<img class="card-img-top" src="images/Test3.jpg" alt="Card image" />
				<div class="card-body">					
					<h5 class="card-title">고양이 통조림 1개입</h5>
					<h6 class="card-text">12,000원</h6>		
				</div>
				</a>
			</div>
			<div class="card">
			<a href="#">
				<img class="card-img-top" src="images/Test4.jpg" alt="Card image" />
				<div class="card-body">					
					<h5 class="card-title">고양이 소파</h5>
					<h6 class="card-text">23,000원</h6>		
				</div>
			</a>
			</div>
			
			<!--  이 위로 상품 출력 -->
			
		</div>		
	</div>
</body>
</html>