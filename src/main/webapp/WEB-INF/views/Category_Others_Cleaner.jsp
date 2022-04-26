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
<title>Category_Others_Cleaner</title>
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
				<img class="card-img-top" src="images/Category_Others_Cleaner/Category_Others_Cleaner01.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">친칠라 전용 목욕 모레</h5>
					<h6 class="card-text">29,000원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Others_Cleaner/Category_Others_Cleaner02.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">왕조 새 전용 목욕그릇</h5>
					<h6 class="card-text">9,100원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Others_Cleaner/Category_Others_Cleaner03.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">킹스 새 전용 목욕 샴푸</h5>
					<h6 class="card-text">11,400원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Others_Cleaner/Category_Others_Cleaner04.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">소동물 마사지 브러쉬</h5>
					<h6 class="card-text">10,450원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Others_Cleaner/Category_Others_Cleaner05.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">원터치 브러쉬</h5>
					<h6 class="card-text">8,600원</h6>
				</div>
				</a>
			</div>



		</div>		
	</div>


<jsp:include page="footer.jsp"/>
</body>
</html>