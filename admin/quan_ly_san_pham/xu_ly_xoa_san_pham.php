<?php
  include '../module/database.php';
  include '../module/javascript.php';
  $ma_san_pham = $_GET['id'];
	$params = array('ma_san_pham'=> $ma_san_pham);
  $sql = "SELECT hinh_anh FROM san_pham WHERE ma_san_pham=:ma_san_pham";
  $hinh_anh = execute_query($sql,$params);
  if(count($hinh_anh) > 0){
    execute_command("DELETE FROM san_pham WHERE ma_san_pham = :ma_san_pham",$params);
    unlink('../../data/san_pham/'.$hinh_anh[0][0]);
  }
  location ('quan_ly_san_pham.php');
?>