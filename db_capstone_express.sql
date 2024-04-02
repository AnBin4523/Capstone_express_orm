/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE TABLE `binh_luan` (
  `binh_luan_id` int NOT NULL AUTO_INCREMENT,
  `nguoi_dung_id` int DEFAULT NULL,
  `hinh_id` int DEFAULT NULL,
  `ngay_binh_luan` date DEFAULT NULL,
  `noi_dung` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`binh_luan_id`),
  KEY `nguoi_dung_id` (`nguoi_dung_id`),
  KEY `hinh_id` (`hinh_id`),
  CONSTRAINT `binh_luan_ibfk_1` FOREIGN KEY (`nguoi_dung_id`) REFERENCES `nguoi_dung` (`nguoi_dung_id`),
  CONSTRAINT `binh_luan_ibfk_2` FOREIGN KEY (`hinh_id`) REFERENCES `hinh_anh` (`hinh_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `hinh_anh` (
  `hinh_id` int NOT NULL AUTO_INCREMENT,
  `ten_hinh` varchar(200) DEFAULT NULL,
  `duong_dan` varchar(200) DEFAULT NULL,
  `mo_ta` varchar(200) DEFAULT NULL,
  `nguoi_dung_id` int DEFAULT NULL,
  PRIMARY KEY (`hinh_id`),
  KEY `nguoi_dung_id` (`nguoi_dung_id`),
  CONSTRAINT `hinh_anh_ibfk_1` FOREIGN KEY (`nguoi_dung_id`) REFERENCES `nguoi_dung` (`nguoi_dung_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `nguoi_dung` (
  `nguoi_dung_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(200) DEFAULT NULL,
  `mat_khau` varchar(200) DEFAULT NULL,
  `ho_ten` varchar(200) DEFAULT NULL,
  `tuoi` int DEFAULT NULL,
  `anh_dai_dien` varchar(200) DEFAULT NULL,
  `facebook_app_id` varchar(455) DEFAULT NULL,
  PRIMARY KEY (`nguoi_dung_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `binh_luan` (`binh_luan_id`, `nguoi_dung_id`, `hinh_id`, `ngay_binh_luan`, `noi_dung`) VALUES
(1, 1, 1, '2023-09-20', 'cái này xấu quắc');
INSERT INTO `binh_luan` (`binh_luan_id`, `nguoi_dung_id`, `hinh_id`, `ngay_binh_luan`, `noi_dung`) VALUES
(2, 2, 2, '2023-09-21', 'awwwww đẹp quá');
INSERT INTO `binh_luan` (`binh_luan_id`, `nguoi_dung_id`, `hinh_id`, `ngay_binh_luan`, `noi_dung`) VALUES
(3, 3, 3, '2023-09-22', 'cute dọ');
INSERT INTO `binh_luan` (`binh_luan_id`, `nguoi_dung_id`, `hinh_id`, `ngay_binh_luan`, `noi_dung`) VALUES
(4, 4, 4, '2023-09-23', 'xấy quãi đạn'),
(5, 5, 5, '2023-09-24', '??? thằng nào đăng vậy '),
(6, 6, 6, '2023-09-25', 'toẹt dời'),
(7, 7, 7, '2023-09-26', 'Cưng mà nói luôn'),
(8, 8, 8, '2023-09-27', 'hết cứu'),
(9, 9, 9, '2023-09-28', 'choáy áccccc'),
(10, 10, 10, '2023-09-29', 'Bây để tao yên');

INSERT INTO `hinh_anh` (`hinh_id`, `ten_hinh`, `duong_dan`, `mo_ta`, `nguoi_dung_id`) VALUES
(1, 'Hình 1', 'duongdan1.jpg', 'Hình mô tả 1', 1);
INSERT INTO `hinh_anh` (`hinh_id`, `ten_hinh`, `duong_dan`, `mo_ta`, `nguoi_dung_id`) VALUES
(2, 'Hình 2', 'duongdan2.jpg', 'Hình mô tả 2', 2);
INSERT INTO `hinh_anh` (`hinh_id`, `ten_hinh`, `duong_dan`, `mo_ta`, `nguoi_dung_id`) VALUES
(3, 'Hình 3', 'duongdan3.jpg', 'Hình mô tả 3', 3);
INSERT INTO `hinh_anh` (`hinh_id`, `ten_hinh`, `duong_dan`, `mo_ta`, `nguoi_dung_id`) VALUES
(4, 'Hình 4', 'duongdan4.jpg', 'Hình mô tả 4', 4),
(5, 'Hình 5', 'duongdan5.jpg', 'Hình mô tả 5', 5),
(6, 'Hình 6', 'duongdan6.jpg', 'Hình mô tả 6', 6),
(7, 'Hình 7', 'duongdan7.jpg', 'Hình mô tả 7', 7),
(8, 'Hình 8', 'duongdan8.jpg', 'Hình mô tả 8', 8),
(9, 'Hình 9', 'duongdan9.jpg', 'Hình mô tả 9', 9),
(10, 'Hình 10', 'duongdan10.jpg', 'Hình mô tả 10', 10);

INSERT INTO `nguoi_dung` (`nguoi_dung_id`, `email`, `mat_khau`, `ho_ten`, `tuoi`, `anh_dai_dien`, `facebook_app_id`) VALUES
(1, 'tommyteo@example.com', 'matkhau1', 'Tèo Tommy', 19, 'avatar1.jpg', '25%3AUoYSPkMx-b8WlQ%3A2%3A1694014658%3A-1%3A6162%3A%3AAcWU9oOVsEy1PFyx24ukOukH0svq7VNu41fBPOulCw');
INSERT INTO `nguoi_dung` (`nguoi_dung_id`, `email`, `mat_khau`, `ho_ten`, `tuoi`, `anh_dai_dien`, `facebook_app_id`) VALUES
(2, 'johnwick@example.com', 'matkhau2', 'John Wick', 23, 'avatar2.jpg', '25%3AUoYSPkMx-b8WlQ%3A2%3A1694014658%3A-1%3A6162%3A%3AAcWU9oOVsEy1PFyx24ukOukH0svq7VNu41fBPOulCw');
INSERT INTO `nguoi_dung` (`nguoi_dung_id`, `email`, `mat_khau`, `ho_ten`, `tuoi`, `anh_dai_dien`, `facebook_app_id`) VALUES
(3, 'dom@example.com', 'matkhau3', 'DOM', 18, 'avatar3.jpg', '25%3AUoYSPkMx-b8WlQ%3A2%3A1694014658%3A-1%3A6162%3A%3AAcWU9oOVsEy1PFyx24ukOukH0svq7VNu41fBPOulCw');
INSERT INTO `nguoi_dung` (`nguoi_dung_id`, `email`, `mat_khau`, `ho_ten`, `tuoi`, `anh_dai_dien`, `facebook_app_id`) VALUES
(4, 'eminem@example.com', 'matkhau4', 'Eminem', 25, 'avatar4.jpg', '25%3AUoYSPkMx-b8WlQ%3A2%3A1694014658%3A-1%3A6162%3A%3AAcWU9oOVsEy1PFyx24ukOukH0svq7VNu41fBPOulCw'),
(5, 'cardiB@example.com', 'matkhau5', 'Cardi B', 28, 'avatar5.jpg', '25%3AUoYSPkMx-b8WlQ%3A2%3A1694014658%3A-1%3A6162%3A%3AAcWU9oOVsEy1PFyx24ukOukH0svq7VNu41fBPOulCw'),
(6, 'jack97@example.com', 'matkhau6', '5 củ', 29, 'avatar6.jpg', '25%3AUoYSPkMx-b8WlQ%3A2%3A1694014658%3A-1%3A6162%3A%3AAcWU9oOVsEy1PFyx24ukOukH0svq7VNu41fBPOulCw'),
(7, 'anhbay@example.com', 'matkhau7', 'Ronaldo', 27, 'avatar7.jpg', '25%3AUoYSPkMx-b8WlQ%3A2%3A1694014658%3A-1%3A6162%3A%3AAcWU9oOVsEy1PFyx24ukOukH0svq7VNu41fBPOulCw'),
(8, 'kemkabi@example.com', 'matkhau8', 'gái nhật đó', 18, 'avatar8.jpg', '25%3AUoYSPkMx-b8WlQ%3A2%3A1694014658%3A-1%3A6162%3A%3AAcWU9oOVsEy1PFyx24ukOukH0svq7VNu41fBPOulCw'),
(9, 'anhbatracu@example.com', 'matkhau9', 'Anh Ba Trà Cú', 26, 'avatar9.jpg', '25%3AUoYSPkMx-b8WlQ%3A2%3A1694014658%3A-1%3A6162%3A%3AAcWU9oOVsEy1PFyx24ukOukH0svq7VNu41fBPOulCw'),
(10, 'camlansuc@example.com', 'matkhau10', 'Linda', 35, 'avatar10.jpg', '25%3AUoYSPkMx-b8WlQ%3A2%3A1694014658%3A-1%3A6162%3A%3AAcWU9oOVsEy1PFyx24ukOukH0svq7VNu41fBPOulCw');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;