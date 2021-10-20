<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>修改資料</title>
<style>
body {
 font-family:Microsoft JhengHei;
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
 margin: 10px auto;
 max-width: 600px;
 padding:  60px 80px;
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
</style>
</head>
<body>

<body>


 <h1 class="p">書籍資訊</h1>

 <form:form id="form">
 <table >
 <tr>
 	<td width="20%">書籍代號<br>(不得修改)</td>
 	<td width="80%">
 	<form:input style="color:gray;" type="text" id="id" path="id"  disabled="true"/>
 	</td> 
 	
 </tr>
  <tr>
 	<td>書籍名稱</td>
 	<td>
 		<form:input style="color:gray;" type="text" id="bookname" path="bookname" />
 	</td> 
 </tr>
 
  <tr>
  <td>書籍價錢</td>
  <td>
  	<form:input style="color:gray;" type="text" id="price" path="price" />
  </td> 
   </tr>
   
   
   <tr>
   <td>書籍作者</td>
   <td>
   	<form:input style="color:gray;" type="text" id="author" path="author" />
   </td> 
   </tr>
   
   
 </table>
       <a><button id="submit" type="submit" class="button">送出</button></a>
 </form:form>
 	   	<a href="home.jsp"><button  name="return" id="return" class="button">回首頁</button></a>



  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  	
  
<script>

var $form=$('#form');

$form.on('submit',function(e)){
	
$.ajax({
  type: "POST",
  url: './updateForm',
  data: $form.serialize(),
  success: function (data) {
 	  Swal.fire({
		  
	  })
     
  },
  error:: function (result){
	  Swal.fire({
		  
	  })
  }
})
}



</script>
</body>
</html>