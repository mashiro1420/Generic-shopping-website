<?php
    $loai_san_phams = execute_query("SELECT * FROM loai_san_pham WHERE trang_thai=1");
    $nha_san_xuats = execute_query("SELECT * FROM nha_san_xuat WHERE trang_thai=1");
?>
<div class="col-md-12 px-3 py-2 mb-3 rounded font-weight-bold" id="function_name">
  QUẢN LÝ SẢN PHẨM
</div>
<div class="col-md-12 box_title px-3 py-2 rounded-top font-weight-bold">
  THÔNG TIN LOẠI SẢN PHẨM
</div>
<div class="col-md-6 p-3">
  <div class="form-group">
    <label for="tu_khoa">Từ khóa</label>
    <input type="text" class="form-control" id="tu_khoa" name="tu_khoa" <?php if(isset($_SESSION['tu_khoa_san_pham'])) echo 'value="'.$_SESSION['tu_khoa_san_pham'].'"'?>>
  </div>
  <div class="form-group">
    <label for="ma_loai_san_pham">Loại sản phẩm</label>
    <select id="ma_loai_san_pham" class="form-control" name="ma_loai_san_pham">
      <?php
        foreach($loai_san_phams as $loai_san_pham){
          if($loai_san_pham['ma_loai_san_pham']==$_SESSION['ma_loai_san_pham'])
              echo "<option selected value='".$loai_san_pham['ma_loai_san_pham']."'>{$loai_san_pham['ten_loai_san_pham']}</option>";
          else
              echo "<option value='".$loai_san_pham['ma_loai_san_pham']."'>{$loai_san_pham['ten_loai_san_pham']}</option>";
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
<div class="col-md-6 p-3">
  <div class="form-group">
    <label for="ma_nha_san_xuat">Nhà sản xuất</label>
    <select id="ma_nha_san_xuat" class="form-control" name="ma_nha_san_xuat">
      <?php
        foreach($nha_san_xuats as $nha_san_xuat){
          if($nha_san_xuat['ma_nha_san_xuat']==$_SESSION['ma_nha_san_xuat'])
              echo "<option selected value='".$nha_san_xuat['ma_nha_san_xuat']."'>{$nha_san_xuat['ten_nha_san_xuat']}</option>";
          else
              echo "<option value='".$nha_san_xuat['ma_nha_san_xuat']."'>{$nha_san_xuat['ten_nha_san_xuat']}</option>";
        }
      ?>
    </select>
  </div>
  <div class="form-group">
    <label for="gia">Giá</label>
    <input type="number" class="form-control" id="gia" name="gia" <?php if(isset($_SESSION['gia'])) echo 'value="'.$_SESSION['gia'].'"'?>>
  </div>        
</div>
<div class="col-md-12">
  <div class="form-group">
  <button class="btn font-weight-bold">Tìm kiếm sản phẩm <i class="bi bi-search"></i></button>
  <button class="btn font-weight-bold ml-5"><a href="/WebBanHang/admin/quan_ly_san_pham/them_san_pham.php">Thêm sản phẩm <i class="bi bi-plus-circle-fill"></i></a></button>          
  </div>        
</div>