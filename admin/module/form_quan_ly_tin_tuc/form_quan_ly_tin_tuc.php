<div class="col-md-12 px-3 py-2 mb-3 rounded font-weight-bold" id="function_name">
    QUẢN LÝ TIN TỨC / QUẢN LÝ
</div>
<div class="col-md-12 box_title px-3 py-2 rounded-top font-weight-bold">
    THÔNG TIN TIN TỨC
</div>
<div class="col-md-7 p-3">
    <div class="form-group">
        <label for="tu_khoa">Từ khóa</label>
        <input type="text" class="form-control" id="tu_khoa" name="tu_khoa" <?php if(isset($_SESSION['tu_khoa_tin_tuc'])) echo 'value="'.$_SESSION['tu_khoa_tin_tuc'].'"'?>>
    </div>
    <div class="form-group">
        <label for="tu_ngay">Từ ngày</label>
        <input name="tu_ngay" placeholder="dd/mm/yyyy" type="text" class="form-control tu_ngay" id="tu_ngay" value="<?php if(isset($_SESSION['tu_ngay_tin_tuc'])) if($_SESSION['tu_ngay_tin_tuc'] != '') echo format_date_vn($_SESSION['tu_ngay_tin_tuc']); ?>">
    </div>
    <div class="form-group">
        <label for="den_ngay">Đến ngày</label>
        <input name="den_ngay" placeholder="dd/mm/yyyy" type="text" class="form-control den_ngay" id="den_ngay" value="<?php if(isset($_SESSION['den_ngay_tin_tuc'])) if($_SESSION['den_ngay_tin_tuc'] != '') echo format_date_vn($_SESSION['den_ngay_tin_tuc']);?>">  
    </div>   
    <div class="form-group">
        <label for="ma_loai_tin_tuc">Loại tin tức</label>
        <select class="form-control" id="ma_loai_tin_tuc" name="ma_loai_tin_tuc" >
            <option value="-1">Tất cả</option>
            <?php
                $loai_tin_tucs = execute_query("SELECT * FROM loai_tin_tuc WHERE trang_thai=1");
                foreach($loai_tin_tucs as $loai_tin_tuc){
                    if($loai_tin_tuc['ma_loai_tin_tuc']==$_SESSION['ma_loai_tin_tuc'])
                        echo "<option selected value='".$loai_tin_tuc['ma_loai_tin_tuc']."'>{$loai_tin_tuc['ten_loai_tin_tuc']}</option>";
                    else
                        echo "<option value='".$loai_tin_tuc['ma_loai_tin_tuc']."'>{$loai_tin_tuc['ten_loai_tin_tuc']}</option>";
                }
            ?>
        </select>
    </div>
    <div class="form-group">
        <label for="trang_thai">Trạng thái</label>
        <select class="form-control" name="trang_thai" id="trang_thai">
            <option value="-1">Tất cả</option>
            <option value="0">Khóa</option>
            <option value="1">Kích hoạt</option>
        </select>
    </div>
</div>
<div class="col-md-12">
    <div class="form-group">
        <button type="submit" class="btn font-weight-bold">Tìm kiếm tin tức <i class="bi bi-search"></i></button>
        <button type="button" onclick="window.location='/webbanhang/admin/quan_ly_tin_tuc/them_tin_tuc.php'" class="btn font-weight-bold ml-5">Thêm tin tức <i class="bi bi-plus-circle-fill"></i></button>
    </div>
</div>