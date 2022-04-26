<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>   
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" 
 integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" 
 crossorigin="anonymous">
<!--<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<style>
/* Optional: Makes the sample page fill the window. */
html, body {
  height: 100%;
  margin: 0;
  padding: 0;
}
#main {  
  height: auto;    
}

h3 {
  color: white;
  text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;
}

h5{
  color: white;
  text-shadow: 1px 1px 2px blue, 0 0 25px blue, 0 0 5px darkblue;
}
</style>
<title>제품뷰</title>
</head>
<body>

<%@ include file="top.jsp" %> 
<%@ include file="nav.jsp" %>

<div id ="main" class="container mt-5">
    <!-- 이페이지는 product의 첫페이지 이므로 요리 리스트를 보여줌  -->
	<h3 class="text-center text-info">Qid</h3>
	<div class="row mb-3">
		<c:forEach items="${productList}" var="dto">
			<div class="card" style="width:300px;">
				<h5>${dto.qId}</h5> 
				<img class="card-img-top" src="images/${dto.aPhoto}" alt="Card image" 
					style="max-width:280px;height:280px">
				<div class="card-body">
					<h5 class="card-title">제품명 : ${dto.aName}</h5>
					<h5 class="card-text">상세설명 : ${dto.aDesc}</h5>
					<a href="productDetails?aPhoto=${dto.aPhoto}" 
						class="pd btn btn-primary stretched-link">
						자세히 보기
					</a>
				</div>	
			</div>
		</c:forEach>		
	</div>
	<a id="pwrite_view" class="btn btn-success" href="pwrite_view">상품등록</a>
</div>
<%@ include file="footer.jsp" %>
<script>
$(document).ready(function(){
	$("#pwrite_view").click(function(event){
		event.preventDefault();
		$.ajax({
			url : "pwrite_view",
			type : "get",
			success : function(data) {
				$("#main").html(data);
			},
			error : function() {
				alert("pwrite_view시 에러 발생");
			}
		});
	});
	
	
	$(".pd").click(function(event){	 
		event.preventDefault();	
		var eo = event.target; 
		var x = eo.getAttribute("href");		
		$.ajax({
			url : x,
			type : "get",			
			success : function(data) { 		
				$("#main").html(data);				
			},
			error : function() {
				alert("product_view시 에러 발생");
			}
		});		
	});	
	
});
</script>
</body>
</html>