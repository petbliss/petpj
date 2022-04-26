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
<meta id="_csrf" name="_csrf" content="${_csrf.token}"/> <!-- csrf설정 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" 
 integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" 
 crossorigin="anonymous">
<!--<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>제품상세페이지</title>

</head>
<body>


<div class="container mt-5">
	<div class="row">
		<div class="col-sm-6">
			<img src="images/${product_view.aPhoto}" alt="image"  class="mx-auto img-responsive" 
				style="max-width:100%;height:400px;"/>
		</div>
		<div class="col-sm-6" >
			<h3 class="text-center">${product_view.qId}</h3>  
		    <h3 class="text-center">${product_view.aName}</h3> 
		    <h3 class="text-center">${product_view.aDesc}</h3>  
		    <h3 class="text-center">${product_view.aPrice}</h3> 
		    <form action="#" method="post">
		    	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		    	<input type="hidden" name="aPhoto" value="${product_view.aPhoto}">
		    	<div class="form-group text-center">
		    		<h3>
		    			<label for="uOrder">주문수량</label>
		    			<input type="number" class="form-control" id="uOrder" 
		    				name="quanty" placeholder="주문수량을 입력하세요"/>
		    		</h3>
		    	</div>
		    	<p class="text-center"><button type="submit" class="btn btn-success">주문</button></p>
		    </form>
		    <p class="text-center"><a href="product" class="btn btn-danger">목록으로</a></p>
		</div>
	</div>	
</div>
			
</body>
</html>