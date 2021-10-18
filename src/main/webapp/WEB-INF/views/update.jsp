<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改 | ID修改</title>
<style>

.byline p {
	text-align: center;
	color: #c6c6c6;
	font: bold 18px Arial, Helvetica, Sans-serif;
	text-shadow: 0 2px 3px rgba(0, 0, 0, 0.1);
}

.byline p a {
	color: #d83c3c;
	text-decoration: none;
}




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

form {
	background-color: rgb(255, 255, 255, 0.8);
	margin: 20px auto;
	max-width: 820px;
	padding: 80px;
	/* border-radius: 20px; */
	box-shadow: 0 10px 10px 0 rgba(177, 175, 175, 0.2);
}

.form-group__file {
	display: flex;
	flex-direction: column;
	position: relative;
	width: 100%;
	min-width: 130px;
	height: 180px;
}

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
	display: block;
	margin: 40px auto;
	max-width: 180px;
	text-decoration: none;
	border-radius: 4px;
	padding: 20px 30px;
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
	width: 20px;
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


.input {
	width: 300px;
	height: 25px;
}
</style>
</head>
<body>
<!--  
	<form action="./HibernateServletAction.do" class="form-wrapper cf"
		method="post" id="form">


		<input name="updateid" id="updateid" type="number" placeholder="請輸入書籍代碼"
			required>
		<button name="update" id="update" type="submit">送出</button>

	</form>
	-->
	
	 <div class="leftSide">
  	<h1 class="p">修改商品</h1>
 
	<form action="./HibernateServletAction.do" method="post">
		<center>
			<label>書名ID</label> <input name="updateid" id="updateid" type="number""  placeholder="請輸入書籍代碼" class="input" required>

			<button type="submit" name="update">送出</button>

		</center>

	</form>

	<a href="home.jsp"><button class="button">回首頁</button></a>

	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script>

	
	$(document).ready(function(){
		$("#update").click(function(){
			if($("#updateid").val()==""){
				alert("請填寫代碼");
				eval("document.form['updateid'].focus()");  
				}else{
				document.form.submit();
				}
		})

		})
	
	</script>

</body>
</html>