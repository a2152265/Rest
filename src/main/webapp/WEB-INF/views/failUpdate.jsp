<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>�Э��s�ާ@</title>
</head>
<body>

<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>

	<script>
	Swal.fire({
		  icon: 'error',
		  title: '�L������ơA�Э��s��J���y�N��',
		  showConfirmButton: false,
		  timer: 3000
		})

		window.setTimeout(function() {
			location.href = "./update.jsp";
		}, 3000);
	</script>

</body>
</html>