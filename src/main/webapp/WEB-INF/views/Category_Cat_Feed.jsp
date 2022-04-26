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
<title>Category_Cat_Feed</title>
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
				<img class="card-img-top" src="images/Category_Cat_Feed/Category_Cat_Feed01.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">본캣 10kg</h5>
					<h6 class="card-text">60,100원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Cat_Feed/Category_Cat_Feed02.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">프로랑 야옹아 20kg</h5>
					<h6 class="card-text">147,800원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Cat_Feed/Category_Cat_Feed03.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">메인텐스캣 치킨 라이스 포뮬러</h5>
					<h6 class="card-text">90,000원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Cat_Feed/Category_Cat_Feed04.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">인네이처 그린치킨에그</h5>
					<h6 class="card-text">20,050원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Cat_Feed/Category_Cat_Feed05.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">좋은친구 캔통조림 1종세트</h5>
					<h6 class="card-text">37,000원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Cat_Feed/Category_Cat_Feed06.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">엔젤캣 프리미엄 사료</h5>
					<h6 class="card-text">60,800원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Cat_Feed/Category_Cat_Feed07.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">메오 켓푸드 해산물 성묘용</h5>
					<h6 class="card-text">43,000원</h6>
				</div>
				</a>
			</div>
			<div class="card" style="border: none;">
				<a href="#">
				<img class="card-img-top" src="images/Category_Cat_Feed/Category_Cat_Feed08.jpg" alt="Card image" />
				<div class="card-body">
					<h5 class="card-title">캣푸드 닭가슴살맛 캔 1개</h5>
					<h6 class="card-text">6,000원</h6>
				</div>
				</a>
			</div>

		</div>		
	</div>


<jsp:include page="footer.jsp"/>
</body>
</html>