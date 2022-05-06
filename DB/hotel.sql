-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table hotels.book_rooms: ~1 rows (approximately)

-- Dumping data for table hotels.customers: ~0 rows (approximately)

-- Dumping data for table hotels.devices: ~0 rows (approximately)

-- Dumping data for table hotels.device_rooms: ~0 rows (approximately)

-- Dumping data for table hotels.hotels: ~27 rows (approximately)
INSERT INTO `hotels` (`id`, `name`, `phone_number`, `email`, `address`, `location`) VALUES
	(1, 'Sapa Luxury Hotel', '0962064793', 'sapalux@gmail.com', '1,Hoang Lien Street, Sapa District, Lao Cai Province, 33000 Sa Pa, Việt Nam', 'sapa'),
	(2, 'Sapa Garden Hotel', '0872855612', 'sapagarden@gmail.com', '069B, Muong Hoa Street, Sapa, Lao Cai, Sa Pa, Việt Nam', 'sapa'),
	(3, 'City Bay Palace', '0397164882', 'citybay@gmail.com', 'Số 156, đường Lê Thánh Tông, phường Bạch Đằng, Vịnh Hạ Long, Việt Nam', 'vinhhalong'),
	(4, 'Hoàng Gia Hạ Long', '0787622814', 'hoanggiahalong@gmail.com', 'Đường Hạ Long, Bai Chay, Vịnh Hạ Long, Việt Nam', 'vinhhalong'),
	(5, 'Ha Long Park Hotel', '0973722744', 'halonpark@gmail.com', 'Tổ 65, khu 5, phường Bạch Đằng, Vịnh Hạ Long, Việt Nam', 'vinhhalong'),
	(6, 'Golden Rose Hotel', '0362572955', 'goldenrose@gmail.com', '56 Loseby Phường An Hải Bắc, Quận Sơn Trà, Đà Nẵng, Việt Nam ', 'danang '),
	(7, 'Dreams Hotel', '0341746426', 'dreamshotel@gmail.com', '410 Võ Nguyên Giáp, Đà Nẵng, Việt Nam ', 'danang '),
	(8, 'Lamuno Da Nang Hotel', '0842781491', 'lamunahotel@gmail.com', '3 Nguyễn Cao Luyện, An Hải Bắc, Sơn Trà, Đà Nẵng, Việt Nam', 'danang'),
	(9, 'Hoian Central Hotel', '0789153644', 'hoiancentral@gmail.com', '301 Nguyễn Duy Hiệu, Cẩm Châu, Hội An, Quảng Nam, Việt Nam', 'hoian'),
	(10, 'Southern Hotel Hoi An', '0829175881', 'southernhotel@gmail.com', '10 Đào Duy Từ, phường Minh An, Hội An, Quảng Nam, Việt Nam', 'hoian '),
	(11, 'Family Hotel', '0756362015', 'odysseyhotel@gmail.com', '201 Lý Thường Kiệt, Hội An, Quảng Nam, Sơn Phong, Hội An, Việt Nam ', 'hoian'),
	(12, 'Apus Hotel', '0922649653', 'apushotel@gmail.com', '95/9 Hùng Vương, Lộc Thọ, Nha Trang, Khánh Hòa, Việt Nam', 'nhatrang'),
	(13, 'Lucky Sun Hotel ', '0722563815', 'luckysun@gmail.com', '100/8B Trần Phú, Phường Lộc Thọ, Nha Trang, Việt Nam ', 'nhatrang'),
	(14, 'V Hotel Nha Trang', '0288165733', 'vhotel@gmail.com', '8 Hùng Vương, Lộc Thọ, Nha Trang, Khánh Hòa, Việt Nam', 'nhatrang'),
	(15, 'Aaron Hotel', '0981715442', 'aaronhotek@gmail.com', '6 Trần Quang Khải, Lộc Thọ, Nha Trang, Khánh Hòa, Việt Nam', 'nhatrang'),
	(16, 'Queen Villa 2 Hotel', '0724153739', 'queenvilla@gmail.com', '37 Đường Phù Đổng Thiên Vương, Phường 8, Thành phố Đà Lạt, Lâm Đồng, Việt Nam', 'dalat'),
	(17, 'Raon Dalat Villa', '0442855166', 'raondalat@gmail.com', '22 Đường Vạn Hạnh, Phường 8, Thành phố Đà Lạt, Lâm Đồng, Việt Nam', 'dalat'),
	(19, 'The Sparrow Hotel', '0951633628', 'sparrowhotel@gmail.com', '1/30 Đường Trần Nhân Tông, Phường 8, Thành phố Đà Lạt, Lâm Đồng, Việt Nam', 'dalat'),
	(20, 'Green Hotel Vung Tau', '0268627863', 'greenhotelvt@gmail.com', '147C Thùy Vân, Bãi Sau, Thành phố Vũng Tầu, Bà Rịa - Vũng Tàu, Việt Nam', 'vungtau'),
	(21, 'Hotel Novena', '0363197418', 'novena@gmail.com', '302 Phan Chu Trinh, Phường 2, Thành phố Vũng Tầu, Bà Rịa - Vũng Tàu, Việt Nam', 'vungtau'),
	(22, 'La Castle Hotel', '0852864036', 'lacastle@gmail.com', '81/09A Thùy Vân, Phường 2, Thành phố Vũng Tầu, Bà Rịa - Vũng Tàu, Việt Nam', 'vungtau'),
	(23, 'Khách sạn Đồng Tháp - Riverside Hotel', '0278391903', 'riversidehotel@gmail.com', '128 Lê Duẩn, Phường Mỹ Phú, TP. Cao Lãnh, Đồng Tháp, Việt Nam', 'dongthap'),
	(24, 'Khách sạn Vạn Kim Long', '0925185731', 'vankimlong@gmail.com', 'số 26 ĐT 848 ấp Phú Long, xã, Tân Phú Đông, Sa Đéc, Đồng Tháp, Việt Nam', 'dongthap'),
	(25, 'Blue Sky Phu Quoc Hotel', '0864837026', 'blueskyPQ@gmail.com', '65 Đường 30 Tháng 4, Khu 1, Phú Quốc, Kiên Giang, Việt Nam', 'phuquoc'),
	(26, 'Pink Pearl Hotel', '0361963016', 'pinkpearl@gmail.com', '55 đường 30/4, TT. Dương Đông, Phú Quốc, Kiên Giang, Việt Nam', 'phuquoc'),
	(27, 'M Hotel Phu Quoc', '0925162850', 'mhotel@gmail.com', '46 Đường Trần Hưng Đạo, Cửa Lấp, Phú Quốc, Kiên Giang, Việt Nam', 'phuquoc'),
	(28, 'An Phu Hotel', '0268953015', 'anphuhotel@gmail.com', '185 Đường 30 Tháng 4, TT. Dương Đông, Phú Quốc, Kiên Giang, Việt Nam', 'phuquoc');

-- Dumping data for table hotels.rooms: ~6 rows (approximately)
INSERT INTO `rooms` (`id`, `name`, `hotel_id`, `status`, `room_type`, `price`) VALUES
	(201, '201', 1, b'0', 'Vip', 750000),
	(204, '204', 2, b'0', 'Normal', 350000),
	(316, '316', 2, b'0', 'Vip', 800000),
	(345, '345', 1, b'0', 'Normal', 300000),
	(406, '406', 1, b'0', 'Normal', 342000),
	(431, '431', 2, b'0', 'Normal', 435000);

-- Dumping data for table hotels.users: ~2 rows (approximately)
INSERT INTO `users` (`id`, `full_name`, `user_name`, `password`, `email`, `status`) VALUES
	(1, 'Phan Minh Thuận', 'thuanphan', '123456', 'minhthuan25112001@gmail.com', b'1'),
	(2, 'Lê Văn Lĩnh', 'linhle', '123456', 'vanlinh.it.hutech@gmail.com', b'1');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
