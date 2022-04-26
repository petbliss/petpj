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
<title>제품등록</title>
<style>
h3 {
  color: white;
  text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;
}
</style>
</head>
<body>

 <div class="container">
 	<h3 class="text-center">상품등록</h3>
 	
 	<form  action="product_write?${_csrf.parameterName}=${_csrf.token}" 
 		method="POST" enctype="multipart/form-data">
 		상품구분<br/>
 		<div class="form-check-inline">
 			<label class="form-check-label" for="radio1">
 				<input type="radio" class="form-check-input" id="radio1" name="aDesc" 
 					value="01" checked>사료 
 			</label>
 		</div>
 		<div class="form-check-inline"> <!-- 체크박스나 라디오버튼을 일력배치 -->
 			<label class="form-check-label" for="radio2">
 				<input type="radio" class="form-check-input" id="radio2" name="aDesc" 
 					value="02">위생 
 			</label>
 		</div>
 		<div class="form-check-inline">
 			<label class="form-check-label" for="radio3">
 				<input type="radio" class="form-check-input" id="radio3" name="aDesc" 
 					value="03">장난감 
 			</label>
 		</div>
 		<div class="form-check-inline">
 			<label class="form-check-label" for="radio4">
 				<input type="radio" class="form-check-input" id="radio4" name="aDesc" 
 					value="04">식기 
 			</label>
 		</div>
 		<br/><br/>
 		<div class="form-group">
 			<label for="qid">상품번호</label>
 			<input type="text" class="form-control" id="qid" placeholder="상품번호" 
 				name="qId" required> 			
 		</div>
 		<div class="form-group">
 			<label for="aname">상품이름</label>
 			<input type="text" class="form-control" id="aName" placeholder="상품이름" 
 				name="aName" required> 			
 		</div>
 		<div class="form-group">
 			<label for="photo">상품사진</label>
 			<input type="file" class="form-control" id="afile" placeholder="상품사진" 
 				name="aFile" required> 			
 		</div> 
 		<div class="form-group">
 			<label for="price">상품가격</label>
 			<textarea class="form-control" id="price" placeholder="상품가격" name="aPrice" 
 				rows="10" required>
 			</textarea>
 		</div>  
 		<button type="submit" class="btn btn-success">상품등록</button>
 		&nbsp;&nbsp; <a href="product" class="btn btn-primary">목록보기</a>
 	</form>
 </div>
</body>
</html>