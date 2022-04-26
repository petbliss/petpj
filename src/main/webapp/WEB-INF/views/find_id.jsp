<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %> <%--HTTP 헤더에 세션 쿠키가 존재 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%-- Core --%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <%-- I18N --%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %> <%-- Database --%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %> <%-- XML --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> <%-- Functions --%>
<!DOCTYPE html>
<html>
<head>

<!-- 추가 -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- 추가 -->

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" 
 integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" 
 crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>아이디 찾기</title>
</head>
<body>
<div class="container mt-5">
	<div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4">
			<form action="#" method="post">
				<div class="w3-center w3-large w3-margin-top">
					<h3>아이디 찾기</h3>
				</div>
				<div>
					<p>

						<label>Email</label>
						<!-- id 속성은 page 안에서 중복으로 사용할 수 없으며,
						 주로 JS에서 다루기 위해 지정한다. 
						 name 속성으로도 JavaScript를 통해 속성이나 값을 변경할 수 있는데,
						 중복 값을 가질 수 있어 id 속성의 값으로 주로 접근
						 name 속성은 page 영역에서 중복되어 사용이 가능하며, 
						 action에 해당하는 페이지에 전달할 수 있는 파라미터로 사용-->
						<input class="w3-input" type="text" id="name" name="name" required>
						<input class="w3-input" type="email" id="mail" name="email" required>
						
						
					</p>
					<p class="w3-center">
						<button type="submit" id=findId class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">find</button>
						<button type="button" onclick="history.go(-1);" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-margin-bottom w3-round">Cancel</button>
					
					</p>

				</div>
			</form>
		</div>
	</div>
</div>

<script>



</script>
</body>
</html>