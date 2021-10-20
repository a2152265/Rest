<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新增</title>
<style>
body {
	font-family: "微軟正黑體";
	background-color: rgb(203, 218, 218);
	align-items: center;
	justify-content: center;
	position: relative;
}

h1 {
	background-color: #f7f7f7;
	/* 告訴電腦背景顏色 */
	padding: 18px 0 16px 22px;
	/* 告訴電腦內距要多大 */
	border-left: 8px solid #33779e;
	/* 告訴電腦左邊框要多寬、跟顏色 */
	color: #333 !important;
	/* 告訴電腦文字顏色 */
	width: 300px;
}

form {
	background-color: rgb(255, 255, 255, 0.8);
	margin: 20px auto;
	max-width: 600px;
	padding: 80px;
	/* border-radius: 20px; */
	box-shadow: 0 10px 10px 0 rgba(177, 175, 175, 0.2);
}

table {
	border: 1px solid rgba(147, 156, 165, 0.2);
	border-radius: 20px;
	border-collapse: collapse;
	margin: auto;
	width: 600px;
	height: 400px;
	text-align: center;
}

input, textarea, select {
	border: 1px solid rgb(155, 153, 153, 0.4);
	background-color: rgb(203, 218, 218, 0.2);
	font-size: 21px;
}

.leftSide {
	float: left;
}

.wrap {
	text-align: center;
	margin-top: 50px;
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

a {
	display: block;
	margin: 40px auto;
	max-width: 180px;
	text-decoration: none;
	border-radius: 4px;
	padding: 20px 30px;
}
.div{
         display: flex;
    justify-content: center; 
    align-items: center; 
        }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
 <script type="text/javascript"> 
 $(document).ready(function(){
     $('#insert').click(function(e){
         e.preventDefault();
 //         var formData=new FormData(form);
         $.ajax({
             url:'insert.controller',
             type:'post',
             data:$('#form1').serialize(),
             success:function(data){
                 setTimeout("location.href='insertsuccess'",0)

            }
         })
     })
 })
</script> 
<!--<script type="text/javascript">
   window.onload = function(){
       var form = document.getElementById('form1');
       var insert = document.getElementById('insert');

       insert.addEventListener('click', function(e){
           e.preventDefault();
           var formData = new FormData(form);
           var xh = new XMLHttpRequest();
           xh.open('post','insert.controller');
           xh.send(formData);
           setTimeout("location.href='insertsuccess'",0)

       });
   }
</script>-->
</head>
<body>



	<div class="leftSide">
		<h1 class="p">新增商品</h1>

	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div>
		<form  id="form1">

			<table rules="all">
				<tr>
					<td>請輸入書名</td>
					<td><input type="text" class="inputClass" name="bookname" id ="bookname" >
						<br /></td>
				</tr>
				<tr>
					<td>請輸入作者:</td>
					<td><label for="proName"></label> <input type="text"
						class="inputClass" name="author" id="author"><br /></td>
				</tr>


				<tr>
					<td>請輸入價錢:</td>
					<td><input type="text" class="inputClass" name="price" id="price"><br /></td>
				</tr>
			</table>
			<div class="wrap">
				<button type="submit" name="insert" id="insert" class="button">確認送出</button>

			</div>
			</form>
		

		

			<div class=div>
			
    			<a href="home"><button class="button" >回首頁</button></a>
    		</div>

	</div>





</body>
</html>