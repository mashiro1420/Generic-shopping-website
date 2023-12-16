    <?php
    session_start();
    include 'javascript.php';
    if(!isset($_SESSION['dang_nhap'])){
        location('../dang_nhap/chuc_nang_dang_nhap.php');
        return;
    }
?>