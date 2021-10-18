<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
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

.container{
    /* padding-top:100px; */
    background-color: #D1E9E9;
    margin:60px auto;
    border: 3px solid lightblue;
    border-radius: 10px;
    /* padding:20px; */
    width: 300px;
    height: 350px;
}

.account{
    margin:0 auto;
    margin-top: 60px;
    padding:15px;
    /* border: 3px solid orange; */
    width: 230px;
}
.password{
    padding:15px;
    margin:0 auto;
    /* border: 3px solid orange; */
    width: 230px;
}
.btn{
    display: flex;
    margin:0 auto;
    /* border: 3px solid orange; */
    width: 150px;
    padding:10px;

}
.button {
            width: 140px;
            height: 45px;
            font-family: 'Roboto', sans-serif;
            font-size: 11px;
            text-transform: uppercase;
            letter-spacing: 2.5px;
            font-weight: 500;
            color: #000;
            background-color: #fff;
            border: none;
            border-radius: 45px;
            box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease 0s;
            cursor: pointer;
            outline: none;
        }

        .button:hover {
            background-color: #33779e;
            color: #fff;
            transform: translateY(-7px);
        }
</style>
</head>
<body>
  <div class="header" >登入</div>
<form action="./LoginServletAction.do" method="POST" onSubmit="return beforeSubmit(this)">
  


    <div class="container"> 

<div class="account">帳號:<input type="text" name="account" id="account"><span id="accountsp"></span><br></div>
<div class="password">密碼:<input type="password" name="password" id="password"><span id="passwordsp"></span><br></div>
<div class="btn"><button type="submit" id="login" value=""class="button">登入</button><button type="button" id="register" value=""class="button">註冊</button></div>
</div>

<!-- <table rules="all">
       
    <tbody>
        <tr>
            <td>帳號:<input type="text" name="account" id="account"><span id="accountsp"></span></td>
        </tr>
        <tr>    
            <td>密碼:<input type="password" name="password" id="password"><span id="passwordsp"></span></td>
        </tr>
       
    </tbody>
</table> -->




</form>
<script
src="https://code.jquery.com/jquery-3.6.0.js"
integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
crossorigin="anonymous"></script>
<script>
    document.getElementById("register").addEventListener("click",function(e){
        location.href="./register.jsp";
    })

    function beforeSubmit(form){
					if(form.account.value==''){
					alert('請輸入帳號！');
					form.account.focus();
					return false;
					}
					else if(form.password.value==''){
					alert('請輸入密碼！');
					form.password.focus();
					return false;
					}
					return true;
					}
</script>
</body>
</html>