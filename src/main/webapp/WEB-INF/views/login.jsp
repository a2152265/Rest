<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">

<style>

.header {
	width: 100%;
	height: 70px;
	background: rgb(203, 218, 218);
	color: white;
	font-size: 50px;
	padding-left: 10px;
	/* margin-bottom: 50px; */
	/* position: relative; */
	top: 0px;
	z-index: 5000;
	font-family: 'Patrick Hand', cursive;
	font-weight: 600;
}

@import url(https://fonts.googleapis.com/css?family=Lily+Script+One);

body {
	margin:0;
	font-family:arial,tahoma,sans-serif;
	font-size:12px;
	font-weight:normal;
	direction:ltr;
  background:white;
}

.div {
	margin:10% auto 0 auto;
	padding:30px;
	width:400px;
	height:auto;
	overflow:hidden;
	background:white;
	border-radius:10px;
}

.div label {
	font-size:14px;
	color:darkgray;
	cursor:pointer;
}

.div label,
.div input {
	float:left;
	clear:both;
}

.div input {
	margin:15px 0;
	padding:15px 10px;
	width:100%;
	outline:none;
	border:1px solid #bbb;
	border-radius:20px;
	display:inline-block;
	-webkit-box-sizing:border-box;
	   -moz-box-sizing:border-box;
	        box-sizing:border-box;
    -webkit-transition:0.2s ease all;
	   -moz-transition:0.2s ease all;
	    -ms-transition:0.2s ease all;
	     -o-transition:0.2s ease all;
	        transition:0.2s ease all;
}

.div input[type=text]:focus,
.div input[type="password"]:focus {
	border-color:cornflowerblue;
}

input[type=submit] {
	padding:15px 50px;
	width:auto;
	background:#1abc9c;
	border:none;
	color:white;
	cursor:pointer;
	display:inline-block;
	float:right;
	clear:right;
	-webkit-transition:0.2s ease all;
	   -moz-transition:0.2s ease all;
	    -ms-transition:0.2s ease all;
	     -o-transition:0.2s ease all;
	        transition:0.2s ease all;
}

input[type=submit]:hover {
	opacity:0.8;
}

input[type="submit"]:active {
	opacity:0.4;
}

.forgot,
.register {
	margin:10px;
	float:left;
	clear:left;
	display:inline-block;
	color:cornflowerblue;
	text-decoration:none;
}

.forgot:hover,
.register:hover {
	color:darkgray;
}

#logo {
	margin:0 auto;
	width:200px;
	font-family: 'Lobster', cursive;
	font-size:60px;
	font-weight:bold;
	text-align:center;
	color:lightgray;
	-webkit-transition:0.2s ease all;
	   -moz-transition:0.2s ease all;
	    -ms-transition:0.2s ease all;
	     -o-transition:0.2s ease all;
	        transition:0.2s ease all;
}

#logo:hover {
	color:cornflowerblue;
}
</style>
</head>
<body>
  <div class="header" >登入</div>
<!-- <form  method="POST" id="form" onSubmit="return beforeSubmit(this)"> -->
  
  <div class="div">

  <h3 id="logo">Log In</h3>
	
  <div class="container" style="text-align:center;margin:14px;color:red;">
  <span id="accountsp" style="margin:10px;font-size:20px;font-weight:bolder"></span>
 	</div>	
  <label for="username">Account</label>
  <input type="text" id="account" name="account" placeholder="請輸入帳號" autocomplete="off" required />

  <label for="password">Password</label>
  <input type="password" id="password" name="password" placeholder="請輸入密碼" autocomplete="off" required />

  
  
  <a class="register" href="<c:url value='/register' />">Register</a>

   <input type="submit"  id="login" name="submit" value="登入" />
<!-- <button type="submit" id="login" value="" class="button">登入</button> -->
  </div>
 


<!-- </form> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
 <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script
src="https://code.jquery.com/jquery-3.6.0.js"
integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
crossorigin="anonymous"></script>
<script>


//     function beforeSubmit(form){
// 					if(form.account.value==''){
// 					alert('請輸入帳號！');
// 					form.account.focus();
// 					return false;
// 					}
// 					else if(form.password.value==''){
// 					alert('請輸入密碼！');
// 					form.password.focus();
// 					return false;
// 					}
// 					return true;
// 					}
    $(document).ready(function(){
        $("#login").click(function(){
             var useraccount = $("#account").val();
             var userpassword = $("#password").val();
             if($.trim(useraccount)==''){
                 alert('請輸入帳號');
                 $("#account").focus().css("background-color","#FFFFCC").css("border","3px solid lightblue");
                 return;
             }if($.trim(userpassword)==''){
                 alert('請輸入密碼');
                 $("#password").focus().css("background-color","#FFFFCC").css("border","3px solid lightblue");
                 return;
             }
             

             var params = {"account":''+ useraccount,
            	 		   "password":''+ userpassword};
             console.log(params);
             $.ajax({
                 type:'post',
                 url:'login',
                 contentType:'application/json',
                 data: JSON.stringify(params),
                 success: function(data){
                     console.log("Success:" + data);
                     if(data=='Y'){
                    	 location.href="home";
//                         $("#accountsp").html('account already exists');
                     }

                     if(data=='N'){
                         $("#accountsp").html('帳號或密碼輸入錯誤，請重新輸入');
                     }
                 },
                 error: function(e){
                     console.log(e);
                 }
             });
        });
    });
   
  	
    
</script>
</body>
</html>