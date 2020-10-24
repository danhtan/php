-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2019 at 02:44 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thitracnghiem`
--

-- --------------------------------------------------------

--
-- Table structure for table `cauhoi`
--

CREATE TABLE `cauhoi` (
  `ID` int(11) NOT NULL,
  `NoiDung` text COLLATE utf8_unicode_ci,
  `DoKho` int(5) DEFAULT NULL,
  `IDMH` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cauhoi`
--

INSERT INTO `cauhoi` (`ID`, `NoiDung`, `DoKho`, `IDMH`) VALUES
(1, 'Từ HTML là từ viết tắt của từ nào? ', 1, 1),
(2, 'Ai (tổ chức nào) tạo ra Web standards? ', 1, 1),
(3, 'Đâu là tag tạo ra tiêu đề web kích cỡ lớn nhất ', 1, 1),
(4, 'Đâu là tag để xuống dòng trong web? ', 1, 1),
(5, 'Đâu là tag tạo ra mầu nền của web? ', 1, 1),
(6, 'Đâu là tag tạo ra chữ in đậm  ', 1, 1),
(7, 'Đâu là tag tạo ra chữ in nghiêng ', 1, 1),
(8, 'Đâu là tag tạo ra liên kết (links) trong web ', 2, 1),
(9, ' Đâu là tag tạo ra liên kết đến email? ', 2, 1),
(10, 'Làm sao để khi click chuột vào link thì tạo ra cửa sổ mới?  ', 2, 1),
(11, 'Đâu là những tag dành cho việc tạo bảng? ', 2, 1),
(12, 'Đâu là tag căn lề trái cho nội dung 1 ô trong bảng  ', 2, 1),
(13, 'Cụm từ “CPU Pentium IV-2.4GHZ” mang thông tin về: ', 1, 2),
(14, 'Kết quả của phép nhân giữa hai số 2000 và 300 ở hệ thập phân được chứa trong thanh ghi nào? ', 1, 2),
(15, 'Loại BUS nào làm nhiệm vụ điều khiển các tín hiệu đọc/ghi dữ liệu giữa chip vi xử lý và bộ nhớ ', 1, 2),
(16, 'LCD ma trận thụ động đáp ứng tín hiệu là: ', 1, 2),
(17, 'Bộ nhớ Video RAM có mấy chế độ làm việc ', 1, 2),
(18, ' Video RAM làm việc với màn hình có độ phân giải là 780 x 450 và có khả năng hiển thị 64 màu thì dung lượng nhớ cần thiết cho Video RAM đó là:', 1, 2),
(19, 'Chíp điều khiển đồ họa CRTC 6845 MC có bao nhiêu chân địa chỉ ', 2, 2),
(20, 'Chíp điều khiển đồ họa CRTC 6845 MC có mấy chế độ làm việc ', 2, 2),
(21, 'Chíp điều khiển đồ họa CRTC 6845 MC có bao nhiêu chân dữ liệu hai chiều và địa chỉ dòng ', 2, 2),
(22, 'Trong bảng mã ASCII, 1 ký tự được mã hoá bằng mấy bit?', 1, 2),
(23, 'Chuyển số 16(H) sang hệ nhị phân. ', 1, 2),
(24, 'Đối với số nguyên có dấu, 8 bit, dùng phương pháp “Mã bù 2”, giá trị biểu diễn số 81 là: ', 1, 2),
(25, 'Có biểu diễn “1111 1101” đối với số nguyên có dấu, 8 bit, dùng phương pháp “Mã bù 2”, giá trị của nó là:', 2, 2),
(26, 'Đối với các số có dấu, phép cộng trên máy tính cho kết quả sai khi: ', 1, 2),
(27, 'Dải biễu diễn số nguyên không dấu, n bit trong máy tính là: ', 1, 2),
(28, 'Hãy xác định giá trị của các số nguyên có dấu được biểu diễn theo mã bù hai: A = 11011011 ', 1, 2),
(29, 'Thực hiện phép cộng 2 số nguyên không dấu sau: 71 + 25 ', 1, 2),
(30, 'Thực hiện phép cộng 2 số nguyên có dấu sau: -71 + (+25) ', 1, 2),
(31, 'Tại sao phải phân cấp bộ nhớ? ', 1, 2),
(32, 'Thực hiện phép trừ 2 số nguyên có dấu sau: 80 - 58 ', 3, 2),
(33, 'Thực hiện phép nhân 2 số nguyên có dấu sau: 12 x 11 ', 3, 2),
(34, 'Dải biễu diễn số nguyên có dấu, n bit trong máy tính là: ', 3, 2),
(35, 'Đối với các số không dấu, phép cộng trên máy tính cho kết quả sai khi:', 3, 2),
(36, 'Đối với các số có dấu, phép cộng trên máy tính cho kết quả sai khi:', 3, 2),
(37, 'Nhiệm vụ chính của ALU là:', 2, 2),
(38, 'Hầu hết các phép toán số học và logic trong vi xử lý thực hiện thao tác giữa các nội dung của vùng nhớ hoặc nội dung của thanh ghi với :', 1, 2),
(39, 'Các thanh ghi B,C,D E có thể sử dụng như :', 2, 2),
(40, 'Mục đích chính của thanh ghi tạm thời:', 3, 2),
(41, 'Thanh ghi địa chỉ bộ nhớ trỏ tới :', 2, 2),
(42, 'Trong khi thực hiện một lệnh, thanh ghi lệnh (IR) lưu trữ lệnh:', 1, 2),
(43, 'Độ dài của thanh ghi lệnh phụ thuộc:', 1, 2),
(44, '640 KB đầu tiên của bộ nhớ gọi là:', 1, 2),
(45, 'Đối với bộ nhớ ROM, phát biểu nào sau đây là đúng:', 2, 2),
(46, 'Cho chip nhớ SRAM có dung lượng 16K x 8 bit, phát biểu nào sau đây là đúng:', 3, 2),
(47, 'Bộ nhớ đệm Cache L1 và Cache L2 cùng được chế tạo bằng:', 2, 2),
(48, 'Thực hiện phép chia 2 số nguyên có dấu sau: 159 : 12', 1, 2),
(49, 'Biểu diễn số sau -12.652 sang chuẩn IEEE 754/1985', 1, 2),
(50, 'Xác định giá trị ở hệ 10 qua số sau 419E0000H', 1, 2),
(51, 'Trong máy tính, bộ nhớ DRAM được coi là', 1, 2),
(52, 'Trong máy tính, bộ nhớ SRAM được coi là', 2, 2),
(53, 'Tín hiệu điều khiển RAS của CPU trong việc nạp dữ liệu được dùng để điều khiển', 2, 2),
(54, 'Hãy tính địa chỉ vật lý của một ô nhớ nếu biết địa chỉ logic của nó là 3ACF:1000', 3, 2),
(55, 'Địa chỉ OFFSET của một ô nhớ được quan niệm là', 2, 2),
(56, 'Bộ nhớ ROM có thể ghi và xoá bằng điện được gọi là', 1, 2),
(57, 'SDRAM có nghĩa là:', 2, 2),
(58, 'Bộ nhớ ROM có thể lập trình 1 lần được gọi là:', 1, 2),
(59, 'Xét bộ nhớ cache, có các kỹ thuật ánh xạ địa chỉ sau đây:', 1, 2),
(60, 'Trong các yếu tố sau, yếu tố nào thường không thay đổi trong quá trình truy cập dữ liệu trên đĩa và phụ thuộc nhiều vào công nghệ chế tạo đĩa cứng:', 1, 2),
(61, 'Với một đĩa mềm có kích thước 360 Kb và số sector trên một track là 9, số track của đĩa mềm là:', 3, 2),
(62, 'Với một đĩa mềm có kích thước 1.2 Mb, số track là 80, số sector trên một track là:', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `dapan`
--

CREATE TABLE `dapan` (
  `ID` int(11) NOT NULL,
  `IDCH` int(11) DEFAULT NULL,
  `NoiDung` text COLLATE utf8_unicode_ci,
  `DapAn` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dapan`
--

INSERT INTO `dapan` (`ID`, `IDCH`, `NoiDung`, `DapAn`) VALUES
(1, 1, 'Hyperlinks and Text Markup Language ', 0),
(2, 1, 'Home Tool Markup Language ', 0),
(3, 1, 'Hyper Text Markup Language  ', 1),
(4, 1, 'Tất cả đều sai ', 0),
(5, 2, 'The World Wide Web Consortium ', 1),
(6, 2, 'Microsoft ', 0),
(7, 2, 'Netscape  ', 0),
(8, 2, 'Tất cả đều sai ', 0),
(9, 3, '<heading> ', 0),
(10, 3, '<h1>', 1),
(11, 3, '<h6>', 0),
(12, 3, '<head> ', 0),
(13, 4, '<lb>', 0),
(14, 4, ' <br> ', 1),
(15, 4, '<break>', 0),
(16, 4, '<a>', 0),
(17, 5, '<body color=\"yellow\"> ', 0),
(18, 5, '<body bgcolor=\"yellow\"> ', 1),
(19, 5, '<background>yellow</background>', 0),
(20, 6, '<b>', 1),
(21, 6, '<bold>', 0),
(22, 6, '<bld>', 0),
(23, 6, '<bb>', 0),
(24, 7, ' <ii>', 0),
(25, 7, '<italics> ', 0),
(26, 7, '<i> ', 1),
(27, 7, '<p>', 0),
(28, 8, '<a url=\"http://www.w3schools.com\">W3Schools.com</a>', 0),
(29, 8, '<a>http://www.w3schools.com</a>  ', 0),
(30, 8, '<a href=\"http://www.w3schools.com\">W3Schools</a> ', 1),
(31, 8, '<a name=\"http://www.w3schools.com\">W3Schools.com</a>', 0),
(32, 9, '<a href=\"xxx@yyy\">  ', 0),
(33, 9, '<a href=\"mailto:xxx@yyy\"> ', 1),
(34, 9, ' <mail>xxx@yyy</mail>  ', 0),
(35, 9, '<mail href=\"xxx@yyy\"> ', 0),
(36, 10, '<a href=\"url\" new> ', 0),
(37, 10, '<a href=\"url\" target=\"new\">  ', 0),
(38, 10, '<a href=\"url\" target=\"_blank\"> > ', 1),
(39, 11, '<table><tr><td> ', 1),
(40, 11, '<thead><body><tr>', 0),
(41, 11, '<table><head><tfoot> ', 0),
(42, 11, '<table><tr><tt>', 0),
(43, 12, '<italics> ', 0),
(44, 12, '<td valign=\"left\"> ', 0),
(45, 12, '<td align=\"left\"> ', 1),
(46, 12, '<td leftalign>  ', 0),
(47, 13, 'Hãng INTEL và tốc độ của CPU', 0),
(48, 13, 'Hãng sản xuất CPU và tần số làm việc của CPU', 0),
(49, 13, 'Loại CPU và tốc độ của CPU', 0),
(50, 13, 'Loại CPU và tần số làm việc của CPU', 1),
(51, 14, 'DX', 0),
(52, 14, 'AX', 1),
(53, 14, 'AXDX', 0),
(54, 14, 'DXAX', 0),
(55, 15, 'Bus điều khiển', 1),
(56, 15, 'Bus địa chỉ', 0),
(57, 15, 'Bus dữ liệu', 0),
(58, 15, 'Bus địa chỉ và Bus điều khiển', 0),
(59, 16, '150 ms đến 350 ms', 0),
(60, 16, '150 ms đến 300 ms', 1),
(61, 16, '200 ms đến 400 ms', 0),
(62, 16, '250 ms đến 450 ms', 0),
(63, 17, '1', 0),
(64, 17, '2', 1),
(65, 17, '3', 0),
(66, 17, '4', 0),
(67, 18, '257 KB', 0),
(68, 18, '255 KB', 0),
(69, 18, '256 KB', 1),
(70, 18, '258 KB', 0),
(71, 19, '12 chân', 0),
(72, 19, '13 chân', 0),
(73, 19, '14 chân', 1),
(74, 19, '15 chân', 0),
(75, 20, '1', 0),
(76, 20, '2', 1),
(77, 20, '3', 0),
(78, 20, '4', 0),
(79, 21, '6 chân dữ liệu hai chiều và 3 chân địa chỉ dòng', 0),
(80, 21, '7 chân dữ liệu hai chiều và 4 chân địa chỉ dòng', 0),
(81, 21, '8 chân dữ liệu hai chiều và 5 chân địa chỉ dòng', 1),
(82, 21, '9 chân dữ liệu hai chiều và 6 chân địa chỉ dòng', 0),
(83, 22, '7 bit', 1),
(84, 22, '8 bit', 0),
(85, 22, '16 bit', 0),
(86, 22, '32 bit', 0),
(87, 23, '0010110', 0),
(88, 23, '00010110', 1),
(89, 23, '0010011', 0),
(90, 23, '00101100', 0),
(91, 24, '0101 0001', 1),
(92, 24, '0000 1100', 0),
(93, 24, '0000 1110', 0),
(94, 24, '0100 1010', 0),
(95, 25, 'Không tồn tại ', 0),
(96, 25, '– 3', 1),
(97, 25, '3 ', 0),
(98, 25, '253', 0),
(99, 26, 'Cộng hai số dương, cho kết quả âm', 0),
(100, 26, 'Cộng hai số âm, cho kết quả dương', 0),
(101, 26, 'Có nhớ ra khỏi bit cao nhất', 0),
(102, 26, 'Cả a và b', 1),
(103, 27, '0 -> 2n', 0),
(104, 27, '0 -> 2.n - 1', 0),
(105, 27, '0 -> 2n - 1', 1),
(106, 27, '0 -> 2n', 0),
(107, 28, '35', 0),
(108, 28, '-35', 0),
(109, 28, '-37', 1),
(110, 28, '37', 0),
(111, 29, '01100000', 1),
(112, 29, '01010000', 0),
(113, 29, '10100000', 0),
(114, 29, '01101000', 0),
(115, 30, '00101110', 1),
(116, 30, '01011100', 0),
(117, 30, '01101110', 0),
(118, 30, '01011101', 0),
(119, 31, 'Để tiện cho việc quản lý', 0),
(120, 31, 'Để giảm chi phí khi thiết kế', 0),
(121, 31, 'Để giảm thời gian tìm đọc dữ liệu của CPU', 0),
(122, 31, 'Cả a,b,c đều đúng', 1),
(123, 32, '100110110', 0),
(124, 32, '101010110', 0),
(125, 32, '100010110', 1),
(126, 32, '100011110', 0),
(127, 33, '10000100', 1),
(128, 33, '11000100', 0),
(129, 33, '11000010', 0),
(130, 33, '10001001', 0),
(131, 34, '- 2(n - 1) -> 2 (n - 1)', 0),
(132, 34, '- 2.n - 1 -> 2.n +1', 0),
(133, 34, '- 2n - 1 - 1-> 2n - 1 - 1', 0),
(134, 34, '- 2n - 1 -> 2n -1 - 1', 1),
(135, 35, 'Cộng hai số dương, cho kết quả âm', 0),
(136, 35, 'Cộng hai số âm, cho kết quả dương', 0),
(137, 35, 'Có nhớ ra khỏi bit cao nhất', 1),
(138, 35, 'Cả a và b', 0),
(139, 36, 'Cộng hai số dương, cho kết quả âm', 0),
(140, 36, 'Cộng hai số âm, cho kết quả dương', 0),
(141, 36, 'Có nhớ ra khỏi bit cao nhất', 1),
(142, 36, 'Cả a và b', 0),
(143, 37, 'Thực hiện phép cộng', 0),
(144, 37, 'Như là đầu vào của thanh ghi tích lũy', 1),
(145, 37, 'Thay đổi logic hoặc số học các từ dữ liệu', 0),
(146, 37, 'Tất cả các công việc được kể ở đây.', 0),
(147, 38, 'Thanh ghi tích lũy A fc', 1),
(148, 38, 'PC', 0),
(149, 38, 'Thanh ghi địa chỉ bộ nhớ', 0),
(150, 38, 'Thanh ghi lệnh', 0),
(151, 39, 'PC', 1),
(152, 39, 'Thanh ghi địa chỉ bộ nhớ', 0),
(153, 39, 'Thanh ghi chung', 0),
(154, 39, 'Cặp thanh ghi DC', 0),
(155, 40, 'Kết nối ALU với Bus dữ liệu trong của CPU', 1),
(156, 40, 'Kết nối thanh ghi với thanh ghi tổng', 0),
(157, 40, 'Cách biệt đầu vào và ra của ALU', 0),
(158, 40, 'Đảm bảo lưu dữ liệu của thanh ghi tổng', 0),
(159, 41, 'Các nội dung của ngăn nhớ', 1),
(160, 41, ' Vùng nhớ', 0),
(161, 41, 'Một thanh ghi nhớ', 0),
(162, 41, 'Vùng của ALU', 0),
(163, 42, 'Trước', 0),
(164, 42, 'Hiện thời', 1),
(165, 42, 'Sau đó', 0),
(166, 42, 'Luôn luôn ( a,b,c)', 0),
(167, 43, 'Kiến trúc của CPU', 0),
(168, 43, 'Thiết kế CPU 8 bit hay 16 bit', 0),
(169, 43, 'Kích thước của bộ nhớ được đánh địa chỉ', 0),
(170, 43, 'Tốc độ CPU', 1),
(171, 44, 'Bộ nhớ mở rộng', 0),
(172, 44, 'Bộ nhớ qui ước', 1),
(173, 44, 'Bộ nhớ phân trang', 0),
(174, 44, 'Bộ nhớ vùng trên', 0),
(175, 45, 'Có thể dùng điện để xoá PROM', 0),
(176, 45, 'PROM là loại ROM có thể xoá và ghi lại nhiều lần', 0),
(177, 45, 'EPROM là loại ROM có thể xoá và ghi lại nhiều lần', 1),
(178, 45, 'Có thể dùng điện để xoá EPROM', 0),
(179, 46, 'Các đường địa chỉ là: A0 -> A13', 1),
(180, 46, 'Các đường địa chỉ là: D0 -> D13', 0),
(181, 46, 'Các đường dữ liệu là: A0 -> A14', 0),
(182, 46, 'Các đường dữ liệu là: D1 -> D8', 0),
(183, 47, 'SDRAM', 0),
(184, 47, 'SRAM', 1),
(185, 47, 'DRAM', 0),
(186, 47, 'DDRAM', 0),
(187, 48, '1101', 1),
(188, 48, '1011', 0),
(189, 48, '1100', 0),
(190, 48, '1001', 0),
(191, 49, 'D14A0000H', 0),
(192, 49, 'C14A0000H', 1),
(193, 49, 'B14C0000H', 0),
(194, 49, 'A14E0000H', 0),
(195, 50, '19.75', 1),
(196, 50, '18.75', 0),
(197, 50, '19.74', 0),
(198, 50, '19.76', 0),
(199, 51, 'Bộ nhớ bán dẫn động', 1),
(200, 51, 'Bộ nhớ bán dẫn tĩnh', 0),
(201, 51, 'Bộ nhớ ngoài', 0),
(202, 51, 'Bộ nhớ trong', 0),
(203, 52, 'Bộ nhớ bán dẫn tĩnh', 1),
(204, 52, 'Bộ nhớ ngoài', 0),
(205, 52, 'Bộ nhớ trong', 0),
(206, 52, 'Bộ nhớ bán dẫn động', 0),
(207, 53, 'Nạp địa chỉ hàng của DRAM', 1),
(208, 53, 'Nạp địa chỉ cột của DRAM', 0),
(209, 53, 'Nạp địa chỉ hàng của SRAM', 0),
(210, 53, 'Nạp địa chỉ cột của SRAM', 0),
(211, 54, '3BCF0', 1),
(212, 54, '3BDF0', 0),
(213, 54, '3BCE0', 0),
(214, 54, '4BCF0', 0),
(215, 55, 'Địa chỉ của một đoạn chứa ô nhớ', 0),
(216, 55, 'Địa chỉ vật lý của ô nhớ', 0),
(217, 55, 'Địa chỉ lệnh trong đoạn chứa ô nhớ', 1),
(218, 55, 'Địa chỉ logic của một ô nhớ', 0),
(219, 56, 'ROM', 0),
(220, 56, 'PROM', 0),
(221, 56, 'EPROM', 0),
(222, 56, 'EEPROM', 1),
(223, 57, 'RAM vừa tĩnh, vừa động', 0),
(224, 57, 'RAM có tốc độ chạy đồng bộ với Bus hệ thống', 1),
(225, 57, 'RAM động', 0),
(226, 57, 'RAM tĩnh', 0),
(227, 58, 'ROM', 0),
(228, 58, 'PROM', 0),
(229, 58, 'EPROM', 0),
(230, 58, 'EEPROM', 0),
(231, 59, 'Trực tiếp, liên kết hoàn toàn, liên kết tập hợp', 1),
(232, 59, 'Liên kết hoàn toàn, liên kết phụ thuộc, gián tiếp', 0),
(233, 59, 'Liên kết tập hợp, liên kết phần tử, gián tiếp', 0),
(234, 59, 'Trực tiếp, liên kết phần tử, liên kết gián đoạn', 0),
(235, 60, 'Thời gian dịch chuyển đầu đọc trung bình', 0),
(236, 60, 'Thời gian trễ do quay đĩa', 0),
(237, 60, 'Thời gian đọc/ghi dữ liệu', 1),
(238, 60, 'Cả (a) và (b) đều đúng', 0),
(239, 61, '80', 1),
(240, 61, '36', 0),
(241, 61, '39 ', 0),
(242, 61, '40', 0),
(243, 62, '10', 0),
(244, 62, '12', 0),
(245, 62, '15', 0),
(246, 62, '30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `diem`
--

CREATE TABLE `diem` (
  `IDMH` int(11) NOT NULL,
  `IDTK` int(11) NOT NULL,
  `Diem` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `monhoc`
--

CREATE TABLE `monhoc` (
  `ID` int(11) NOT NULL,
  `TenMonHoc` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoCauTrongDe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `monhoc`
--

INSERT INTO `monhoc` (`ID`, `TenMonHoc`, `SoCauTrongDe`) VALUES
(1, 'Công nghệ web', 30),
(2, 'Kiến trúc máy tính', 30);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `ID` int(11) NOT NULL,
  `TenTaiKhoan` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MatKhau` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Quyen` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`ID`, `TenTaiKhoan`, `MatKhau`, `Quyen`) VALUES
(1, 'Admin', '123456', 'admin'),
(2, 'hien', '123456', 'user'),
(3, 'tin', '123456', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `thoigian`
--

CREATE TABLE `thoigian` (
  `ID` int(11) NOT NULL,
  `IDMH` int(11) DEFAULT NULL,
  `thoigianbatdau` datetime DEFAULT NULL,
  `thoigianketthuc` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDMH` (`IDMH`);

--
-- Indexes for table `dapan`
--
ALTER TABLE `dapan`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDCH` (`IDCH`);

--
-- Indexes for table `diem`
--
ALTER TABLE `diem`
  ADD PRIMARY KEY (`IDMH`,`IDTK`),
  ADD KEY `IDTK` (`IDTK`);

--
-- Indexes for table `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `thoigian`
--
ALTER TABLE `thoigian`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDMH` (`IDMH`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cauhoi`
--
ALTER TABLE `cauhoi`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `dapan`
--
ALTER TABLE `dapan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `monhoc`
--
ALTER TABLE `monhoc`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `thoigian`
--
ALTER TABLE `thoigian`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD CONSTRAINT `cauhoi_ibfk_1` FOREIGN KEY (`IDMH`) REFERENCES `monhoc` (`ID`);

--
-- Constraints for table `dapan`
--
ALTER TABLE `dapan`
  ADD CONSTRAINT `dapan_ibfk_1` FOREIGN KEY (`IDCH`) REFERENCES `cauhoi` (`ID`);

--
-- Constraints for table `diem`
--
ALTER TABLE `diem`
  ADD CONSTRAINT `diem_ibfk_1` FOREIGN KEY (`IDMH`) REFERENCES `monhoc` (`ID`),
  ADD CONSTRAINT `diem_ibfk_2` FOREIGN KEY (`IDTK`) REFERENCES `taikhoan` (`ID`);

--
-- Constraints for table `thoigian`
--
ALTER TABLE `thoigian`
  ADD CONSTRAINT `thoigian_ibfk_1` FOREIGN KEY (`IDMH`) REFERENCES `monhoc` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
