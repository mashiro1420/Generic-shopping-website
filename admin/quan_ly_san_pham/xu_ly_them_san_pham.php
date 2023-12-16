<?php
  include '../module/database.php';  
  include '../module/javascript.php';
  $ten_san_pham = $_POST['ten_san_pham'];
  $file_name = $_FILES['hinh_anh']['name'];
  $gia = $_POST['gia'];
  $mo_ta = $_POST['mo_ta'];
  $trang_thai = isset($_POST['trang_thai']);
  $ma_loai_san_pham = $_POST['ma_loai_san_pham'];
  $ma_nha_san_xuat = $_POST['ma_nha_san_xuat'];
  $parts = explode('.', $file_name); 
  $date = new DateTimeImmutable();
  $file_name = md5($date->getTimestamp().$file_name) . '.'. $parts[count($parts) - 1];
  move_uploaded_file($_FILES['hinh_anh']['tmp_name'], '../../data/san_pham/' . $file_name);
  $hinh_anh = $file_name; 
  $sql = "INSERT san_pham (ten_san_pham,hinh_anh,gia,mo_ta,trang_thai,ma_loai_san_pham,ma_nha_san_xuat,tai_khoan) VALUES
  (:ten_san_pham,:hinh_anh,:gia,:mo_ta,:trang_thai,:ma_loai_san_pham,:ma_nha_san_xuat,'admin')";
  $params = array();
	$params['ten_san_pham'] = $ten_san_pham;  
  $params['hinh_anh'] =  $hinh_anh;
	$params['gia'] =  $gia;
  $params['mo_ta'] =  $mo_ta;
  $params['trang_thai'] =  $trang_thai;
	$params['ma_loai_san_pham'] =  $ma_loai_san_pham;
  $params['ma_nha_san_xuat'] =  $ma_nha_san_xuat;
	execute_command($sql, $params);
  location ('quan_ly_san_pham.php');
?>