<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>首頁</title>
<style>
.header {
	width: 100%;
	height: 80px;
	background: rgb(203, 218, 218);
	color: white;
	font-size: 50px;
	position: fixed;
	top: 0px;
	z-index: 5000;
	font-family: 'Patrick Hand', cursive;
	font-weight: 600;
}

.dropdown {
	float: left;
	width: 100%;
	font-weight: bold;
	float: left;
	width: 110px;
	position: relative;
	background: #ecf0f1;
	opacity: 0.6;
	margin-right: 5px;
}


.nav1{
 	float:right;
 	position: fixed;
 	 top:0;
 	 right:0;
 	 z-index: 6000;
}


ul{
  margin: 10px 0;
  padding: 0px;
  list-style: none;
}

ul.dropdown{ 
  position: relative; 
  width: 100%; 
}

ul.dropdown li{ 
  font-weight: bold; 
  float: left; 
  width: 110px; 
  position: relative;
  background: #ecf0f1;
  opacity:0.6;
  margin-right:5px;
}


ul.dropdown a:hover{ 
  color: #000; 
}


ul.dropdown li a { 
  display: block; 
  padding: 20px 8px;
  color: rgb(3, 0, 0); 
  position: relative; 
  z-index: 2000; 
  text-align: center;
  text-decoration: none;
  font-weight: 350;
  font-size:small;
}

ul.dropdown li a:hover,
ul.dropdown li a.hover{ 
  background: #3498db;
  position: relative;
  color: #fff;
}


ul.dropdown ul{ 
 display: none;
 position: absolute; 
  width: 180px; 
  z-index: 1000;
}

ul.dropdown ul li { 
  font-weight: normal; 
  background: #f6f6f6; 
  color: #000; 
  border-bottom: 1px solid #ccc; 
}

ul.dropdown ul li a{ 
  display: block; 
  color: #34495e !important;
  background: #eee !important;
} 

ul.dropdown ul li a:hover{
  display: block; 
  background: #3498db !important;
  color: #fff !important;
} 

ul.dropdown ul li a i{
		color:red;
}


body {
    background-color: #eee;
    text-align: center;
    padding-top: 50px;
}

.nav2 {
    display: block;
    font: 13px Helvetica, Tahoma, serif;
    text-transform: uppercase;
    margin: 0; 
    padding: 0;
}


.nav2 li {
    display: inline-block;
    list-style: none;
    top:0px
}

.nav2 .button-dropdown {
    position: relative;
    
}

.nav2 li a {
    display: block;
    color: #333;
    background-color: #fff;
    padding: 10px 20px;
    text-decoration: none;
}

.nav2 li a span {
    display: inline-block;
    margin-left: 5px;
    font-size: 10px;
    color: #999;
}

.nav2 li a:hover, .nav li a.dropdown-toggle.active {
    background-color: #289dcc;
    color: #fff;
}

.nav2 li a:hover span, .nav li a.dropdown-toggle.active span {
    color: #fff;
}

.nav2 li .dropdown-menu {
    display: none;
    position: absolute;
    left: 0;
    padding: 0;
    margin: 0;
    margin-top: 3px;
    text-align: left;
}

.nav2 li .dropdown-menu.active {
    display: block;
}

.nav2 li .dropdown-menu a {
    width: 150px;
}
</style>
</head>
<body>
		 
	<nav class="nav1" >

		<ul class="dropdown">


			<li><a href="./LogoutServletAction.do">會員登出</a></li>

		</ul>
	</nav>
	<div class="header" >
			E Book Store<span style="font-size:30 ;color:#fff ; font-weight:200;"></span>
	</div>
<br><br><br><br><br>
	<div>
		<ul class="nav2">
  <li>
    <a href="insert">
      新增
      
    </a>
  </li>
  <li class="button-dropdown">
    <a href="javascript:void(0)" class="dropdown-toggle">
      查詢 <span>▼</span>
    </a>
    <ul class="dropdown-menu">
      <li>
        <a href=".\select.jsp">
          書名查詢
        </a>
      </li>
      <li>
        <a href=".\selectall.jsp">
          全部查詢
        </a>
      </li>
    </ul>
  </li>
  <li>
    <a href=".\update.jsp">
      修改
    </a>
  </li>
  <li class="button-dropdown">
    <a href="javascript:void(0)" class="dropdown-toggle">
      刪除 <span>▼</span>
    </a>
    <ul class="dropdown-menu">
      <li>
        <a href="<c:url value='/deleteById' />">
          ID刪除
        </a>
      </li>
       <li>
        <a href="<c:url value='/deleteByName' />">
          書名刪除
        </a>
      </li>
    </ul>
  </li>
</ul>
	
		</div>
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
	<script>
	jQuery(document).ready(function (e) {
	    function t(t) {
	        e(t).bind("click", function (t) {
	            t.preventDefault();
	            e(this).parent().fadeOut()
	        })
	    }
	    e(".dropdown-toggle").click(function () {
	        var t = e(this).parents(".button-dropdown").children(".dropdown-menu").is(":hidden");
	        e(".button-dropdown .dropdown-menu").hide();
	        e(".button-dropdown .dropdown-toggle").removeClass("active");
	        if (t) {
	            e(this).parents(".button-dropdown").children(".dropdown-menu").toggle().parents(".button-dropdown").children(".dropdown-toggle").addClass("active")
	        }
	    });
	    e(document).bind("click", function (t) {
	        var n = e(t.target);
	        if (!n.parents().hasClass("button-dropdown")) e(".button-dropdown .dropdown-menu").hide();
	    });
	    e(document).bind("click", function (t) {
	        var n = e(t.target);
	        if (!n.parents().hasClass("button-dropdown")) e(".button-dropdown .dropdown-toggle").removeClass("active");
	    })
	});
	</script>

</body>
</html>