-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2023 at 09:39 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_ban_hang`
--

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_hoa_don`
--

CREATE TABLE `chi_tiet_hoa_don` (
  `ma_hoa_don` int(11) NOT NULL,
  `ma_san_pham` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `don_gia` int(11) NOT NULL,
  `khuyen_mai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hoa_don`
--

CREATE TABLE `hoa_don` (
  `ma_hoa_don` int(11) NOT NULL,
  `ngay_tao` date NOT NULL,
  `nguoi_tao` varchar(30) NOT NULL,
  `khach_hang` varchar(30) NOT NULL,
  `tong_tien` int(11) NOT NULL,
  `khuyen_mai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loai_san_pham`
--

CREATE TABLE `loai_san_pham` (
  `ma_loai_san_pham` int(11) NOT NULL,
  `ten_loai_san_pham` varchar(30) NOT NULL,
  `hinh_anh` varchar(68) NOT NULL,
  `trang_thai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `loai_san_pham`
--

INSERT INTO `loai_san_pham` (`ma_loai_san_pham`, `ten_loai_san_pham`, `hinh_anh`, `trang_thai`) VALUES
(2, 'Tablet2', 'b7e05cdc48e98cfe2f16bf368e746752.jpg', 1),
(3, 'Smartphone', '23f5f0de3ef566ba2b7729a54a927511.jpg', 1),
(4, 'LMao1', 'd47be33a39b9db6b672c43200dfd6e7c.jpg', 1),
(8, 'Ball', '', 1),
(9, 'Ball2', '', 0),
(10, 'Phúc', '130c9268cface692cc21ed4b81e05fca.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loai_tin_tuc`
--

CREATE TABLE `loai_tin_tuc` (
  `ma_loai_tin_tuc` int(11) NOT NULL,
  `ten_loai_tin_tuc` varchar(30) NOT NULL,
  `trang_thai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `loai_tin_tuc`
--

INSERT INTO `loai_tin_tuc` (`ma_loai_tin_tuc`, `ten_loai_tin_tuc`, `trang_thai`) VALUES
(1, 'Tin khuyến mại 1', 1),
(2, 'Tin công nghệ', 1),
(3, 'Tin cửa hàng', 1),
(4, 'Tin bruh', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nguoi_dung`
--

CREATE TABLE `nguoi_dung` (
  `tai_khoan` varchar(30) NOT NULL,
  `mat_khau` varchar(64) NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `gio_dang_nhap` datetime DEFAULT NULL,
  `mat_khau_tam_thoi` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`tai_khoan`, `mat_khau`, `trang_thai`, `gio_dang_nhap`, `mat_khau_tam_thoi`) VALUES
('admin', 'c4ca4238a0b923820dcc509a6f75849b', 1, '2023-09-19 12:23:23', '2e8131f9e9714cc09ec7c5dba403120b'),
('duong', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', 1, NULL, NULL),
('manh', 'c4ca4238a0b923820dcc509a6f75849b', 1, NULL, NULL),
('phuc', 'c81e728d9d4c2f636f067f89cc14862c', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nha_san_xuat`
--

CREATE TABLE `nha_san_xuat` (
  `ma_nha_san_xuat` int(11) NOT NULL,
  `ten_nha_san_xuat` varchar(30) NOT NULL,
  `hinh_anh` varchar(68) NOT NULL,
  `trang_thai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `nha_san_xuat`
--

INSERT INTO `nha_san_xuat` (`ma_nha_san_xuat`, `ten_nha_san_xuat`, `hinh_anh`, `trang_thai`) VALUES
(21, 'Apple', '9fb2f3da73f4d9bc45c8263c74fbb0a6.jpg', 1),
(25, 'vb', '3cc4e8744dad1cd0fe34ce99dd67aad0.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

CREATE TABLE `san_pham` (
  `ma_san_pham` int(11) NOT NULL,
  `ten_san_pham` varchar(100) NOT NULL,
  `hinh_anh` varchar(68) NOT NULL,
  `gia` int(11) NOT NULL,
  `gia_khuyen_mai` int(11) NOT NULL,
  `mo_ta` varchar(10000) NOT NULL,
  `luot_xem` int(11) NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `ma_loai_san_pham` int(11) NOT NULL,
  `ma_nha_san_xuat` int(11) NOT NULL,
  `tai_khoan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `san_pham`
--

INSERT INTO `san_pham` (`ma_san_pham`, `ten_san_pham`, `hinh_anh`, `gia`, `gia_khuyen_mai`, `mo_ta`, `luot_xem`, `trang_thai`, `ma_loai_san_pham`, `ma_nha_san_xuat`, `tai_khoan`) VALUES
(11, 'zzzzz', 'ac5b7c01ba7a58d37fe8645ed267f4b4.jpg', 35353, 31818, 'aaa', 0, 1, 2, 21, 'admin'),
(12, 'bruh', 'e0e6a480a98536dc2508632783ef3631.jpg', 23123, 20811, '11123', 0, 1, 3, 25, 'admin'),
(13, 'aaa', 'aded56650a5b0e9a7dbce8a2b7335e49.jpg', 123123, 110811, 'aaa', 0, 1, 2, 21, 'admin'),
(14, 'anihanfi', 'b5adaaa1d4348fa2723753b6df20e3c8.jpg', 418027, 0, 'aaaaa', 0, 1, 3, 25, 'admin'),
(15, 'Samsung Galaxy Z Fold5 12GB 51', '14e7567677bffbd557f99d5203e2c380.jpg', 10000000, 0, 'ĐẶC ĐIỂM NỔI BẬT\r\nThiết kế tinh tế với nếp gấp vô hình - Cải tiến nếp gấp thẩm mĩ hơn và gập không kẽ hở\r\nBền bỉ bất chấp mọi tình huống - Đạt chuẩn kháng bụi và nước IP68 cùng chất liệu nhôm Armor Aluminum giúp hạn chế cong và xước\r\nMở ra không gian giải trí cực đại với màn hình trong 7.6\" cùng bản lề Flex dẫn đầu công nghệ\r\nThoải mái sáng tạo mọi lúc - Bút Spen tiện dụng giúp bạn phác hoạ và ghi chép không cần đến sổ tay\r\nHiệu năng cân mọi tác vụ - Snapdragon® 8 Gen 2 for Galaxy xử lí mượt mà, đa nhiệm mượt mà\r\nĐẶC ĐIỂM NỔI BẬT\r\nThiết kế tinh tế với nếp gấp vô hình - Cải tiến nếp gấp thẩm mĩ hơn và gập không kẽ hở\r\nBền bỉ bất chấp mọi tình huống - Đạt chuẩn kháng bụi và nước IP68 cùng chất liệu nhôm Armor Aluminum giúp hạn chế cong và xước\r\nMở ra không gian giải trí cực đại với màn hình trong 7.6\" cùng bản lề Flex dẫn đầu công nghệ\r\nThoải mái sáng tạo mọi lúc - Bút Spen tiện dụng giúp bạn phác hoạ và ghi chép không cần đến sổ tay\r\nHiệu năng cân mọi tác vụ - Snapdragon® 8 Gen 2 for GadfÁDASSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSĐẶC ĐIỂM NỔI BẬT Thiết kế tinh tế với nếp gấp vô hình - Cải tiến nếp gấp thẩm mĩ hơn và gập không kẽ hở Bền bỉ bất chấp mọi tình huống - Đạt chuẩn kháng bụi và nước IP68 cùng chất liệu nhôm Armor Aluminum giúp hạn chế cong và xước Mở ra không gian giải trí cực đại với màn hình trong 7.6\" cùng bản lề Flex dẫn đầu công nghệ Thoải mái sáng tạo mọi lúc - Bút Spen tiện dụng giúp bạn phác hoạ và ghi chép không cần đến sổ tay Hiệu năng cân mọi tác vụ - Snapdragon® 8 Gen 2 for Galaxy xử lí mượt mà, đa nhiệm mượt mà ĐẶC ĐIỂM NỔI BẬT Thiết kế tinh tế với nếp gấp vô hình - Cải tiến nếp gấp thẩm mĩ hơn và gập không kẽ hở Bền bỉ bất chấp mọi tình huống - Đạt chuẩn kháng bụi và nước IP68 cùng chất liệu nhôm Armor Aluminum giúp hạn chế cong và xước Mở ra không gian giải trí cực đại với màn hình trong 7.6\" cùng bản lề Flex dẫn đầu công nghệ Thoải mái sáng tạo mọi lúc - Bút Spen tiện dụng giúp bạn phác hoạ và ghi chép không cần đến sổ tay Hiệu năng cân mọi tác vụ - Snapdragon® 8 Gen 2 for GaĐẶC ĐIỂM NỔI BẬT Thiết kế tinh tế với nếp gấp vô hình - Cải tiến nếp gấp thẩm mĩ hơn và gập không kẽ hở Bền bỉ bất chấp mọi tình huống - Đạt chuẩn kháng bụi và nước IP68 cùng chất liệu nhôm Armor Aluminum giúp hạn chế cong và xước Mở ra không gian giải trí cực đại với màn hình trong 7.6\" cùng bản lề Flex dẫn đầu công nghệ Thoải mái sáng tạo mọi lúc - Bút Spen tiện dụng giúp bạn phác hoạ và ghi chép không cần đến sổ tay Hiệu năng cân mọi tác vụ - Snapdragon® 8 Gen 2 for Galaxy xử lí mượt mà, đa nhiệm mượt mà ĐẶC ĐIỂM NỔI BẬT Thiết kế tinh tế với nếp gấp vô hình - Cải tiến nếp gấp thẩm mĩ hơn và gập không kẽ hở Bền bỉ bất chấp mọi tình huống - Đạt chuẩn kháng bụi và nước IP68 cùng chất liệu nhôm Armor Aluminum giúp hạn chế cong và xước Mở ra không gian giải trí cực đại với màn hình trong 7.6\" cùng bản lề Flex dẫn đầu công nghệ Thoải mái sáng tạo mọi lúc - Bút Spen tiện dụng giúp bạn phác hoạ và ghi chép không cần đến sổ tay Hiệu năng cân mọi tác vụ - Snapdragon® 8 Gen 2 for GaĐẶC ĐIỂM NỔI BẬT Thiết kế tinh tế với nếp gấp vô hình - Cải tiến nếp gấp thẩm mĩ hơn và gập không kẽ hở Bền bỉ bất chấp mọi tình huống - Đạt chuẩn kháng bụi và nước IP68 cùng chất liệu nhôm Armor Aluminum giúp hạn chế cong và xước Mở ra không gian giải trí cực đại với màn hình trong 7.6\" cùng bản lề Flex dẫn đầu công nghệ Thoải mái sáng tạo mọi lúc - Bút Spen tiện dụng giúp bạn phác hoạ và ghi chép không cần đến sổ tay Hiệu năng cân mọi tác vụ - Snapdragon® 8 Gen 2 for Galaxy xử lí mượt mà, đa nhiệm mượt mà ĐẶC ĐIỂM NỔI BẬT Thiết kế tinh tế với nếp gấp vô hình - Cải tiến nếp gấp thẩm mĩ hơn và gập không kẽ hở Bền bỉ bất chấp mọi tình huống - Đạt chuẩn kháng bụi và nước IP68 cùng chất liệu nhôm Armor Aluminum giúp hạn chế cong và xước Mở ra không gian giải trí cực đại với màn hình trong 7.6\" cùng bản lề Flex dẫn đầu công nghệ Thoải mái sáng tạo mọi lúc - Bút Spen tiện dụng giúp bạn phác hoạ và ghi chép không cần đến sổ tay Hiệu năng cân mọi tác vụ - Snapdragon® 8 Gen 2 for GaĐẶC ĐIỂM NỔI BẬT Thiết kế tinh tế với nếp gấp vô hình - Cải tiến nếp gấp thẩm mĩ hơn và gập không kẽ hở Bền bỉ bất chấp mọi tình huống - Đạt chuẩn kháng bụi và nước IP68 cùng chất liệu nhôm Armor Aluminum giúp hạn chế cong và xước Mở ra không gian giải trí cực đại với màn hình trong 7.6\" cùng bản lề Flex dẫn đầu công nghệ Thoải mái sáng tạo mọi lúc - Bút Spen tiện dụng giúp bạn phác hoạ và ghi chép không cần đến sổ tay Hiệu năng cân mọi tác vụ - Snapdragon® 8 Gen 2 for Galaxy xử lí mượt mà, đa nhiệm mượt mà ĐẶC ĐIỂM NỔI BẬT Thiết kế tinh tế với nếp gấp vô hình - Cải tiến nếp gấp thẩm mĩ hơn và gập không kẽ hở Bền bỉ bất chấp mọi tình huống - Đạt chuẩn kháng bụi và nước IP68 cùng chất liệu nhôm Armor Aluminum giúp hạn chế cong và xước Mở ra không gian giải trí cực đại với màn hình trong 7.6\" cùng bản lề Flex dẫn đầu công nghệ Thoải mái sáng tạo mọi lúc - Bút Spen tiện dụng giúp bạn phác hoạ và ghi chép không cần đến sổ tay Hiệu năng cân mọi tác vụ - Snapdragon® 8 Gen 2 for GaĐẶC ĐIỂM NỔI BẬT Thiết kế tinh tế với nếp gấp vô hình - Cải tiến nếp gấp thẩm mĩ hơn và gập không kẽ hở Bền bỉ bất chấp mọi tình huống - Đạt chuẩn kháng bụi và nước IP68 cùng chất liệu nhôm Armor Aluminum giúp hạn chế cong và xước Mở ra không gian giải trí cực đại với màn hình trong 7.6\" cùng bản lề Flex dẫn đầu công nghệ Thoải mái sáng tạo mọi lúc - Bút Spen tiện dụng giúp bạn phác hoạ và ghi chép không cần đến sổ tay Hiệu năng cân mọi tác vụ - Snapdragon® 8 Gen 2 for Galaxy xử lí mượt mà, đa nhiệm mượt mà ĐẶC ĐIỂM NỔI BẬT Thiết kế tinh tế với nếp gấp vô hình - Cải tiến nếp gấp thẩm mĩ hơn và gập không kẽ hở Bền bỉ bất chấp mọi tình huống - Đạt chuẩn kháng bụi và nước IP68 cùng chất liệu nhôm Armor Aluminum giúp hạn chế cong và xước Mở ra không gian giải trí cực đại với màn hình trong 7.6\" cùng bản lề Flex dẫn đầu công nghệ Thoải mái sáng tạo mọi lúc - Bút Spen tiện dụng giúp bạn phác hoạ và ghi chép không cần đến sổ tay Hiệu năng cân mọi tác vụ - Snapdragon® 8 Gen 2 for GaSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSĐẶC ĐIỂM NỔI BẬT Thiết kế tinh tế với nếp gấp vô hình - Cải tiến nếp gấp thẩm mĩ hơn và gập không kẽ hở Bền bỉ bất chấp mọi tình huống - Đạt chuẩn kháng bụi và nước IP68 cùng chất liệu nhôm Armor Aluminum giúp hạn chế cong và xước Mở ra không gian giải trí cực đại với màn hình trong 7.6\" cùng bản lề Flex dẫn đầu công nghệ Thoải mái sáng tạo mọi lúc - Bút Spen tiện dụng giúp bạn phác hoạ và ghi chép không cần đến sổ tay Hiệu năng cân mọi tác vụ - Snapdragon® 8 Gen 2 for Galaxy xử lí mượt mà, đa nhiệm mượt mà ĐẶC ĐIỂM NỔI BẬT Thiết kế tinh tế với nếp gấp vô hình - Cải tiến nếp gấp thẩm mĩ hơn và gập không kẽ hở Bền bỉ bất chấp mọi tình huống - Đạt chuẩn kháng bụi và nước IP68 cùng chất liệu nhôm Armor Aluminum giúp hạn chế cong và xước Mở ra không gian giải trí cực đại với màn hình trong 7.6\" cùng bản lề Flex dẫn đầu công nghệ Thoải mái sáng tạo mọi lúc - Bút Spen tiện dụng giúp bạn phác hoạ và ghi chép không cần đến sổ tay Hiệu năng cân mọi tác vụ - Snapdragon® 8 Gen 2 for GaĐẶC ĐIỂM NỔI BẬT Thiết kế tinh tế với nếp gấp vô hình - Cải tiến nếp gấp thẩm mĩ hơn và gập không kẽ hở Bền bỉ bất chấp mọi tình huống - Đạt chuẩn kháng bụi và nước IP68 cùng chất liệu nhôm Armor Aluminum giúp hạn chế cong và xước Mở ra không gian giải trí cực đại với màn hình trong 7.6\" cùng bản lề Flex dẫn đầu công nghệ Thoải mái sáng tạo mọi lúc - Bút Spen tiện dụng giúp bạn phác hoạ và ghi chép không cần đến sổ tay Hiệu năng cân mọi tác vụ - Snapdragon® 8 Gen 2 for Galaxy xử lí mượt mà, đa nhiệm mượt mà ĐẶC ĐIỂM NỔI BẬT Thiết kế tinh tế với nếp gấp vô hình - Cải tiến nếp gấp thẩm mĩ hơn và gập không kẽ hở Bền bỉ bất chấp mọi tình huống - Đạt chuẩn kháng bụi và nước IP68 cùng chất liệu nhôm Armor Aluminum giúp hạn chế cong và xước Mở ra không gian giải trí cực đại với màn hình trong 7.6\" cùng bản lề Flex dẫn đầu công nghệ Thoải mái sáng tạo mọi lúc - Bút Spen tiện dụng giúp bạn phác hoạ và ghi chép không cần đến sổ tay Hiệu năng cân mọi tác vụ - Snapdragon® 8 Gen 2 for GaSĐẶC ĐIỂM NỔI BẬT Thiết kế tinh tế với nếp gấp vô hình - Cải tiến nếp gấp thẩm mĩ hơn và gập không kẽ hở Bền bỉ bất chấp mọi tình huống - Đạt chuẩn kháng bụi và nước IP68 cùng chất liệu nhôm Armor Aluminum giúp hạn chế cong và xước Mở ra không gian giải trí cực đại với màn hình trong 7.6\" cùng bản lề Flex dẫn đầu công nghệ Thoải mái sáng tạo mọi lúc - Bút Spen tiện dụng giúp bạn phác hoạ và ghi chép không cần đến sổ tay Hiệu năng cân mọi tác vụ - Snapdragon® 8 Gen 2 for Galaxy xử lí mượt mà, đa nhiệm mượt mà ĐẶC ĐIỂM NỔI BẬT Thiết kế tinh tế với nếp gấp vô hình - Cải tiến nếp gấp thẩm mĩ hơn và gập không kẽ hở Bền bỉ bất chấp mọi tình huống - Đạt chuẩn kháng bụi và nước IP68 cùng chất liệu nhôm Armor Aluminum giúp hạn chế cong và xước Mở ra không gian giải trí cực đại với màn hình trong 7.6\" cùng bản lề Flex dẫn đầu công nghệ Thoải mái sáng tạo mọi lúc - Bút Spen tiện dụng giúp bạn phác hoạ và ghi chép không cần đến sổ tay Hiệu năng cân mọi tác vụ - Snapdragon® 8 Gen 2 for GaSSSĐẶC ĐIỂM NỔI BẬT Thiết kế tinh tế với nếp gấp vô hình - Cải tiến nếp gấp thẩm mĩ hơn và gập không kẽ hở Bền bỉ bất chấp mọi tình huống - Đạt chuẩn kháng bụi và nước IP68 cùng chất liệu nhôm Armor Aluminum giúp hạn chế cong và xước Mở ra không gian giải trí cực đại với màn hình trong 7.6\" cùng bản lề Flex dẫn đầu công nghệ Thoải mái sáng tạo mọi lúc - Bút Spen tiện dụng giúp bạn phác hoạ và ghi chép không cần đến sổ tay Hiệu năng cân mọi tác vụ - Snapdragon® 8 Gen 2 for Galaxy xử lí mượt mà, đa nhiệm mượt mà ĐẶC ĐIỂM NỔI BẬT Thiết kế tinh tế với nếp gấp vô hình - Cải tiến nếp gấp thẩm mĩ hơn và gập không kẽ hở Bền bỉ bất chấp mọi tình huống - Đạt chuẩn kháng bụi và nước IP68 cùng chất liệu nhôm Armor Aluminum giúp hạn chế cong và xước Mở ra không gian giải trí cực đại với màn hình trong 7.6\" cùng bản lề Flex dẫn đầu công nghệ Thoải mái sáng tạo mọi lúc - Bút Spen tiện dụng giúp bạn phác hoạ và ghi chép không cần đến sổ t', 0, 1, 3, 21, 'admin'),
(16, 'Sony', '660b15fb0dab1f5df11460a738f218a6.jpg', 199999999, 0, 'ĐẶC ĐIỂM NỔI BẬT Thiết kế tinh tế với nếp gấp vô hình - Cải tiến nếp gấp thẩm mĩ hơn và gập không kẽ hở Bền bỉ bất chấp mọi tình huống - Đạt chuẩn kháng bụi và nước IP68 cùng chất liệu nhôm Armor Aluminum giúp hạn chế cong và xước Mở ra không gian giải trí cực đại với màn hình trong 7.6\" cùng bản lề Flex dẫn đầu công nghệ Thoải mái sáng tạo mọi lúc - Bút Spen tiện dụng giúp bạn phác hoạ và ghi chép không cần đến sổ tay Hiệu năng cân mọi tác vụ - Snapdragon® 8 Gen 2 for Galaxy xử lí mượt mà, đa nhiệm mượt mà ĐẶC ĐIỂM NỔI BẬT Thiết kế tinh tế với nếp gấp vô hình - Cải tiến nếp gấp thẩm mĩ hơn và gập không kẽ hở Bền bỉ bất chấp mọi tình huống - Đạt chuẩn kháng bụi và nước IP68 cùng chất liệu nhôm Armor Aluminum giúp hạn chế cong và xước Mở ra không gian giải trí cực đại với màn hình trong 7.6\" cùng bản lề Flex dẫn đầu công nghệ Thoải mái sáng tạo mọi lúc - Bút Spen tiện dụng giúp bạn phác hoạ và ghi chép không cần đến sổ tay Hiệu năng cân mọi tác vụ - Snapdragon® 8 Gen 2 for GadfÁDASSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSĐẶC ĐIỂM NỔI BẬT Thiết kế tinh tế với nếp gấp vô hình - Cải tiến nếp gấp thẩm mĩ hơn và gập không kẽ hở Bền bỉ bất chấp mọi tình huống - Đạt chuẩn kháng bụi và nước IP68 cùng chất liệu nhôm Armor Aluminum giúp hạn chế cong và xước Mở ra không gian giải trí cực đại với màn hình trong 7.6\" cùng bản lề Flex dẫn đầu công nghệ', 0, 1, 2, 25, 'admin'),
(17, 'z', '94c1dddff9b0c50e3cc78975b5180cc7.jpg', 2147483647, 0, 'ĐẶC ĐIỂM NỔI BẬT Thiết kế tinh tế với nếp gấp vô hình - Cải tiến nếp gấp thẩm mĩ hơn và gập không kẽ hở Bền bỉ bất chấp mọi tình huống - Đạt chuẩn kháng bụi và nước IP68 cùng chất liệu nhôm Armor Aluminum giúp hạn chế cong và xước Mở ra không gian giải trí cực đại với màn hình trong 7.6\" cùng bản lề Flex dẫn đầu công nghệ Thoải mái sáng tạo mọi lúc - Bút Spen tiện dụng giúp bạn phác hoạ và ghi chép không cần đến sổ tay Hiệu năng cân mọi tác vụ - Snapdragon® 8 Gen 2 for Galaxy xử lí mượt mà, đa nhiệm mượt mà ĐẶC ĐIỂM NỔI BẬT Thiết kế tinh tế với nếp gấp vô hình - Cải tiến nếp gấp thẩm mĩ hơn và gập không kẽ hở Bền bỉ bất chấp mọi tình huống - Đạt chuẩn kháng bụi và nước IP68 cùng chất liệu nhôm Armor Aluminum giúp hạn chế cong và xước Mở ra không gian giải trí cực đại với màn hình trong 7.6\" cùng bản lề Flex dẫn đầu công nghệ Thoải mái sáng tạo mọi lúc - Bút Spen tiện dụng giúp bạn phác hoạ và ghi chép không cần đến sổ tay Hiệu năng cân mọi tác vụ - Snapdragon® 8 Gen 2 for GadfÁDASSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSĐẶC ĐIỂM NỔI BẬT Thiết kế tinh tế với nếp gấp vô hình - Cải tiến nếp gấp thẩm mĩ hơn và gập không kẽ hở Bền bỉ bất chấp mọi tình huống - Đạt chuẩn kháng bụi và nước IP68 cùng chất liệu nhôm Armor Aluminum giúp hạn chế cong và xước Mở ra không gian giải trí cực đại với màn hình trong 7.6\" cùng bản lề Flex dẫn đầu công nghệ', 0, 1, 3, 21, 'admin'),
(18, 'ád', 'eace30a834a480d06954d0a0cff56cec.jpg', 555555555, 0, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 0, 1, 3, 21, 'admin'),
(19, 'bruh2', '525328a7bdbef0f586f0c241cc6eeb54.png', 23322323, 0, '1', 0, 0, 3, 21, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tin_tuc`
--

CREATE TABLE `tin_tuc` (
  `ma_tin_tuc` int(11) NOT NULL,
  `tieu_de` varchar(100) NOT NULL,
  `hinh_anh` varchar(68) NOT NULL,
  `tom_tat` varchar(1000) NOT NULL,
  `noi_dung` varchar(10000) NOT NULL,
  `ngay_dang` date NOT NULL,
  `luot_xem` int(11) NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `ma_loai_tin_tuc` int(11) NOT NULL,
  `tai_khoan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `tin_tuc`
--

INSERT INTO `tin_tuc` (`ma_tin_tuc`, `tieu_de`, `hinh_anh`, `tom_tat`, `noi_dung`, `ngay_dang`, `luot_xem`, `trang_thai`, `ma_loai_tin_tuc`, `tai_khoan`) VALUES
(5, 'news 4', '3a78611b2fc45923239698f14a91f0d8.jpg', 'aaa', 'aaaa', '2023-07-29', 0, 1, 4, ''),
(6, 'news 2', 'b0a5a70395c5b9ad98efc3076a964a27.jpg', 'aaa', 'aaaa', '2023-07-29', 0, 1, 3, ''),
(8, 'news 6', 'a6df2c32b04d96492e9b285cfb7c18f6.jpg', 'a', 'aaa', '2023-07-30', 0, 1, 4, ''),
(11, 'news 5', '9dc3a0c24797c9848637fcfed34f3b8a.jpg', 'a', 'aaa', '2023-08-03', 0, 1, 3, 'admin'),
(12, 'news 9', '71b5e668c406631966c5a5e276e572bb.jpg', 'a', 'aaa', '2023-08-03', 0, 0, 1, 'admin');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_san_pham`
-- (See below for the actual view)
--
CREATE TABLE `v_san_pham` (
`ma_san_pham` int(11)
,`ten_san_pham` varchar(100)
,`hinh_anh` varchar(68)
,`gia` int(11)
,`gia_khuyen_mai` int(11)
,`mo_ta` varchar(10000)
,`luot_xem` int(11)
,`trang_thai` int(11)
,`ma_loai_san_pham` int(11)
,`ma_nha_san_xuat` int(11)
,`tai_khoan` varchar(30)
,`ten_loai_san_pham` varchar(30)
,`ten_nha_san_xuat` varchar(30)
);

-- --------------------------------------------------------

--
-- Structure for view `v_san_pham`
--
DROP TABLE IF EXISTS `v_san_pham`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_san_pham`  AS SELECT `san_pham`.`ma_san_pham` AS `ma_san_pham`, `san_pham`.`ten_san_pham` AS `ten_san_pham`, `san_pham`.`hinh_anh` AS `hinh_anh`, `san_pham`.`gia` AS `gia`, `san_pham`.`gia_khuyen_mai` AS `gia_khuyen_mai`, `san_pham`.`mo_ta` AS `mo_ta`, `san_pham`.`luot_xem` AS `luot_xem`, `san_pham`.`trang_thai` AS `trang_thai`, `san_pham`.`ma_loai_san_pham` AS `ma_loai_san_pham`, `san_pham`.`ma_nha_san_xuat` AS `ma_nha_san_xuat`, `san_pham`.`tai_khoan` AS `tai_khoan`, `loai_san_pham`.`ten_loai_san_pham` AS `ten_loai_san_pham`, `nha_san_xuat`.`ten_nha_san_xuat` AS `ten_nha_san_xuat` FROM ((`san_pham` join `loai_san_pham` on(`san_pham`.`ma_loai_san_pham` = `loai_san_pham`.`ma_loai_san_pham`)) join `nha_san_xuat` on(`san_pham`.`ma_nha_san_xuat` = `nha_san_xuat`.`ma_nha_san_xuat`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  ADD PRIMARY KEY (`ma_hoa_don`);

--
-- Indexes for table `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`ma_hoa_don`);

--
-- Indexes for table `loai_san_pham`
--
ALTER TABLE `loai_san_pham`
  ADD PRIMARY KEY (`ma_loai_san_pham`),
  ADD UNIQUE KEY `ten_loai_san_pham` (`ten_loai_san_pham`);

--
-- Indexes for table `loai_tin_tuc`
--
ALTER TABLE `loai_tin_tuc`
  ADD PRIMARY KEY (`ma_loai_tin_tuc`),
  ADD UNIQUE KEY `ten_loai_tin_tuc` (`ten_loai_tin_tuc`);

--
-- Indexes for table `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD PRIMARY KEY (`tai_khoan`);

--
-- Indexes for table `nha_san_xuat`
--
ALTER TABLE `nha_san_xuat`
  ADD PRIMARY KEY (`ma_nha_san_xuat`),
  ADD UNIQUE KEY `ten_nha_san_xuat` (`ten_nha_san_xuat`);

--
-- Indexes for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`ma_san_pham`),
  ADD UNIQUE KEY `ten_san_pham` (`ten_san_pham`);

--
-- Indexes for table `tin_tuc`
--
ALTER TABLE `tin_tuc`
  ADD PRIMARY KEY (`ma_tin_tuc`),
  ADD UNIQUE KEY `tieu_de` (`tieu_de`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  MODIFY `ma_hoa_don` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `ma_hoa_don` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loai_san_pham`
--
ALTER TABLE `loai_san_pham`
  MODIFY `ma_loai_san_pham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `loai_tin_tuc`
--
ALTER TABLE `loai_tin_tuc`
  MODIFY `ma_loai_tin_tuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nha_san_xuat`
--
ALTER TABLE `nha_san_xuat`
  MODIFY `ma_nha_san_xuat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `ma_san_pham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tin_tuc`
--
ALTER TABLE `tin_tuc`
  MODIFY `ma_tin_tuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
