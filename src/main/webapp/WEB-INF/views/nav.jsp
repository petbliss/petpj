<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>   
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" 
 integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" 
 crossorigin="anonymous">

<!-- <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>nav_jsp</title>
<style>
</style>
</head>
<body>

<nav class="navbar navbar-expand-md bg-dark navbar-dark fixed-top py-0">
	<div class="container justify-content-end text-right">
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="navbar-collapse collapse justify-content-end" id="collapsibleNavbar">
			<ul class="navbar-nav">
			<sec:authorize access="isAnonymous()"><!-- isAnonymous 익명 사용자 -->
				<li class="nav-item">
					<a class="nav-link" href="login_view">로그인</a>
				</li>
			</sec:authorize>
			<sec:authorize access="isAuthenticated()"> <!-- isAuthenticated 인증한 사용자 -->
				<li class="nav-item">
				
				
				
				
				
				
	 			 	<a class="nav-link" href="logout_view">로그아웃</a>
	 			 	
	 			 	
	 			 	
	 			 	
	 			 	
	 			 	
	 			</li>
	 		</sec:authorize>
				<li class="nav-item">
					<a class="nav-link" href="join_view">회원가입</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="cart">장바구니</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="order_history">주문내역</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="Service_center">고객센터</a>
				</li>
			</ul>
		</div>
	</div>
</nav>

</body>
</html>