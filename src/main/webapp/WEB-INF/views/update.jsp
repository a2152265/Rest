<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查詢 | 書名查詢</title>
<style>
body {
	font-size: 20px;
	font-weight: 500;
	color: #000;
	font-family: "微軟正黑體";
	background-color: rgb(203, 218, 218);
	align-items: center;
	justify-content: center;
	position: relative;
}

table {
	border: 1px solid rgba(147, 156, 165, 0.2);
	border-radius: 20px;
	border-collapse: collapse;
	margin: auto;
	width: 820px;
	height: 400px;
	text-align: center;
}

header {
	text-align: center;
}

input, textarea, select {
	border: 1px solid rgb(155, 153, 153, 0.4);
	background-color: rgb(203, 218, 218, 0.2);
}

/* form { */
/* 	background-color: rgb(255, 255, 255, 0.8); */
/* 	margin: 20px auto; */
/* 	max-width: 820px; */
/* 	padding: 80px; */
/* 	/* border-radius: 20px; */ */
/* 	box-shadow: 0 10px 10px 0 rgba(177, 175, 175, 0.2); */
/* } */

/* .form-group__file { */
/* 	display: flex; */
/* 	flex-direction: column; */
/* 	position: relative; */
/* 	width: 100%; */
/* 	min-width: 130px; */
/* 	height: 180px; */
/* } */

.file-label {
	margin: 10px 0;
}

.file-input {
	opacity: 0;
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	width: 130px;
	height: 180px;
	cursor: pointer;
	z-index: 100;
}

.file-preview-background {
	position: absolute;
	bottom: 0;
	left: 0;
	width: 130px;
	height: 140px;
	background-color: #f7f7f7;
	border: 2px dashed #dfdfdf;
	border-radius: 10px;
	text-transform: uppercase;
	font-size: 14px;
	letter-spacing: 3px;
	text-align: center;
	color: #bbb;
	display: flex;
	justify-content: center;
	align-items: center;
	/* z-index: 1; */
}

.file-preview {
	width: 120px;
	height: 120px;
	position: absolute;
	top: 46px;
	left: 8px;
	border-radius: 65px;
	z-index: 10;
	object-fit: cover;
	opacity: 0;
	transition: opacity 0.4s ease-in;
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

a {
	-webkit-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-moz-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-ms-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-o-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	display: block;
	margin: 40px auto;
	max-width: 180px;
	text-decoration: none;
	border-radius: 4px;
	padding: 20px 30px;
}

a.button {
	color: rgba(30, 22, 54, 0.6);
	box-shadow: rgba(30, 22, 54, 0.4) 0 0px 0px 2px inset;
}

a.button:hover {
	color: rgba(255, 255, 255, 0.85);
	box-shadow: rgba(30, 22, 54, 0.7) 0 0px 0px 40px inset;
}

a.button2 {
	color: rgba(30, 22, 54, 0.6);
	box-shadow: rgba(30, 22, 54, 0.4) 0 0px 0px 2px inset;
}

a.button2:hover {
	color: rgba(255, 255, 255, 0.85);
	box-shadow: rgba(30, 22, 54, 0.7) 0 80px 0px 2px inset;
}

table {
	border-collapse: collapse;
	width: 1200px;
	margin-top: 20px;
	text-align: center;
}

table thead {
	font: bold 22px/40px "微软雅黑";
	background-color: lightblue;
	color: #fff;
}

table.hide {
	display: none;
}

tr {
	height: 100px;
}

td {
	background-color: white;
}

th {
	height: 100px;
	background-color: rgb(126, 199, 199);
}
/* table .ck {
	width: 22px;
	height: 22px;
	vertical-align: middle;
} */
table tbody input {
	width: 100px;
	text-align: center;
}

.up, .down {
	width: 20px;
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


input {
	width: 300px;
	height: 25px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		$('#send').click(function(){
			$('#row').html('');
			$.ajax({
				url:'update',
				type:'get',
				contentType: "application/json; charset=utf-8",
				data:{"id":$('#id').val()},
				success:function(data){
					console.log(data);
					$('#row').append(
							"<td>"+"<input name='id1' id='id1' type='text' value="+data.id+" readonly='readonly'></td>"+
							"<td>"+"<input name='name' id='name' type='text' value="+data.bookname+"></td>"+
							"<td>"+"<input name='author' id='author' type='text' value="+data.author+"></td>"+
							"<td>"+"<input name='price' id='price' type='number' value="+data.price+"></td>"
					
							
					)
			
				},
			})
		});
		
		$('#submit').click(function(){
			$.ajax({
				url:'updateForm',
				type:'post',
				contentType: "application/json; charset=utf-8",
				data:{"id":$('#id').val(),
					"name":$('#name').val(),
					"author":$('#author').val(),
					"price":$('#price').val(),	
				},
				success:function(data){
					if(data==Y){
						console.log("修改成功");
					}if(data==N){
						console.log("失敗");
					}
				
				},
			})
			
		})
		
	});
</script>
</head>
<body>
 <div class="leftSide">
  <h1 class="p">查詢商品</h1>
 
<!-- 	<form method=get> -->
		<div>
			<label>書名關鍵字</label> 
			<input id="id" type="number" name="id" class="input">
			<button id="send" name="select">送出</button>
		</div>
<!-- 	</form> -->
		<form id="form" class="container" method="post">

			<table border=1>
				<tr>
					<th>編號</th><th>書名</th><th>作者</th><th>價錢</th>
				</tr>
				<tbody>
				<tr id="row">
					
				</tr>
				</tbody>
			</table>
			<button style='margin-left:800px' type='submit' class='button'>修改資料</button>
			
		</form>
</div>
	
</body>
</html>