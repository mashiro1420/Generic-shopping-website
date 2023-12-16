<?php
    include_once '../admin/module/javascript.php';
    $ma_san_pham = (int)$_GET['id'];
    $san_phams=execute_query("SELECT * FROM v_san_pham WHERE ma_san_pham=:ma_san_pham", array('ma_san_pham'=>$ma_san_pham));
    if(count($san_phams)==0){
        alert("Sản phẩm không tồn tại");
        location("/webbanhang/home/trang_chu.php");
    }
    else
        $san_pham=$san_phams[0];
?>
<div class="container-md">
    <div class="row">
        <div id="title" class="col-lg-12 h6 p-3 mt-3 font-weight-bold text-uppercase"><?php echo $san_pham['ten_san_pham'] ?></div>
        <div class="col-md-5">
            <img class="img-thumbnail img-fluid mt-3" src="/webbanhang/data/san_pham/<?php echo $san_pham['hinh_anh'] ?>">
        </div>
        <div class="col-md-7 overflow-auto">
            <ul id="price" class="ml-4 mt-3">
                <li>Giá: <?php echo $san_pham['gia_khuyen_mai'] ?>₫</li>
                <li>Lượt xem: <?php echo $san_pham['luot_xem'] ?></li>
                <li>Loại sản phẩm: <?php echo $san_pham['ten_loai_san_pham'] ?></li>
                <li>Nhà sản xuất: <?php echo $san_pham['ten_nha_san_xuat'] ?></li>
            </ul>
            <h2 class="p-2 font-weight-bold">Mô tả sản phẩm</h1>
            <p class="border rounded p-3"><?php echo $san_pham['mo_ta'] ?></p>
        </div>
    </div>
</div>