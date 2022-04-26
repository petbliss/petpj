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
<title>Category_Cat_Articles</title>
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
				<img class="card-img-top" src="images/Category_Cat_Articles/Category_Cat_Articles01.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">세미포미 고양이 놀이 장난감</h5>
					<h6 class="card-text">17,000원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Cat_Articles/Category_Cat_Articles02.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">리바로 캣타워 3층</h5>
					<h6 class="card-text">49,990원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Cat_Articles/Category_Cat_Articles03.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">카젠카터 고양이 산책용 줄</h5>
					<h6 class="card-text">11,300원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Cat_Articles/Category_Cat_Articles04.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">로이스 캣타워 3층</h5>
					<h6 class="card-text">40,000원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Cat_Articles/Category_Cat_Articles05.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">고양이 산책 줄</h5>
					<h6 class="card-text">13,000원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Cat_Articles/Category_Cat_Articles06.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">고양이 목걸이</h5>
					<h6 class="card-text">4,100원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Cat_Articles/Category_Cat_Articles07.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">리틀조 애완동물 전용 이동케이지</h5>
					<h6 class="card-text">50,100원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Cat_Articles/Category_Cat_Articles08.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">리틀조 고양이 케이지</h5>
					<h6 class="card-text">20,130원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Cat_Articles/Category_Cat_Articles09.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">고양이 물그릇 5L</h5>
					<h6 class="card-text">10,080원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Cat_Articles/Category_Cat_Articles10.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">고양이 펀치기, 장난감</h5>
					<h6 class="card-text">6,000원</h6>
				</div>
				</a>
			</div>

		</div>		
	</div>


<jsp:include page="footer.jsp"/>
</body>
</html>