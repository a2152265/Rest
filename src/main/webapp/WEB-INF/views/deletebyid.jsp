<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>


<!DOCTYPE html>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">
<title>刪除 | ID刪除</title>
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
            
        }

        .button:hover {
            background-color: #33779e;
            color: #fff;
            transform: translateY(-7px);
        }
        
        .div{
         display: flex;
    justify-content: center; 
    align-items: center; 
        }
</style>
</head>
<body>

 

 <div class="leftSide">
  <h1 class="p">刪除商品</h1>

 </div>
<br><br><br><br><br>
 <div>

	<form:form method='POST' modelAttribute="bookData"
			class='form-horizontal' enctype="multipart/form-data">
   
   <table rules="all">
       <h4 style="font-size: 20px;">輸入ID刪除資料</h4>
   
    <tr>
     <td>請輸入ID :</td>
     <td><label for="proName"></label> 
         <form:input id="id" path="id" type='text'
							class='inputClass' />


         <div class="wrap">
            <button type="submit" name="deleteById" class="button">使用ID刪除</button>
        </div>
        
        </td>
    </tr>


    
   </table>
   <div align="center">
   </div>
	
  
  </form:form>
  
  
  
  
    <div class=div>
    <a href="/Rest"><button class="button" >回首頁</button></a>
    </div>
 </div>

 



</body>
</html>