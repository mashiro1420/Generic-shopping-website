<?php
    include_once '../module/kiem_tra_dang_nhap.php';
    include_once '../module/javascript.php';
    session_destroy();
    location('../dang_nhap/chuc_nang_dang_nhap.php');
?>