<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新增成功提示</title>

<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</head>
<body>


    <script>
                Swal.fire({
                position: 'center',
                icon: 'success',
                title: '新增成功 ! !',
                text: '感謝你欸 :)',
                showConfirmButton: false,
                timer: 2000
                })

                setTimeout("location.href='home.jsp'",2000)

    </script>




</body>
</html>