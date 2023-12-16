<!-- Banner -->
  <div class="row container-fluid d-flex justify-content-center m-0 py-4">
    <?php
      $loai_san_phams = execute_query("SELECT * FROM loai_san_pham");
      foreach($loai_san_phams as $loai_san_pham)
        echo '<div class="banner_box">
        <div class="container-lg-4 my-3 p-1">
          <div class="banner_container">
            <a href="" class="banner_img_container d-block">
              <img src="/WebBanHang/data/loai_san_pham/'.$loai_san_pham['hinh_anh'].'" class="banner_img">
            </a>
            <div class="banner_content">
              <p>
                <span class="big_text font-weight-bold">
                    '.$loai_san_pham['ten_loai_san_pham'].'
                </span>
              </p>
            </div>
          </div>
        </div>
      </div>';
    ?>
  </div>
  <!-- Main -->
  <div class="container-md my-2" id="main">
    <!-- New products -->
    <div class="row" style="background-color: #78221f; border-radius: 10px;">
      <div class="col-lg-12 d-flex justify-content-center py-4">
        <h2 class="font-weight-bold" style="color: white;">NEW PRODUCTS</h2>
      </div>
      <?php
        $san_phams=execute_query("SELECT * FROM san_pham ORDER BY ma_san_pham DESC LIMIT 0,4");
        foreach($san_phams as $san_pham)
          echo '<div class="col-lg-3 text-center p-3">
          <div class="product_container">
            <img src="/webbanhang/data/san_pham/'.$san_pham['hinh_anh'].'" class="w-75 py-3 product_img">
            <h5>
              <a href="#" class="product_name font-weight-bold">
                '.$san_pham['ten_san_pham'].'
              </a>
            </h5>
            <div class="price py-2 font-weight-bold">
              <h5>
                Price: '.$san_pham['gia_khuyen_mai'].' 
                <strike>'.$san_pham['gia'].'</strike>
              </h5>
            </div>
          </div>
        </div>';
      ?>
    <!-- Promotion -->
    <div class="row">
      <div class="col-lg-12 d-flex my-4 d-lg-flex justify-content-center bg-light rounded">
        <div class="title m-3 font-weight-bold">PROMOTION</div>
      </div>  
      <?php
        $san_phams=execute_query("SELECT * FROM san_pham ORDER BY gia_khuyen_mai/gia ASC LIMIT 0,4");
        foreach($san_phams as $san_pham)
          echo '<div class="col-lg-3 text-center p-3">
          <div class="product_container">
            <img src="/webbanhang/data/san_pham/'.$san_pham['hinh_anh'].'" class="w-75 py-3 product_img">
            <h5>
              <a href="#" class="product_name font-weight-bold">
                '.$san_pham['ten_san_pham'].'
              </a>
            </h5>
            <div class="price py-2 font-weight-bold">
              <h5>
                Price: '.$san_pham['gia_khuyen_mai'].' 
                <strike>'.$san_pham['gia'].'</strike>
              </h5>
            </div>
          </div>
        </div>';
      ?>
      <div class="col-lg-4 text-center p-3">
        <div class="product_container">
          <img src="./img/product_1.png" class="w-75 py-3 product_img">
          <h5>
            <a href="#" class="product_name font-weight-bold">
              Apple 27 IMac Desktop Computer
            </a>
          </h5>
          <div class="price py-2 font-weight-bold">
            <h5>
              Price: $50 
              <strike>$60</strike>
            </h5>
          </div>
          <a class="badge badge-dark tag mb-3">Desktop</a>
          <a class="badge badge-dark tag mb-3">IMac</a>
          <a class="badge badge-dark tag mb-3">Apple</a>
          <a class="badge badge-dark tag mb-3">2021</a>
          <div class="details text-left p-2">
            - Quad-Core 2.66GHz Intel Core i5
            <br>
            - 4GB (2x2GB) RAM
            <br>
            - 1TB Hard Drive
            <br>
            - 8x SuperDrive DVD Burner, SD Card Slot
          </div>
        </div>
      </div>
      <div class="col-lg-4 text-center p-3">
        <div class="product_container">
          <img src="./img/product_1.png" class="w-75 py-3 product_img">
          <h5>
            <a href="#" class="product_name font-weight-bold">
              Apple 27 IMac Desktop Computer
            </a>
          </h5>
          <div class="price py-2 font-weight-bold">
            <h5>
              Price: $50 
              <strike>$60</strike>
            </h5>
          </div>
          <a class="badge badge-dark tag mb-3">Desktop</a>
          <a class="badge badge-dark tag mb-3">IMac</a>
          <a class="badge badge-dark tag mb-3">Apple</a>
          <a class="badge badge-dark tag mb-3">2021</a>
          <div class="details text-left p-2">
            - Quad-Core 2.66GHz Intel Core i5
            <br>
            - 4GB (2x2GB) RAM
            <br>
            - 1TB Hard Drive
            <br>
            - 8x SuperDrive DVD Burner, SD Card Slot
          </div>
        </div>
      </div>
      <div class="col-lg-4 text-center p-3">
        <div class="product_container">
          <img src="./img/product_1.png" class="w-75 py-3 product_img">
          <h5>
            <a href="#" class="product_name font-weight-bold">
              Apple 27 IMac Desktop Computer
            </a>
          </h5>
          <div class="price py-2 font-weight-bold">
            <h5>
              Price: $50 
              <strike>$60</strike>
            </h5>
          </div>
          <a class="badge badge-dark tag mb-3">Desktop</a>
          <a class="badge badge-dark tag mb-3">IMac</a>
          <a class="badge badge-dark tag mb-3">Apple</a>
          <a class="badge badge-dark tag mb-3">2021</a>
          <div class="details text-left p-2">
            - Quad-Core 2.66GHz Intel Core i5
            <br>
            - 4GB (2x2GB) RAM
            <br>
            - 1TB Hard Drive
            <br>
            - 8x SuperDrive DVD Burner, SD Card Slot
          </div>
        </div>
      </div>
      <div class="col-lg-4 text-center p-3">
        <div class="product_container">
          <img src="./img/product_1.png" class="w-75 py-3 product_img">
          <h5>
            <a href="#" class="product_name font-weight-bold">
              Apple 27 IMac Desktop Computer
            </a>
          </h5>
          <div class="price py-2 font-weight-bold">
            <h5>
              Price: $50 
              <strike>$60</strike>
            </h5>
          </div>
          <a class="badge badge-dark tag mb-3">Desktop</a>
          <a class="badge badge-dark tag mb-3">IMac</a>
          <a class="badge badge-dark tag mb-3">Apple</a>
          <a class="badge badge-dark tag mb-3">2021</a>
          <div class="details text-left p-2">
            - Quad-Core 2.66GHz Intel Core i5
            <br>
            - 4GB (2x2GB) RAM
            <br>
            - 1TB Hard Drive
            <br>
            - 8x SuperDrive DVD Burner, SD Card Slot
          </div>
        </div>
      </div>
      <div class="col-lg-4 text-center p-3">
        <div class="product_container">
          <img src="./img/product_1.png" class="w-75 py-3 product_img">
          <h5>
            <a href="#" class="product_name font-weight-bold">
              Apple 27 IMac Desktop Computer
            </a>
          </h5>
          <div class="price py-2 font-weight-bold">
            <h5>
              Price: $50 
              <strike>$60</strike>
            </h5>
          </div>
          <a class="badge badge-dark tag mb-3">Desktop</a>
          <a class="badge badge-dark tag mb-3">IMac</a>
          <a class="badge badge-dark tag mb-3">Apple</a>
          <a class="badge badge-dark tag mb-3">2021</a>
          <div class="details text-left p-2">
            - Quad-Core 2.66GHz Intel Core i5
            <br>
            - 4GB (2x2GB) RAM
            <br>
            - 1TB Hard Drive
            <br>
            - 8x SuperDrive DVD Burner, SD Card Slot
          </div>
        </div>
      </div>
      <div class="col-lg-4 text-center p-3">
        <div class="product_container">
          <img src="./img/product_1.png" class="w-75 py-3 product_img">
          <h5>
            <a href="#" class="product_name font-weight-bold">
              Apple 27 IMac Desktop Computer
            </a>
          </h5>
          <div class="price py-2 font-weight-bold">
            <h5>
              Price: $50 
              <strike>$60</strike>
            </h5>
          </div>
          <a class="badge badge-dark tag mb-3">Desktop</a>
          <a class="badge badge-dark tag mb-3">IMac</a>
          <a class="badge badge-dark tag mb-3">Apple</a>
          <a class="badge badge-dark tag mb-3">2021</a>
          <div class="details text-left p-2">
            - Quad-Core 2.66GHz Intel Core i5
            <br>
            - 4GB (2x2GB) RAM
            <br>
            - 1TB Hard Drive
            <br>
            - 8x SuperDrive DVD Burner, SD Card Slot
          </div>
        </div>
      </div>
    </div>
  </div>