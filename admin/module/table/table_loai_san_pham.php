<div class="col-md-12 overflow-auto">
  <table class="table table-striped table-bordered">
    <thead>
      <tr>
        <th class="text-right" style="width: 75px;min-width: 75px"><i class="bi bi-key-fill"></i> Mã</th>
        <th style="min-width: 250px">Tên loại sản phẩm</th>
        <th class="text-center" style="width: 120px;min-width: 120px">Trạng thái</th>
        <th class="text-center" style="width: 120px;min-width: 120px">Hành động</th>
      </tr>
    </thead>
    <tbody>
      <?php
        $loai_san_phams = execute_query("SELECT * FROM loai_san_pham");
        foreach($loai_san_phams as $loai_san_pham)
          echo '<tr>
            <td class="text-center">'.$loai_san_pham['ma_loai_san_pham'].'</td>    
            <td>'.$loai_san_pham['ten_loai_san_pham'].'</td>    
            <td class="text-center"><input type="checkbox" onclick="return false" '. ($loai_san_pham['trang_thai'] == 1 ? 'checked' : '') .'></td>    
            <td class="text-center">
              <a href="/WebBanHang/admin/quan_ly_loai_san_pham/sua_loai_san_pham.php?id='. $loai_san_pham['ma_loai_san_pham'] .'"> <i class="bi bi-pen-fill"></i></a> | 
              <a href="/WebBanHang/admin/quan_ly_loai_san_pham/xu_ly_xoa_loai_san_pham.php?id='. $loai_san_pham['ma_loai_san_pham'] .'"><i class="bi bi-trash-fill"></i></a>
            </td>
          </tr>';
      ?>							
    </tbody>
  </table>
</div>