<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>�ק令�\����</title>
</head>
<body>

<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

	<script>
		Swal.fire({
			position : 'center',
			icon : 'success',
			title : '�ק粒�� ! !',

			showConfirmButton : false,
			timer : 3000
		})

		window.setTimeout(function() {
			location.href = "./home.jsp";
		}, 1000);
	</script>

</body>
</html>