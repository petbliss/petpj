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
<title>Category_Others_Feed</title>
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
				<img class="card-img-top" src="images/Category_Others_Feed/Category_Others_Feed01.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">제네시스 토끼용 알파파</h5>
					<h6 class="card-text">10,900원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Others_Feed/Category_Others_Feed02.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">토끼용 혼합 간식사료</h5>
					<h6 class="card-text">20,150원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Others_Feed/Category_Others_Feed03.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">햄스터용 모둠 견과류</h5>
					<h6 class="card-text">33,090원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Others_Feed/Category_Others_Feed04.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">알찬 새모이</h5>
					<h6 class="card-text">22,300원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Others_Feed/Category_Others_Feed05.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">슈퍼주 소동물 새용 사료</h5>
					<h6 class="card-text">14,400원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Others_Feed/Category_Others_Feed06.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">로로베이직 친칠라 전용 사료</h5>
					<h6 class="card-text">13,400원</h6>
				</div>
				</a>
			</div>


		</div>		
	</div>


<jsp:include page="footer.jsp"/>
</body>
</html>