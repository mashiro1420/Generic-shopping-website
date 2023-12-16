<?php
  include '../module/database.php';
  include '../module/javascript.php';
  $ma_san_pham = $_POST['ma_san_pham'];
  $ten_san_pham = $_POST['ten_san_pham'];
  $ma_loai_san_pham = $_POST['ma_loai_san_pham'];
  $ma_nha_san_xuat = $_POST['ma_nha_san_xuat'];
  $gia = $_POST['gia'];
  $file_name = $_FILES['hinh_anh']['name'];
  $trang_thai = isset($_POST['trang_thai']);
  $mo_ta = $_POST['mo_ta'];
  if($file_name == ''){    
    $sql = "UPDATE san_pham SET ten_san_pham = :ten_san_pham, ma_loai_san_pham = :ma_loai_san_pham, ma_nha_san_xuat = :ma_nha_san_xuat, gia = :gia, trang_thai = :trang_thai, mo_ta = :mo_ta WHERE ma_san_pham = :ma_san_pham";
    $params = array();
    $params['ten_san_pham'] = $ten_san_pham;
    $params['ma_loai_san_pham'] = $ma_loai_san_pham;
    $params['ma_nha_san_xuat'] = $ma_nha_san_xuat;
    $params['gia'] = $gia;
    $params['mo_ta'] = $mo_ta;
    $params['ma_san_pham'] = $ma_san_pham;
    $params['trang_thai'] =  $trang_thai;
    execute_command($sql,$params);
  }else{
    $hinh_anh = execute_query("SELECT hinh_anh FROM san_pham WHERE ma_san_pham = {$ma_san_pham}")[0][0];
    unlink("../../data/san-pham/{$hinh_anh}");
    $parts = explode('.',$hinh_anh);
    $date = new DateTimeImmutable();
    $file_name = md5($date->getTimestamp() . $file_name) . '.' . $parts[count($parts ) - 1];
    move_uploaded_file($_FILES['hinh_anh']['tmp_name'], '../../data/san_pham/' . $file_name);
    $hinh_anh = $file_name;
    $sql = "UPDATE san_pham SET ten_san_pham = :ten_san_pham, ma_loai_san_pham = :ma_loai_san_pham,hinh_anh = :hinh_anh, ma_nha_san_xuat = :ma_nha_san_xuat, gia = :gia, trang_thai = :trang_thai, mo_ta = :mo_ta WHERE ma_san_pham = :ma_san_pham";
    $params = array();
    $params['ten_san_pham'] = $ten_san_pham;
    $params['ma_loai_san_pham'] = $ma_loai_san_pham;
    $params['ma_nha_san_xuat'] = $ma_nha_san_xuat;
    $params['gia'] = $gia;
    $params['mo_ta'] = $mo_ta;
    $params['hinh_anh'] = $hinh_anh;
    $params['ma_san_pham'] = $ma_san_pham;
    $params['trang_thai'] =  $trang_thai;
    execute_command($sql,$params);
  }
  location ('quan_ly_san_pham.php');
?>
