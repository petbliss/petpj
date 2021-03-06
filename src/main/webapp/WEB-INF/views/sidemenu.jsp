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
<!-- <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script> -->

<meta charset="UTF-8">
<title>category_menu</title>
<style>
    aside {
        float: left; 
        margin-top : 0%;
	} 
    .sidemenu_ul {
		width: 150px;
		list-style-type: none;
		margin: 0;
		padding: 0;
	}
	
    .dropdown-button {
        width: 150px;
        height : 50px;
		background-color: #ffffff;
		padding: 8px;
		font-size: 15px;
        font-weight: bold;
		border: none;
	}
	.dropdown {
		position: relative;
		display: inline-block;
    }
	.dropdown-content {
		display: none;
		position: absolute;
		background-color: rgb(255, 242, 242);
		min-width: 75px;
        width: 200px;
		padding: 5px;
		box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
		z-index:99;
	}
	.dropdown-content a {
		color : black;
		padding : 8px;
		text-decoration : none;
		display : block;		
	}
	.dropdown-content a:hover {
        background-color: gray;
    }
	.dropdown:hover .dropdown-content {
        display: block;
        position: absolute;
        left: 100%;
        top: 0;
    }
	.dropdown:hover .dropdown-button {
        background-color: gray;
    }    
    
	.input-box {
		text-align: right;
		padding-top: 30%;
	}
	.search_button {
		background-color: #1b5ac2;
		color: white;
	}
	.searchbox {
		width : 100px;
	}

</style>
<body>
    <div class="container">
		<aside>
          <ul class="sidemenu_ul">
	 		<li class="nav-item">
	 			<a class="nav-link" href="product">????????????</a>
	 		</li>
                <div class="dropdown">
                    <button class="dropdown-button">?????????</button>
                    <div class="dropdown-content">
                        <a href="Category_Dog_Feed">??????/??????/?????????</a>
                        <a href="Category_Dog_Cleaner">??????/??????</a>
                        <a href="Category_Dog_Articles">??????/??? ??????/?????????</a>
                        <a href="Category_Dog_ETC">??????</a>

                    </div>
                </div>
                <div class="dropdown">
                    <button class="dropdown-button">?????????</button>
                    <div class="dropdown-content">
                        <a href="Category_Cat_Feed">??????/??????/?????????</a>
                        <a href="Category_Cat_Cleaner">??????/??????</a>
                        <a href="Category_Cat_Articles">??????/??? ??????/?????????</a>
                        <a href="Category_Cat_ETC">??????</a>
                    </div>
                </div>
                <div class="dropdown">
                    <button class="dropdown-button">????????????</button>
                    <div class="dropdown-content">
                        <a href="Category_Others_Feed">??????/??????/?????????</a>
                        <a href="Category_Others_Cleaner">??????/??????</a>
                        <a href="Category_Others_Articles">??????/??? ??????/?????????</a>
                        <a href="Category_Others_ETC">??????</a>
                    </div>
                </div>
            </ul>
			<div class="input-box">
				<input type="text" class="searchbox" placeholder="">
				<button class="search_button">??????</button>
			</div>
		</aside>
	</div>
</body>
</html>