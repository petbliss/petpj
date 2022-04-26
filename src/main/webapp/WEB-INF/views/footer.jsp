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
<title>footer</title>
<style>
footer {
	background-color : #343a40;
	color : #939c9f;
	margin-bottom : -1%;
	
	
}
.td_footer {
	padding-left : 10px;
}
.span_footer {
	margin-right : 13px;
	color : #939c9f;
}
</style>
</head>
<body>
<footer>
	<div class="container" style="padding-top:2px;">
	<a href="index" style="text-decoration-line : none;"><span class="span_footer">홈</span></a>
	<a href="info_company" style="text-decoration-line : none;"><span class="span_footer">회사소개</span></a>
	<a href="info_agreement" style="text-decoration-line : none;"><span class="span_footer">이용약관</span></a>
	<a href="info_privacy"  style="text-decoration-line : none;"><span class="span_footer">개인정보취급방침</span></a>
	<hr style="background-color:#939c9f; margin-bottom:5px; margin-top:5px;"/>
	<h5>(주) 아이펫</h5>
	<table>
        <tr>
            <td class="td_footer">대표자(성명) : 홍길동</td>
            <td class="td_footer">사업자등록번호 : 999-88-77777</td>
            <td class="td_footer">주소 : 02468 서울특별시 강서구 화곡로 149, 심당빌딩5층</td>
        </tr>
        <tr>
        	<td class="td_footer">팩스번호 : 02-9876-5432</td>
            <td class="td_footer">대표전화번호 : 02-1234-5678</td>
            <td class="td_footer">통신판매업신고번호 : 제2022-서울강서-9999호</td>
        </tr>
		<tr>
        	<td class="td_footer"></td>
            <td class="td_footer">개인정보관리책임자 : 홍길동</td>
			<td class="td_footer">Contact : i-pet@gmail.com for more information</td>
        </tr>
    </table>
	</div>
</footer>
	
</body>
</html>