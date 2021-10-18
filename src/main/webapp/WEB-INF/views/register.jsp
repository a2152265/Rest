<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>register</title>
		<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
			integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
			crossorigin="anonymous" />
			<link rel="stylesheet"
			href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
			integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
			crossorigin="anonymous">
		<style>
		
			.labelmg{
				/* margin: 0 auto; */
				font-weight: bolder;
				margin-left: 134px;
				/* border: springgreen solid 3px; */
			}
		
.header {
	width: 100%;
	height: 70px;
	background: rgb(203, 218, 218);
	color: white;
	font-size: 50px;
	padding-left: 30px;
	margin-bottom: 50px;
	/* position: relative; */
	top: 0px;
	z-index: 5000;
	font-family: 'Patrick Hand', cursive;
	font-weight: 600;
}


			/* .container {
				margin: 120px auto;
				margin: 0 auto;
				border: lightblue solid 3px;
				width: 775px;
				height: 320px;
				border-radius: 10px;

				background-color: lightblue;
			} */

		

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
	
		<div class="header" >
				填寫註冊資料
		</div>





					<form id="form" action="./RegisterServletAction.do" method="post">
					
						
						
						<div class="container-fluid col-md-8 col-md-offset-3 mt-12" style="overflow: auto ;border-radius:10px;width: 600px;height:400px ; background-color:#D1E9E9;">

						<div class="form-group row" style="margin-top:30px;">
						  <label class="labelmg" for="username" >姓名:</label>
						  <input class="form-control form-control-sm col-sm-5 ml-2 " type="text"placeholder="請輸入中文" id="username" name="username" ></input>
						</div>
						
						<div  class="form-group row">
						  <label  class="labelmg" for="account">帳號:</label>
						  <input class="form-control form-control-sm col-sm-5 ml-2" type="text"placeholder="請輸入6-15位英數字混和" maxlength="15"id="account" name="account" onkeyup="value=value.replace(/[\W]/g,'') "></input>
						</div>
						<div  class="form-group row">
							<label  class="labelmg" for="password1">密碼:</label>
							<input class="form-control form-control-sm col-sm-5 ml-2" type="password"placeholder="請輸入6-15位英數字混和"maxlength="15" id="password1" name="password1"onkeyup="value=value.replace(/[\W]/g,'') "></input>
						  </div>
						  <div  class="form-group row">
							<label   style="margin-left: 102px;font-weight: bolder;" for="password2">確認密碼:</label>
							<input class="form-control form-control-sm col-sm-5 ml-2" type="password"maxlength="15" id="password2" name="password2"onkeyup="value=value.replace(/[\W]/g,'') "></input>
						  </div>
						<div  class="form-group row">
						  <label   class="labelmg" for="emailAddress">信箱:</label>
						  <input class="form-control form-control-sm col-sm-5 ml-2" type="text" id="emailAddress" name="emailAddress"></input>
						</div>
					 
						<div  class="form-group row">
							<label  class="labelmg" for="phone">手機:</label>
							<input class="form-control form-control-sm col-sm-5 ml-2" type="text" id="phone" name="phone" maxlength="10" onkeyup="value=value.replace(/[^\d]/g,'')"></input>
						  </div>
						  <div style="width:200px;margin-left:200px;">
							<button type="submit"  class="button ">送出</button>
						  </div>
						</div>
			
		</form>
		

		</div>
	    <script src="https://code.jquery.com/jquery-3.6.0.js"
			integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script> 
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
			
		<Script>
			
		 $(function(){
				jQuery.validator.addMethod("isChinese", function(value, element) {
					var reg=/^[\u4e00-\u9fa5]+$/;       
    			     return this.optional(element) || reg.test(value);       
    				}, "只能包含中文字元。"); 
				jQuery.validator.addMethod("checkpwdhard", function( value, element ) {
					var str = value;
					var result = false;
				if(str.length > 0){
					var patt = /^[a-zA-Z0-9]{6,20}$/;
					var result1 = patt.test(str);
					//先測試是否有英文
					var pattEN = /[a-zA-Z]{1,}/;
					result2 = pattEN.test(str);
					//先測試是否有數字
					var pattDigit = /[0-9]{1,}/;
					result3 = pattDigit.test(str);
					if(result1 == true && result2 == true && result3 == true){
						result = true;
					} else{
						result = false;
					}
				} else {
					result = true;
				}
				return result;
			}, "密碼為 6～15個字元的英文字母、數字混合，但不含空白鍵及標點符號。");
				
			jQuery.validator.addMethod("mobileTaiwan", function( value, element ) {
			var str = value;
			var result = false;
			if(str.length > 0){
				//是否只有數字;
		var patt_mobile = /^[\d]{1,}$/;
		result = patt_mobile.test(str);
 
		if(result){
			//檢查前兩個字是否為 09
			//檢查前四個字是否為 8869
			var firstTwo = str.substr(0,2);
			var firstFour = str.substr(0,4);
			var afterFour = str.substr(4,str.length-1);
			if(firstFour == '8869'){
				$(element).val('09'+afterFour);
				if(afterFour.length == 8){
					result = true;
				} else {
					result = false;
				}
			} else if(firstTwo == '09'){
				if(str.length == 10){
					result = true;
				} else {
					result = false;
				}
			} else {
				result = false;
			}
		}
	} else {
		result = true;
	}
	return result;
}, "手機號碼不符合格式，僅允許09開頭的10碼數字");


        $('#form').validate({

       onkeyup: function(element, event) {
        
         var value = this.elementValue(element).replace(/^\s+/g, "");
         $(element).val(value);
        },
        rules: {
          username: {
            required: true,
			minlength: 2,
			isChinese:true	
          },
		  account: {
            required: true,
			 minlength: 6,
			 maxlength:15,
			 checkpwdhard:true
          },
		  password1: {
            required: true,
			maxlength:15,
			minlength: 6,
			checkpwdhard:true
          },
		  password2: {
            required: true,
			equalTo: "#password1" 
          },
          phone:{
            required: true,
            minlength: 10,
            mobileTaiwan:true
          },
         
          emailAddress: {
            required: true,
            email: true
          }
        },
        messages: {
          username: {
            required:"<i class='fas fa-times-circle' style='color:red'>必填!</i>",
			minlength:"<i class='fas fa-times-circle' style='color:red'>至少兩個字!</i>",
			isChinese:"<i class='fas fa-times-circle' style='color:red'>請填中文!</i>"
          },
		  account: {
            required:"<i class='fas fa-times-circle' style='color:red'>必填!</i>",
			 minlength:"<i class='fas fa-times-circle' style='color:red'>至少六個字!</i>",
			 checkpwdhard:"<i class='fas fa-times-circle' style='color:red'>必須為英數字</i>"
          }, 
		  	password1: {
            required:"<i class='fas fa-times-circle' style='color:red'>必填!</i>",
			minlength:"<i class='fas fa-times-circle' style='color:red'>至少六個字!</i>",
			checkpwdhard:"<i class='fas fa-times-circle' style='color:red'>必須為英數字</i>"
          },
		  password2: {
            required:"<i class='fas fa-times-circle' style='color:red'>必填!</i>",
			
			equalTo: "<i class='fas fa-times-circle' style='color:red'>密碼不一致!</i>" 
          },
          phone: {
            required:"<i class='fas fa-times-circle' style='color:red'>必填!</i>",
            minlength:"<i class='fas fa-times-circle' style='color:red'>不得少於10位!</i>",
			mobileTaiwan:"<i class='fas fa-times-circle' style='color:red'>必須為09開頭!</i>"
          },
         
          emailAddress: {
            required:"<i class='fas fa-times-circle' style='color:red'>必填!</i>",
            email:"<i class='fas fa-times-circle' style='color:red'>Email格式不正確!</i>"
          },
          
        },
        submitHandler: function(form) {
          form.submit();
        }
  });


});




		</Script>
	</body>

	</html>