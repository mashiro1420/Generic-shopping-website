<?php
	include '../module/database.php';
	include '../module/javascript.php';
	$tai_khoan = $_GET['id'];
	$sql = "SELECT COUNT(*) AS dem FROM san_pham WHERE tai_khoan=:tai_khoan";
	$sql2 = "SELECT COUNT(*) AS dem2 FROM tin_tuc WHERE tai_khoan=:tai_khoan";
	$params = array('tai_khoan'=> $tai_khoan);
	$data = execute_query($sql,$params);
	$data2 = execute_query($sql2,$params);
	if ($data[0]['dem'] == 0 and $data2[0]['dem2'] > 0) {
		alert('Còn '.$data2[0]['dem2'].' tin tức đăng bởi tài khoản này');
		location('them_nguoi_dung.php');
		return;
	}elseif ($data[0]['dem'] > 0 and $data2[0]['dem2'] == 0) {
		alert('Còn '.$data[0]['dem'].' sản phẩm đăng bởi tài khoản này');
		location('them_nguoi_dung.php');
		return;
	}elseif ($data[0]['dem'] > 0 and $data2[0]['dem2'] > 0) {
		alert('Còn '.$data[0]['dem'].' sản phẩm và '.$data2[0]['dem2'].' tin tức đăng bởi tài khoản này');
		location('them_nguoi_dung.php');
		return;
	}else{
		execute_command("DELETE FROM nguoi_dung WHERE tai_khoan = :tai_khoan",$params);
 		location ('them_nguoi_dung.php');
	}
    
?>