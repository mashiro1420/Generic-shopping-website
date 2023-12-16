<?php
    session_start();
    include_once '../admin/module/javascript.php';
    $_SESSION['tu_khoa'] = $_POST['tu_khoa'];
    location('/webbanhang/home/ket_qua_tim_kiem.php');
?>