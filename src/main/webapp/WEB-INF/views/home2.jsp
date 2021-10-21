<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.header {
	width: 100%;
	height: 80px;
	background: rgb(203, 218, 218);
	color: white;
	font-size: 50px;
	padding-left: 30px;
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


nav{
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

div {
	display: flex;
	width: 480px;
	border: lightblue 3px solid;
	margin: 0 auto;
}
</style>
</head>
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<body>
		
	<nav>

		<ul class="dropdown">


			<li><a href="<c:url value='/login' />">會員登入</a></li>

		</ul>
	</nav>
	<div class="header" >
			E Book Store<span style="font-size:30 ;color:#fff ; font-weight:200;">× Make money what you like</span>
	</div>
<br><br><br><br><br>
	

</body>
</html>