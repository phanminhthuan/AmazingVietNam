-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.37-log - MySQL Community Server (GPL)
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

-- Dumping structure for table hotels.book_rooms
CREATE TABLE IF NOT EXISTS `book_rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `amount_people` int(11) NOT NULL,
  `check_in_date` datetime NOT NULL,
  `check_out_date` datetime NOT NULL,
  `deleted` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_book_rooms_rooms` (`room_id`),
  KEY `FK_book_rooms_users` (`user_id`),
  KEY `FK_book_rooms_hotels` (`hotel_id`),
  CONSTRAINT `FK_book_rooms_hotels` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hotels.book_rooms: ~1 rows (approximately)
INSERT INTO `book_rooms` (`id`, `room_id`, `user_id`, `hotel_id`, `amount_people`, `check_in_date`, `check_out_date`, `deleted`) VALUES
	(24, 2, 5, 1, 2, '2022-05-20 00:00:00', '2022-05-21 00:00:00', b'0'),
	(25, 1, 5, 1, 2, '2022-05-21 00:00:00', '2022-05-23 00:00:00', b'0'),
	(26, 4, 6, 2, 1, '2022-05-21 00:00:00', '2022-05-24 00:00:00', b'0'),
	(27, 2, 7, 1, 2, '2022-05-25 00:00:00', '2022-05-27 00:00:00', b'0'),
	(28, 8, 8, 3, 3, '2022-05-23 00:00:00', '2022-05-25 00:00:00', b'0'),
	(29, 1, 9, 1, 2, '2022-05-25 00:00:00', '2022-05-30 00:00:00', b'0'),
	(30, 9, 9, 3, 2, '2022-05-29 00:00:00', '2022-05-31 00:00:00', b'0'),
	(31, 10, 9, 4, 2, '2022-05-21 00:00:00', '2022-05-23 00:00:00', b'0');

-- Dumping structure for table hotels.devices
CREATE TABLE IF NOT EXISTS `devices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` float NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hotels.devices: ~0 rows (approximately)

-- Dumping structure for table hotels.device_rooms
CREATE TABLE IF NOT EXISTS `device_rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) NOT NULL,
  `device_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_device_rooms_rooms` (`room_id`),
  KEY `FK_device_rooms_devices` (`device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hotels.device_rooms: ~0 rows (approximately)

-- Dumping structure for table hotels.hotels
CREATE TABLE IF NOT EXISTS `hotels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hotels.hotels: ~27 rows (approximately)
INSERT INTO `hotels` (`id`, `name`, `phone_number`, `email`, `address`, `image_url`, `location_id`) VALUES
	(1, 'Sapa Luxury Hotel', '0962064793', 'sapalux@gmail.com', '1,Hoang Lien Street, Sapa District, Lao Cai Province, 33000 Sa Pa, Vi????t Nam', 'resources/img/hotels/1.jpg', 1),
	(2, 'Sapa Garden Hotel', '0872855612', 'sapagarden@gmail.com', '069B, Muong Hoa Street, Sapa, Lao Cai, Sa Pa, Vi????t Nam', 'resources/img/hotels/1.jpg', 1),
	(3, 'City Bay Palace', '0397164882', 'citybay@gmail.com', 'S??? 156, ???????ng L?? Th??nh T??ng, ph?????ng B???ch ?????ng, V???nh H??? Long, Vi???t Nam', 'resources/img/hotels/1.jpg', 2),
	(4, 'Ho??ng Gia H??? Long', '0787622814', 'hoanggiahalong@gmail.com', '???????ng H??? Long, Bai Chay, V???nh H??? Long, Vi???t Nam', 'resources/img/hotels/1.jpg', 2),
	(5, 'Ha Long Park Hotel', '0973722744', 'halonpark@gmail.com', 'T??? 65, khu 5, ph?????ng B???ch ?????ng, V???nh H??? Long, Vi???t Nam', 'resources/img/hotels/1.jpg', 2),
	(6, 'Golden Rose Hotel', '0362572955', 'goldenrose@gmail.com', '56 Loseby Ph?????ng An H???i B???c, Qu???n S??n Tr??, ???? N???ng, Vi????t Nam ', 'resources/img/hotels/1.jpg', 3),
	(7, 'Dreams Hotel', '0341746426', 'dreamshotel@gmail.com', '410 V?? Nguy??n Gi??p, ???? N???ng, Vi????t Nam ', 'resources/img/hotels/1.jpg', 3),
	(8, 'Lamuno Da Nang Hotel', '0842781491', 'lamunahotel@gmail.com', '3 Nguy???n Cao Luy???n, An H???i B???c, S??n Tr??, ???? N???ng, Vi???t Nam', 'resources/img/hotels/1.jpg', 3),
	(9, 'Hoian Central Hotel', '0789153644', 'hoiancentral@gmail.com', '301 Nguy???n Duy Hi???u, C???m Ch??u, H???i An, Qu???ng Nam, Vi???t Nam', 'resources/img/hotels/1.jpg', 4),
	(10, 'Southern Hotel Hoi An', '0829175881', 'southernhotel@gmail.com', '10 ????o Duy T???, ph?????ng Minh An, H???i An, Qu???ng Nam, Vi???t Nam', 'resources/img/hotels/1.jpg', 4),
	(11, 'Family Hotel', '0756362015', 'odysseyhotel@gmail.com', '201 L?? Th?????ng Ki???t, H???i An, Qu???ng Nam, S??n Phong, H???i An, Vi????t Nam ', 'resources/img/hotels/1.jpg', 4),
	(12, 'Apus Hotel', '0922649653', 'apushotel@gmail.com', '95/9 H??ng V????ng, L???c Th???, Nha Trang, Kh??nh H??a, Vi???t Nam', 'resources/img/hotels/1.jpg', 5),
	(13, 'Lucky Sun Hotel ', '0722563815', 'luckysun@gmail.com', '100/8B Tr???n Ph??, Ph?????ng L???c Th???, Nha Trang, Vi????t Nam ', 'resources/img/hotels/1.jpg', 5),
	(14, 'V Hotel Nha Trang', '0288165733', 'vhotel@gmail.com', '8 H??ng V????ng, L???c Th???, Nha Trang, Kh??nh H??a, Vi???t Nam', 'resources/img/hotels/1.jpg', 5),
	(15, 'Aaron Hotel', '0981715442', 'aaronhotek@gmail.com', '6 Tr???n Quang Kh???i, L???c Th???, Nha Trang, Kh??nh H??a, Vi???t Nam', 'resources/img/hotels/1.jpg', 5),
	(16, 'Queen Villa 2 Hotel', '0724153739', 'queenvilla@gmail.com', '37 ???????ng Ph?? ?????ng Thi??n V????ng, Ph?????ng 8, Th??nh ph??? ???? L???t, L??m ?????ng, Vi???t Nam', 'resources/img/hotels/1.jpg', 6),
	(17, 'Raon Dalat Villa', '0442855166', 'raondalat@gmail.com', '22 ???????ng V???n H???nh, Ph?????ng 8, Th??nh ph??? ???? L???t, L??m ?????ng, Vi???t Nam', 'resources/img/hotels/1.jpg', 6),
	(19, 'The Sparrow Hotel', '0951633628', 'sparrowhotel@gmail.com', '1/30 ???????ng Tr???n Nh??n T??ng, Ph?????ng 8, Th??nh ph??? ???? L???t, L??m ?????ng, Vi???t Nam', 'resources/img/hotels/1.jpg', 6),
	(20, 'Green Hotel Vung Tau', '0268627863', 'greenhotelvt@gmail.com', '147C Th??y V??n, B??i Sau, Th??nh ph??? V??ng T???u, B?? R???a - V??ng T??u, Vi???t Nam', 'resources/img/hotels/1.jpg', 7),
	(21, 'Hotel Novena', '0363197418', 'novena@gmail.com', '302 Phan Chu Trinh, Ph?????ng 2, Th??nh ph??? V??ng T???u, B?? R???a - V??ng T??u, Vi???t Nam', 'resources/img/hotels/1.jpg', 7),
	(22, 'La Castle Hotel', '0852864036', 'lacastle@gmail.com', '81/09A Th??y V??n, Ph?????ng 2, Th??nh ph??? V??ng T???u, B?? R???a - V??ng T??u, Vi???t Nam', 'resources/img/hotels/1.jpg', 7),
	(23, 'Kh??ch s???n ?????ng Th??p - Riverside Hotel', '0278391903', 'riversidehotel@gmail.com', '128 L?? Du???n, Ph?????ng M??? Ph??, TP. Cao L??nh, ?????ng Th??p, Vi???t Nam', 'resources/img/hotels/1.jpg', 8),
	(24, 'Kh??ch s???n V???n Kim Long', '0925185731', 'vankimlong@gmail.com', 's??? 26 ??T 848 ???p Ph?? Long, x??, T??n Ph?? ????ng, Sa ????c, ?????ng Th??p, Vi???t Nam', 'resources/img/hotels/1.jpg', 8),
	(25, 'Blue Sky Phu Quoc Hotel', '0864837026', 'blueskyPQ@gmail.com', '65 ???????ng 30 Th??ng 4, Khu 1, Ph?? Qu???c, Ki??n Giang, Vi???t Nam', 'resources/img/hotels/1.jpg', 9),
	(26, 'Pink Pearl Hotel', '0361963016', 'pinkpearl@gmail.com', '55 ???????ng 30/4, TT. D????ng ????ng, Ph?? Qu???c, Ki??n Giang, Vi???t Nam', 'resources/img/hotels/1.jpg', 9),
	(27, 'M Hotel Phu Quoc', '0925162850', 'mhotel@gmail.com', '46 ???????ng Tr???n H??ng ?????o, C???a L???p, Ph?? Qu???c, Ki??n Giang, Vi???t Nam', 'resources/img/hotels/1.jpg', 9),
	(28, 'An Phu Hotel', '0268953015', 'anphuhotel@gmail.com', '185 ???????ng 30 Th??ng 4, TT. D????ng ????ng, Ph?? Qu???c, Ki??n Giang, Vi???t Nam', 'resources/img/hotels/1.jpg', 9);

-- Dumping structure for table hotels.locations
CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL DEFAULT '0',
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hotels.locations: ~9 rows (approximately)
INSERT INTO `locations` (`id`, `name`, `description`, `star`, `image_url`) VALUES
	(1, 'SaPa', 'Sapa n???m ??? T??y B???c Vi???t Nam, n??i n???i ti???ng v???i nh???ng ru???ng b???c thang n???i ti???p nhau, tr???i d??i nh?? ch???m ?????n ch??n tr???i c??ng ?????nh Fansipan - n??c nh?? ????ng D????ng', 5, 'resources/img/sapa.jpg'),
	(2, 'V???nh H??? Long', '?????n H??? Long, du kh??ch s??? ???????c tr???i nghi???m nhi???u d???ng ?????a h??nh ??a d???ng kh??c nhau, n???n ???m th???c phong ph??, mang ?????n nhi???u tr???i nghi???m l?? th?? cho du kh??ch tham quan', 5, 'resources/img/ha_long.jpeg'),
	(3, '???? N???ng ', 'Th??nh Ph??? ????ng S???ng Nh???t Vi???t Nam, kh??ng chi?? b????i ca??nh s????c, khi?? h????u, con ng??????i,.. ma?? ????y co??n la?? vu??ng ??????t h????i tu?? r????t nhi????u c???nh ?????p ?????c nh???t v?? tinh hoa ????m th????c', 5, 'resources/img/da_nang.jpg'),
	(4, 'H???i An', 'H???i An g??y ???n t?????ng ?????c bi???t v???i s??? b??nh y??n c???a ph??? c???, l??ng ngh???, v??? ?????p hoang s?? c???a bi???n c??ng nh???ng m??n ngon ?????m v??? ????ng nh???', 5, 'resources/img/hoi_an.jpg'),
	(5, 'Nha Trang', 'N??i c?? m???t trong 29 v???nh ?????p nh???t th??? gi???i v?? ???????c thi??n nhi??n ??u ??i ban t???ng nhi???u th???ng c???nh, ?????c s???n ?????c ????o', 5, 'resources/img/nha_trang.jpg'),
	(6, '???? L???t', '?????n V???i ???? L???t, ch???c ch???n ai c??ng xu??t xoa tr?????c v??? ?????p th?? m???ng c???a th??nh ph??? ng??n hoa n??y c??ng v???i kh?? h???u m??t m??? quanh n??m', 5, 'resources/img/da_lat.jfif'),
	(7, 'V??ng T??u', 'Kh??ng ch??? c?? nh???ng b??i bi???n ?????p, V??ng T??u v???n c??n kh??ng ??t', 3, 'resources/img/vung_tau.jpg'),
	(8, '?????ng Th??p ', 'N???i ti???ng v???i c??c c??nh ?????ng l??a tr?? ph?? ch???y d???c theo nh???ng con k??nh hi???n h??a c??ng nh???ng c??nh r???ng nguy??n sinh v?? h??? sen th??m ng??t', 5, 'resources/img/dong_thap.png'),
	(9, 'Ph?? Qu???c', 'Kh??m Ph?? Ph?? Qu???c, H??n ?????o L???n Nh???t Vi???t Nam V???i Kh?? H???u ??n H??a, nh???ng c??nh r???ng nguy??n sinh c??ng nh???ng b??i bi???n hoang s?? t????i ?????p', 5, 'resources/img/phu_quoc.jpg');

-- Dumping structure for table hotels.rooms
CREATE TABLE IF NOT EXISTS `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `status` bit(1) NOT NULL,
  `room_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL DEFAULT '0',
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_rooms_hotels` (`hotel_id`),
  CONSTRAINT `FK_rooms_hotels` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hotels.rooms: ~6 rows (approximately)
INSERT INTO `rooms` (`id`, `name`, `hotel_id`, `status`, `room_type`, `price`, `image_url`) VALUES
	(1, '345', 1, b'0', 'Normal', 300000, 'resources/img/rooms/1.jpg'),
	(2, '406', 1, b'0', 'Normal', 342000, 'resources/img/rooms/1.jpg'),
	(3, '201', 1, b'0', 'Vip', 750000, 'resources/img/rooms/1.jpg'),
	(4, '316', 2, b'0', 'Vip', 800000, 'resources/img/rooms/1.jpg'),
	(5, '431', 2, b'0', 'Normal', 435000, 'resources/img/rooms/1.jpg'),
	(6, '204', 2, b'0', 'Normal', 350000, 'resources/img/rooms/1.jpg'),
	(7, '201', 3, b'0', 'Normal ', 300000, 'resources/img/rooms/1.jpg'),
	(8, '424', 3, b'0', 'Normal ', 320000, 'resources/img/rooms/1.jpg'),
	(9, '510', 3, b'0', 'Vip', 600000, 'resources/img/rooms/1.jpg'),
	(10, '135', 4, b'0', 'Normal', 285000, 'resources/img/rooms/1.jpg'),
	(11, '204', 4, b'0', 'Normal', 295000, 'resources/img/rooms/1.jpg'),
	(12, '415', 4, b'0', 'Vip', 450000, 'resources/img/rooms/1.jpg');

-- Dumping structure for table hotels.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
book_rooms  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` bit(1) NOT NULL,
  `phone_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hotels.users: ~2 rows (approximately)
INSERT INTO `users` (`id`, `full_name`, `user_name`, `password`, `email`, `status`, `phone_number`, `address`) VALUES
	(5, 'Phan Minh Thuan', 'Phan_Minh_Thuan', '123456', 'thuan2511@gmail.com', b'1', '0369787612', ''),
	(6, 'Phan Van Tiep', 'Phan_Van_Tiep', '123456', 'thuan2511@gmail.com', b'1', '0973911020', ''),
	(7, 'Phan Minh Thuan', 'Phan_Minh_Thuan', '123456', 'thuan2511@gmail.com', b'1', '0368129991', ''),
	(8, 'Le Van Linh', 'Le_Van_Linh', '123456', 'thuan2511@gmail.com', b'1', '0927296995', ''),
	(9, 'Phan Phuong Nghi', 'Phan_Duc_Minh', '123456', 'thuan2511@gmail.com', b'1', '0787915012', '');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
book_rooms