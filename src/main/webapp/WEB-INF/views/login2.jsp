<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Users Check</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
   $(document).ready(function(){
       $("#send").click(function(){
            var username = $("#userAccount").val();

            if($.trim(username)==''){
                alert('Account is Empty');
                return;
            }

            var params = {"account":''+ username};
			console.log(params);
            $.ajax({
                type:'post',
                url:'login2',
                contentType:'application/json',
                data: JSON.stringify(params),
                success: function(data){
                    console.log("Success:" + data);
                    if(data=='Y'){
                       $("#result").html('account already exists');
                    }

                    if(data=='N'){
                        $("#result").html('account does not exist');
                    }
                },
                error: function(e){
                    console.log(e);
                }
            });
       });
   });
</script>
</head>
<body>
<table>
   <tr>
      <td>Account:<input id="userAccount" type="text" name="userAccount"/></td>
      <td id="result"></td>
   </tr>
</table>
<button id="send">Send</button>
</body>
</html>