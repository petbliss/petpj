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
<script src="https://kit.fontawesome.com/f18ff24ea7.js" crossorigin="anonymous"></script>
<title>Insert title here</title>
<style>
#write {
	text-align:right;
}
ul {
	list-style:none;
	margin:0;
	padding:0;
}
li{
	margin:0 0 0 0;
	padding:0 0 0 0;
	border:0;
	float:left;
}
</style>
</head>
<body>

<%@ include file="top.jsp" %> 
<%@ include file="nav.jsp" %>


<div class="container nav_board">
	<ul>
		<li>
			<a href="notice">
				<i class="fa-solid fa-triangle-exclamation" style="font-size:40px; color:skyblue;">
				</i><br/><br/>Notice
			</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</li>
		<li>
			<a href="FAQ">
				<i class="fa-solid fa-circle-question" style="font-size:40px; color:skyblue;">
				</i><br/><br/>FAQ				
			</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</li>
		<li><a href="QnA"><i class="fa-regular fa-pen-to-square" style="font-size:40px; color:skyblue;"></i><br/><br/>QnA</a></li>
	</ul>
</div>
<br/><br/><br/><br/><br/><br/>

<div id="main" class="container template_width board_width">
	<div class="xans-element- xans-board xans-board-title ">
		<div class="title">
			<h2 align="center">
				<font color="#333333">QnA</font>				
			</h2>
			<p>상품 QnA입니다.</p>
		</div>
	</div>
	
	<table class="table table-striped table-hover" id="searchTable" >
		<thead>
			<tr>
				<th>번호</th>
  				<th>제목</th>
  				<th>작성자</th>
  				<th>작성일</th>
  				<th>조회수</th>
			</tr>
		</thead>
		
		<tbody>		
			<c:forEach items="${qlistContent}" var="dto">
				<tr>
					<td id="qid">${dto.qId}</td> 					
					<td>
						<c:forEach begin="1" end="${dto.qIndent}">-</c:forEach> <!-- 댓글차수 -->
						<a class="QnA_content_view" href="QnA_content_view?qId=${dto.qId}">${dto.qTitle}</a>
					</td>
					<td>${dto.qWriter}</td> 
					<td>${dto.qRdate}</td>
					<td>${dto.qHit}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

<div class="container" id="boardOnly">
	<nav aria-label="Page navigation"> <!-- aria-label은 라벨표시가 안되는 것을 예방 -->
		<ul class="pagination justify-content-center" id="pagination" style="margin:20px 0">
			
		</ul>
	</nav>
	<a id="qwrite" class="btn btn-outline-dark" href="QnA_write_view">글작성</a>
</div>

<br/><br/><br/>

<%@ include file="footer.jsp" %>

<script>
$(document).ready(function(){
	$("#searchForm").css("visibility","visible");  //검색메뉴를 보이게 함
	//글작성
	$("#qwrite").click(function(event){
		$("#searchForm").css("visibility", "hidden");
		event.preventDefault();  //ajax를 사용하기 위해 글작성이 링크 a로 된 것을 막아줌
		//창이동 없이 board메뉴창 안에 글작성창을 로딩
		$.ajax({
			url : "QnA_write_view",
			type : "get", //링크 a를 ajax시는 get방식이어야 함
			success : function(data) {
				$("#main").html(data);  //data는 controller에서 보내준 jsp
				$("#boardOnly").css("display","none");  //글작성 창에서는 페이지와 write버튼이 필요 없음
			},
			error : function() {
				alert("QnA_write_view시 에러 발생");
			}
		});
	});
	
	//내용보기
	$(".QnA_content_view").click(function(event){
		$("#searchForm").css("visibility","hidden");
		//.content_view는 여러개이므로 클래스 처리
		event.preventDefault();
		let eo = event.target;  //자바스크립트 객체로 이벤트발생 엘리먼트
		var x = eo.getAttribute("href");  //클릭한 eo객체(제목 항목)의 속성이 href인것의 값
		$.ajax({
			url : x,
			type : "get",  //a의 방식은 get
			success : function(data) {
				$("#main").html(data);  //data는 content_view창
				$("#boardOnly").css("display","none");  //페이지표시 엘리먼트
			},
			error : function() {
				alert("QnA_content_view시 에러 발생")
			}
		});
	});
	
	$("#searchInput").on("keyup",function(){
		var value = $(this).val().toLowerCase();  //입력창값을 소문자로 변환
		$("#searchTable tr").filter(function(){
			$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
			//일치하지 않는 tr은 제거하고 일치하는 것이 있는 tr만 남겨두는 것이 toggle메서드
		});
	});
});
</script>

<script>
//pagination만들기
$(function(){
	window.pagObj = $('#pagination').twbsPagination({		
		totalPages: 35, //총 페이지 수
		visiblePages: 10, //가시 페이지 수
		onPageClick : function (event, page) {
			console.info(page + ' (from options)');
			$(".page-link").on("click",function(event){
				event.preventDefault();
				var peo = event.target; //이벤트 발생 자바스크립트 객체
				var pageNo2 = peo.innerHTML;	//페이지 번호
				var purl;
				if(pageNo2 != "First" && pageNo2 != "Previous" && pageNo2 != "Next" && pageNo2 != "Last"){
					purl = "QnA_plist?pageNo2=" + pageNo2;
				}
				else {
					return;
				}
				$.ajax({
					url : purl,
					type : "get",
					success : function(data) {
						$("#main").html(data);
					},
					error : function() {
						alert("QnA_plist시 에러 발생");
					}
				}); //.ajax
			}); //".page-link"
		} //onPageClick
	}) //window.pagObj
	.on('page', function(event, page){ //chaining
		console.info(page + ' (from event listening)');
	}); //on
}); //function()

</script>

</body>
</html>