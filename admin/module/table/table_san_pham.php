<div class="col-md-12 overflow-auto">
  <table class="table table-striped table-bordered">
    <thead class="text-center">
      <tr>
        <th class="text-right" style="width: 75px;min-width: 75px"><i class="bi bi-key-fill"></i> Mã</th>
        <th style="min-width: 250px">Tên sản phẩm</th>
        <th style="width: 200px;min-width: 150px">Loại sản phẩm</th>
        <th style="width: 200px; min-width: 150px">Nhà sản xuất</th>
        <th style="width: 120px;min-width: 120px">Giá</th>
        <th style="width: 120px;min-width: 120px">Trạng thái</th>
        <th style="width: 120px;min-width: 120px">Hành động</th>
      </tr>
    </thead>
    <tbody>
      <?php
        $page_index = 1;
        $page_length = 3;
        if(isset($_GET['pid']))
          $page_index = $_GET['pid'];
        $sql = "SELECT ma_san_pham, ten_san_pham, ten_loai_san_pham, ten_nha_san_xuat, gia, san_pham.trang_thai FROM san_pham 
                INNER JOIN loai_san_pham ON san_pham.ma_loai_san_pham = loai_san_pham.ma_loai_san_pham 
                INNER JOIN nha_san_xuat ON san_pham.ma_nha_san_xuat = nha_san_xuat.ma_nha_san_xuat";
        $params=array();
        if(isset($_SESSION['tu_khoa_san_pham'])) {
            $sql=$sql." AND CONCAT(ten_san_pham,mo_ta) LIKE CONCAT('%',:tu_khoa,'%')";
            $params['tu_khoa']=$_SESSION['tu_khoa_san_pham'];
        }
        if(isset($_SESSION['ma_nha_san_xuat'])) {
          $sql=$sql." AND san_pham.ma_nha_san_xuat = :ma_nha_san_xuat";
          $params['ma_nha_san_xuat']=$_SESSION['ma_nha_san_xuat'];
        }
        if(isset($_SESSION['gia']) && $_SESSION['gia']>0) {
          $sql=$sql." AND gia = :gia";
          $params['gia']=$_SESSION['gia'];
        }
        if(isset($_SESSION['ma_loai_san_pham'])) {
            $sql=$sql." AND san_pham.ma_loai_san_pham = :ma_loai_san_pham";
            $params['ma_loai_san_pham']=$_SESSION['ma_loai_san_pham'];
        }
        if(isset($_SESSION['trang_thai_san_pham']) && $_SESSION['trang_thai_san_pham']!=-1) {
            $sql=$sql." AND san_pham.trang_thai = :trang_thai";
            $params['trang_thai']=$_SESSION['trang_thai_san_pham'];
        }
        $start_index= ($page_index-1)*$page_length;
        $sql=$sql." LIMIT $start_index, $page_length";
        $san_phams = execute_query($sql,$params);
        foreach($san_phams as $san_pham){     
          echo "<tr>
            <td class='text-center'>{$san_pham['ma_san_pham']}</td>
            <td>{$san_pham['ten_san_pham']}</td>
            <td>{$san_pham['ten_loai_san_pham']}</td>
            <td>{$san_pham['ten_nha_san_xuat']}</td>
            <td>{$san_pham['gia']}</td>
        ";
          echo '
          <td class="text-center"><input type="checkbox" '.($san_pham['trang_thai'] == 1 ? 'checked' : '').'></td>
          <td class="text-center">
          <a href="sua_san_pham.php?id=' . $san_pham['ma_san_pham'] . '"><i class="bi bi-pen-fill"></i></a> | 
          <a href="xu_ly_xoa_san_pham.php?id=' . $san_pham['ma_san_pham'] . '"><i class="bi bi-trash-fill"></i></a>
          </td>
        </tr>';    
        }
        $sql="SELECT COUNT(*) AS dem FROM san_pham";
                $row_number = execute_query($sql)[0]['dem'];
                $page_number=(int)($row_number/$page_length);
                if($row_number%$page_length!=0)
                    $page_number++;
      ?>            
    </tbody>
  </table>
</div>
<div class="col-md-12">
  <div class="pagination d-flex justify-content-center">
    <ul class="pagination">
        <?php
            for($i=1;$i<=$page_number;$i++)
                echo '<li class="page-item page_item">
                    <a href="/WebBanHang/admin/quan_ly_san_pham/quan_ly_san_pham.php?pid='.$i.'" class="page-link">'.$i.'</a>
                    </li>'  
        ?>
    </ul>
  </div>
</div>