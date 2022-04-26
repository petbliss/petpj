<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
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
<!--
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<body>


<div class="container">
	<h3 class="text-center">FAQ 내용보기 및 수정, 삭제</h3>
	<form action="fmodify" method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			<div class="form-group">
				<label for="uId">번호</label>
				<input type="text" class="form-control" id="uId" name="fId"
					value="${FAQ_content_view.fId}" readonly/>
			</div>
			<div class="form-group">
				<label for="hit">히트수</label>
				<input type="text" class="form-control" id="hit" value="${FAQ_content_view.fHit}" readonly/>
			</div>
			<div class="form-group">
				<label for="uwriter">작성자</label>
				<input type="text" class="form-control" id="uname" name="fName" 
					value="${FAQ_content_view.fName}"/>
			</div>
			<div class="form-group">
				<label for="title">제목:</label>
				<input type="text" class="form-control" id="title" name="fTitle" 
					value="${FAQ_content_view.fTitle}">
			</div>
			<div class="form-group">
				<label for="content">내용:</label>
				<textarea class="form-control" id="content" placeholder="Enter Content"
					name="fContent" rows="10">
						${FAQ_content_view.fContent}
				</textarea>
			</div>
			<button type="submit" id="modi" class="btn btn-dark">수정</button>
			&nbsp;&nbsp; <a href="FAQ" class="btn btn-dark">목록보기</a>
			&nbsp;&nbsp; <a href="delete?fId=${FAQ_content_view.fId}" id="del"
				class="btn btn-dark">삭제</a>
	</form>	
</div>

<script>
$(document).ready(function(){
	//수정버튼 클릭시 bName과 username(이용자) 비교해서 다르면 수정을 하지 못하게 함
	//삭제버튼 클릭시 bName과 username(이용자) 비교해서 다르면 삭제를 하지 못하게 함
	//js안에서는 jsp의 변수나 값을 이용하려면 c:out을 이용하여 사용	
	var username = '<c:out value="${name}"/>';  //login한 사용자, 주 화면인 board.jsp에 있음
	var fName = '<c:out value="${FAQ_content_view.fName}"/>';  //작성자 아이디

	//modify
	$("#modi").click(function(){
		if(username != fName) {
			alert("권한이 없습니다.");
			return false;  //클릭동작 해제
		}
	});
	
	//delete
	$("#del").click(function(){
		if(username != fName) {
			alert("권한이 없습니다.");
			return false;  //클릭동작 해제
		}
	});
});
</script>


</body>
</html>