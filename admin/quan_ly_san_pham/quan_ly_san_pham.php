<?php
	include '../module/kiem_tra_dang_nhap.php';
?>
<!DOCTYPE html>
<html>
<head>
	<title>Quản lý thông tin sản phẩm</title>
	<?php
    include '../module/head.php';
	include '../module/database.php';
  ?>
</head>
<body>
	<div class="container-fluid px-0">
		<?php
      	include '../module/sidebar.php';?>
		<form onsubmit="return check_form();" action="xu_ly_quan_ly_san_pham.php" method="post" enctype="multipart/form-data">
			<div id="main" class="row no-gutters p-3">
				<?php
				include '../module/header.php';
				include '../module/form_quan_ly_san_pham/form_quan_ly_san_pham.php';
				include '../module/table/table_san_pham.php';
				include '../module/footer.php';
				?>						
			</div>
		</form>
	</div>
</body>
</html>