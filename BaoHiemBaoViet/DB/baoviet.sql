/*
 Navicat Premium Data Transfer

 Source Server         : laravel
 Source Server Type    : MySQL
 Source Server Version : 100131
 Source Host           : localhost:3306
 Source Schema         : baoviet

 Target Server Type    : MySQL
 Target Server Version : 50199
 File Encoding         : 65001

 Date: 10/05/2018 09:54:34
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
BEGIN;
INSERT INTO `categories` VALUES (1, 'Tablet', 'Tablet - Máy tính bảng - PDA', '2018-02-05 00:00:00', '0000-00-00 00:00:00'), (2, 'Phone', 'Điện thoại - Feature Phone - Smart Phone - IP Phone', '2018-02-05 18:43:29', '0000-00-00 00:00:00'), (4, 'Laptop', 'Máy tính sách tay - Laptop - notebook - workstation', '2018-02-06 14:14:55', '0000-00-00 00:00:00'), (5, ' Accessories', 'Phụ kiện - phụ kiện điện thoại, máy tính, tablet', '2018-02-06 14:43:05', '2018-02-06 14:49:36');
COMMIT;

-- ----------------------------
-- Table structure for chi_tiet_hoa_don
-- ----------------------------
DROP TABLE IF EXISTS `chi_tiet_hoa_don`;
CREATE TABLE `chi_tiet_hoa_don`  (
  `receipt_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10, 0) NOT NULL,
  `sum` decimal(10, 0) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci;

-- ----------------------------
-- Records of chi_tiet_hoa_don
-- ----------------------------
BEGIN;
INSERT INTO `chi_tiet_hoa_don` VALUES ('1520510982', 'SP04', 2, 3800000, 7600000), ('1520510982', 'SP03', 1, 3000000, 3000000), ('1520510982', 'SP13', 1, 3000000, 3000000), ('1520511643', 'SP04', 2, 3800000, 7600000), ('1520511643', 'SP13', 2, 3000000, 6000000), ('1520511643', 'SP09', 1, 2000000, 2000000), ('1520511736', 'SP05', 1, 4500000, 4500000), ('1520511736', 'SP07', 1, 2000000, 2000000), ('1520511736', 'SP10', 1, 25000000, 25000000), ('1520512082', 'SP14', 1, 18000000, 18000000), ('1520512082', 'SP01', 1, 1000000, 1000000), ('1520512082', 'SP11', 1, 300000, 300000), ('1520512817', 'SP04', 1, 3800000, 3800000), ('1520512817', 'SP06', 1, 26000000, 26000000), ('1520512879', 'SP05', 1, 4500000, 4500000), ('1520512879', 'SP09', 1, 2000000, 2000000), ('1520513154', 'SP01', 3, 1000000, 3000000), ('1520513154', 'SP02', 1, 2000000, 2000000), ('1520513762', 'SP01', 1, 1000000, 1000000), ('1520513895', 'SP06', 1, 26000000, 26000000), ('1520513895', 'SP09', 1, 2000000, 2000000), ('1520514623', 'SP05', 1, 4500000, 4500000), ('1520514623', 'SP07', 1, 2000000, 2000000), ('1520515228', 'SP06', 1, 26000000, 26000000), ('1520515228', 'SP03', 1, 3000000, 3000000), ('1520515228', 'SP10', 1, 25000000, 25000000), ('1520606238', 'SP05', 1, 4500000, 4500000), ('1520606238', 'SP07', 1, 2000000, 2000000), ('1520606238', 'SP11', 1, 300000, 300000), ('1520606238', 'SP14', 1, 18000000, 18000000), ('1520606238', 'SP04', 1, 3800000, 3800000), ('1520610100', 'SP04', 1, 3800000, 3800000), ('1520610100', 'SP07', 1, 2000000, 2000000), ('1520622871', 'SP06', 1, 26000000, 26000000), ('1520622871', 'SP07', 1, 2000000, 2000000), ('1520622871', 'SP10', 1, 25000000, 25000000), ('1520622871', 'SP01', 1, 1000000, 1000000), ('1520674018', 'SP03', 1, 3000000, 3000000), ('1520674018', 'SP02', 1, 2000000, 2000000), ('1520674343', 'SP12', 1, 800000, 800000), ('1520674343', 'SP09', 2, 2000000, 4000000), ('1520674343', 'SP03', 1, 3000000, 3000000), ('1520674768', 'SP10', 1, 25000000, 25000000), ('1520674768', 'SP06', 1, 26000000, 26000000), ('1520675704', 'SP07', 1, 2000000, 2000000), ('1520675704', 'SP06', 1, 26000000, 26000000), ('1520675704', 'SP05', 1, 4500000, 4500000), ('1520677336', 'SP09', 1, 2000000, 2000000), ('1520677336', 'SP10', 1, 25000000, 25000000), ('1520677336', 'SP07', 1, 2000000, 2000000), ('1520678281', 'SP09', 1, 2000000, 2000000), ('1520678281', 'SP11', 1, 300000, 300000), ('1520678281', 'SP02', 1, 2000000, 2000000), ('1520678764', 'SP02', 1, 2000000, 2000000), ('1520681755', 'SP05', 1, 4500000, 4500000), ('1520681755', 'SP10', 2, 25000000, 50000000), ('1520681755', 'SP13', 1, 3000000, 3000000), ('1520681755', 'SP01', 1, 1000000, 1000000), ('1520681801', 'SP04', 1, 3800000, 3800000), ('1520681801', 'SP05', 1, 4500000, 4500000), ('1520681801', 'SP10', 1, 25000000, 25000000);
COMMIT;

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci;

-- ----------------------------
-- Records of customers
-- ----------------------------
BEGIN;
INSERT INTO `customers` VALUES (1, 'Trần Danh Tùng', 'ttt@gmail.com', '0123456789', 'Thanh Nhàn - Hà Nội'), (4, 'Lê Thị Táo', 'tao@gmail.com', '03453465467', 'Nam Định'), (5, 'Phạm Thị G', 'pham@gmail.com', '02873827899', 'Sài gòn'), (6, 'Lê Văn Tuấn', 'tuanlv3@gmail.com', '0345346544', 'Hà Nam'), (7, 'Lê Văn Khải', 'khailv@zent.edu', '03453465467', 'Triều Khúc - Hà Nội'), (8, 'Ngụy Minh Tuấn', 'tuannm@gmail.com', '02873827899', 'Hà Đông Hà Nội'), (9, 'Ngô Đức Sơn', 'sonnd@gmail.com', '0345346544', 'Hai Bà Trưng - Hà Nội'), (10, 'Lê Văn Lương', 'luonglv@gmail.com', '02345236578', 'Tây Mỗ - Hà Nội'), (11, 'Mai Thái Sơn', 'sml@gmail.com', '02345236578', 'Nghệ An'), (12, 'Cù Trọng Xoay', 'xoayct@gmail.com', '02345236578', 'Hai Bà Trưng - Hà Nội'), (13, 'Trần Xoáy', 'xoayt@gmail.com', '02345236578', 'Hà Đông Hà Nội'), (14, 'Tùng Béo', 'tungtinhteis@gmail.com', '03453465467', 'Hoài Đức Hà Nội');
COMMIT;

-- ----------------------------
-- Table structure for hoa_don
-- ----------------------------
DROP TABLE IF EXISTS `hoa_don`;
CREATE TABLE `hoa_don`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `staff_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `sum` decimal(10, 0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci;

-- ----------------------------
-- Records of hoa_don
-- ----------------------------
BEGIN;
INSERT INTO `hoa_don` VALUES (1, '1520510604', '1', '33', '2018-03-08 19:03:24', 13600000), (5, '1520510678', '4', '33', '2018-03-08 19:04:38', 13600000), (9, '1520510766', '1', '33', '2018-03-08 19:06:06', 13600000), (10, '1520510923', '1', '33', '2018-03-08 19:08:43', 13600000), (11, '1520510982', '4', '33', '2018-03-08 19:09:42', 13600000), (12, '1520511643', '1', '33', '2018-03-08 19:20:43', 15600000), (13, '1520511736', '4', '33', '2018-03-08 19:22:16', 31500000), (14, '1520512082', '', '33', '2018-03-08 19:28:02', 19300000), (15, '1520512817', '1', '33', '2018-03-08 19:40:17', 29800000), (16, '1520512879', '', '33', '2018-03-08 19:41:19', 6500000), (17, '1520513154', '5', '33', '2018-03-08 19:45:54', 5000000), (18, '1520513762', '9', '33', '2018-03-08 19:56:02', 1000000), (19, '1520513895', '1', '33', '2018-03-08 19:58:15', 28000000), (20, '1520514623', '1', '33', '2018-03-08 20:10:23', 6500000), (21, '1520515228', '4', '33', '2018-03-08 20:20:28', 54000000), (22, '1520606238', '7', '33', '2018-03-09 21:37:18', 28600000), (23, '1520610100', '4', '33', '2018-03-09 22:41:40', 5800000), (24, '1520622871', '10', '33', '2018-03-10 02:14:31', 54000000), (25, '1520674018', '6', '33', '2018-03-10 16:26:58', 5000000), (26, '1520674343', '11', '33', '2018-03-10 16:32:23', 7800000), (27, '1520674768', '12', '33', '2018-03-10 16:39:28', 51000000), (28, '1520675704', '13', '33', '2018-03-10 16:55:04', 32500000), (29, '1520677336', '14', '33', '2018-03-10 17:22:16', 29000000), (30, '1520678281', '14', '33', '2018-03-10 17:38:01', 4300000), (31, '1520678764', '14', '33', '2018-03-10 17:46:04', 2000000), (32, '1520681755', '4', '33', '2018-03-10 18:35:55', 58500000), (33, '1520681801', '14', '33', '2018-03-10 18:36:41', 33300000);
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (1, '2018_05_07_073401_create_posts_table', 1), (3, '2018_05_07_073948_create_titles_table', 2);
COMMIT;

-- ----------------------------
-- Table structure for momento_distribution
-- ----------------------------
DROP TABLE IF EXISTS `momento_distribution`;
CREATE TABLE `momento_distribution`  (
  `momento_id` int(11) NOT NULL AUTO_INCREMENT,
  `momento_idmember` int(11) NOT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `unread` tinyint(1) NULL DEFAULT 1,
  `accepted` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'pending',
  `ext_member` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`momento_id`, `momento_idmember`) USING BTREE,
  INDEX `momento_distribution_FI_2`(`momento_idmember`) USING BTREE,
  INDEX `accepted`(`accepted`, `ext_member`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Table structure for overrides
-- ----------------------------
DROP TABLE IF EXISTS `overrides`;
CREATE TABLE `overrides`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci;

-- ----------------------------
-- Records of overrides
-- ----------------------------
BEGIN;
INSERT INTO `overrides` VALUES (4, '192.168.0.102', '2018-05-10 10:13:26', '2018-05-10 10:13:26'), (32, '192.168.0.102', '2018-05-10 10:25:32', '2018-05-10 10:25:32'), (33, '192.168.0.102', '2018-05-10 10:52:33', '2018-05-10 10:52:33'), (34, '192.168.0.102', '2018-05-10 11:09:57', '2018-05-10 11:09:57'), (35, '192.168.0.102', '2018-05-10 11:11:21', '2018-05-10 11:11:21'), (36, '192.168.0.102', '2018-05-10 11:12:33', '2018-05-10 11:12:33');
COMMIT;

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci;

-- ----------------------------
-- Records of posts
-- ----------------------------
BEGIN;
INSERT INTO `posts` VALUES (1, 'Phó Chủ tịch Nước trao học bổng \"An sinh Giáo dục - Xe đạp đến trường\" cho trẻ em hiếu học tại An Giang', '11213', 'Ngày 13/12/2017 tại An Giang, Phó Chủ tịch nước CHXHCNVN Đặng Thị Ngọc Thịnh đã đến tham dự và trao tặng 100 chiếc xe đạp, 100 chiếc ba lô và 100 suất học bổng tiền mặt cho trẻ em hiếu học có hoàn cảnh khó khăn trong chương trình học bổng “An sinh giáo dục - Xe đạp đến trường” do Quỹ Bảo trợ Trẻ Em Việt Nam, Tổng công ty Bảo Việt Nhân thọ phối hợp với phối hợp với Tỉnh An Giang tổ chức. Chương trình tại An Giang tiếp nối chặng hành trình trao tặng 1.700 xe đạp và 1.700 chiếc Ba lô với tổng giá trị 3,6 tỷ đồng trong chương trình “Học bổng An Sinh Giáo dục – Xe đạp đến trường – 2017” của QBTTEVN và Bảo Việt Nhân thọ trên toàn quốc.', 'Tham gia chương trình trao học bổng có Ông Chu Văn Yêm – Phó Chủ nhiệm Văn phòng Chủ tịch nước; Ông Vương Bình Thạnh – Thường vụ tỉnh ủy, Phó Bí thư Chủ tịch UBND Tỉnh An Giang; Ông Nguyễn Thanh Bình – Thường vụ tỉnh ủy, Phó Chủ tịch UBND Tỉnh An Giang; Ông Đỗ Tấn Kiết – Phó Chủ tịch Hội đồng nhân dân Tỉnh An Giang; Ông Tư Thanh Khiết – Phó Chủ tịch Mặt trận Tổ quốc Tỉnh An Giang; Bà Đặng Thị Hoa Rây – Giám đốc Sở LĐTBXH Tỉnh An Giang; Bà Nguyễn Thị Hiền – Phó GĐ Quỹ BTTEVN; Ông Nguyễn Thành Quang – Phó Tổng Giám đốc TCT Bảo Việt Nhân thọ, bà Nguyễn Thị Ánh Tuyết – Giám đốc Công ty BVNT An Giang cùng 450 đại biểu và 200 em học sinh có hoàn cảnh khó khăn đạt thành tích tốt trong học tập tại An Giang.\r\n\r\n\r\n\r\nChương trình Học bổng “An Sinh Giáo Dục – Xe đạp đến trường” được Bảo Việt Nhân Thọ phối hợp cùng Quỹ BTTEVN xây dựng và triển khai trong suốt 13 năm qua, nhằm khuyến khích và hỗ trợ trẻ em nghèo hiếu học trên toàn quốc. Sau 13 năm hợp tác, thông qua Quỹ Bảo trợ trẻ em Việt Nam, Bảo Việt Nhân Thọ đã trao hơn 10.000 suất học bổng An sinh giáo dục và 12.000 suất quà với tổng kinh phí hơn 18 tỷ đổng cho trẻ em có hoàn cảnh đặc biệt, khó khăn trên 63 tỉnh/thành. Năm 2017, Bảo Việt Nhân Thọ sẽ trao tặng tổng cộng 1.700 xe đạp cùng với 1.700 chiếc Ba lô (với tổng kinh phí 3,6 tỷ đồng). Riêng tại An Giang, Phó Chủ tịch nước đã trực tiếp trao tặng 100 chiếc xe đạp cùng với 100 chiếc ba lô và 100 suất học bổng tiền mặt đến 200 em học sinh tiêu biểu của tỉnh, đồng thời động viên tinh thần ham học hỏi của các em, khuyến khích các em tiếp tục nỗ lực phấn đấu vươn lên, đạt thành tích tốt trong học tập. \r\n\r\nPhó Chủ tịch nước Đặng Thị Ngọc Thịnh đã gửi lời cảm ơn đến các nhà tài trợ, ghi nhận sự chung tay của các tổ chức, đơn vị trong đó có Bảo Việt Nhân thọ trong công tác bảo vệ, chăm sóc và hỗ trợ các trẻ em có hoàn cảnh đặc biệt về cả vật chất và tinh thần. \r\n\r\nBà cũng có lời động viên đến các em học sinh cố gắng vươn lên trong học tập, đạt thành tích tốt, lớn lên làm công dân có ích, xây dựng quê hương, đất nước ngày càng giàu đẹp.\r\n\r\nTheo thống kê, mỗi năm Việt Nam có hơn 200 nghìn trẻ em phải bỏ học, trong đó nguyên nhân chủ yếu là gia đình khó khăn và các em phải đi bộ quá xa để đến trường. Nhiều gia đình nghèo khó không đủ tiền để mua sách vở cho các em đi học. Nhiều em ở các vùng xa thường phải đi học từ 4h sáng, và đi bộ chặng đường từ 5 -10 km hoặc xa hơn để kịp đến giờ vào lớp. Những khó khăn này tác động đáng kể đến cuộc sống, kết quả học tập và tương lai của các em. \r\n\r\nVới những phần quà thiết thực này tại An Giang cũng như tại 63 tỉnh thành trên toàn quốc, Bảo Việt Nhân thọ và Quỹ BTTEVN hy vọng góp phần giảm bớt khó khăn, tạo động lực để các em phấn đấu hơn nữa trong học tập, mang đến cho các em giấc mơ về một tương lai tươi sáng hơn. Tại Lễ Trao học bổng, Ông Nguyễn Thành Quang - Phó Tổng Giám Đốc Tổng Công ty Bảo Việt Nhân thọ đã nhấn mạnh: \"Bảo Việt Nhân thọ luôn quan tâm đến công tác đầu tư cho giáo dục và trẻ em, là thế hệ tương lai góp phần xây dựng quê hương đất nước. Cùng với nhiệm vụ mang lại sự bảo vệ chắc chắn, giúp các gia đình hoạch định và đảm bảo kế hoạch tài chính vững chắc tương lai thông qua các sản phẩm bảo hiểm nhân thọ, Bảo Việt Nhân thọ luôn xác định và kiên tâm thực hiện sứ mệnh của mình là bảo vệ giá trị Việt, mang lại lợi ích thiết thực cho cộng đồng, hướng đến xây dựng một xã hội an lành, hạnh phúc và thịnh vượng, một cộng đồng khỏe thể chất, sáng tinh thần. \"\r\n\r\nVới những đóng góp tích cực trong công tác an sinh xã hội trên địa bàn, tại chương trình trao học bổng, Chủ tịch ủy ban nhân dân tỉnh An Giang đã tặng bằng khen cho Công ty BVNT An Giang, ghi nhận những nỗ lực trong việc góp phần phát triển kinh tế, xã hội tỉnh An Giang.\r\n\r\nĐây cũng là một hoạt động ý nghĩa trong chương trình Bảo vệ Tương lại Việt của Bảo Việt Nhân thọ nhằm thực hiện sứ mệnh Bảo vệ lợi ích Việt – Bảo vệ giá trị Việt, mang lại những lợi ích thiết thực, góp phần xây dựng một cộng đồng văn minh, khỏe thể chất, sáng tinh thần. Với những cố gắng không ngừng trong việc nâng cao chất lượng sản phẩm dịch vụ, cũng như sự đóng góp không nhỏ vào các chương trình, dự án an sinh xã hội trong năm 2017, Bảo Việt Nhân thọ vinh dự nhận Giải thưởng Quốc tế “Công ty Bảo hiểm nhân thọ vì sức khỏe cộng đồng năm 2017” và “Công ty bảo hiểm nhân thọ tốt nhất Việt Nam năm 2017” – Giải thưởng do Tạp chí Tài chính và Ngân hàng toàn cầu của Anh quốc bình chọn.', './Phó Chủ tịch Nước trao học bổng _An sinh Giáo dục - Xe đạp đến trường_ cho trẻ em hiếu học tại An Giang_files/bao-viet-nhan-tho-trao-xe-dap-hoc-bong-an-giang-20171214-15123129.jpg', '2018-05-07 16:32:07', '2018-05-07 16:32:09'), (2, 'Alfred Schmidt', '11213', '&gt;&gt; Kết th&uacute;c Qu&yacute; I/2018, Quỹ đầu tư tr&aacute;i phiếu Bảo Việt (BVBF) ghi nhận mức tăng trưởng 10,44%, cao nhất trong c&aacute;c quỹ mở tr&aacute;i phiếu tại Việt Nam v&agrave; cao gần gấp đ&ocirc;i mức tăng trưởng của quỹ đứng thứ hai thị trường;', '<p>\r\n	C&ocirc;ng ty Quản l&yacute; Quỹ Bảo Việt (BVF) c&ocirc;ng bố kết quả kinh doanh Qu&yacute; I/2018. Theo đ&oacute;, tổng t&agrave;i sản quản l&yacute; tiếp tục đ&agrave; tăng trưởng tốt, đạt 47.842 tỷ đồng, tăng 7,5% so với cuối năm 2017; doanh thu tăng trưởng 20,7% so với c&ugrave;ng kỳ năm trước.</p>\r\n<p>\r\n	C&aacute;c quỹ mở do BVF quản l&yacute; cũng đạt kết quả tốt so với thị trường. Cụ thể, Quỹ đầu tư tr&aacute;i phiếu Bảo Việt (BVBF) ghi nhận mức tăng trưởng NAV/CCQ l&agrave; 10,44% trong Qu&yacute; I/2018, gi&uacute;p quỹ vươn l&ecirc;n đứng đầu về mức tăng trưởng trong c&aacute;c quỹ mở tr&aacute;i phiếu tại Việt Nam.</p>\r\n<p>\r\n	Gi&aacute; một chứng chỉ quỹ của Quỹ đầu tư cổ phiếu năng động Bảo Việt (BVFED) tại thời điểm 31/3/2018 l&agrave; 19.268 đồng, tăng 17,4% so với cuối năm 2017 v&agrave; nằm trong top 5 quỹ mở cổ phiếu c&oacute; mức tăng trưởng cao nhất thị trường. Quỹ đầu tư cổ phiếu triển vọng Bảo Việt (BVPF) cũng ghi nhận mức tăng trưởng kh&aacute; l&agrave; 8,41%.</p>\r\n<p>\r\n	Trong năm 2018, BVF sẽ tập trung đầu tư mạnh mẽ v&agrave;o nền tảng c&ocirc;ng nghệ th&ocirc;ng tin để n&acirc;ng cao chất lượng dịch vụ, cung cấp th&ecirc;m nhiều dịch vụ gia tăng cho kh&aacute;ch h&agrave;ng. Cụ thể, website mới với giao diện th&acirc;n thiện với người d&ugrave;ng vừa được ra mắt v&agrave;o th&aacute;ng 1/2018. C&ugrave;ng với đ&oacute;, BVF cũng n&acirc;ng cấp phần mềm đặt lệnh trực tuyến, ph&aacute;t triển ứng dụng ri&ecirc;ng d&agrave;nh cho điện thoại sẽ được triển khai sớm nhằm gi&uacute;p nh&agrave; đầu tư dễ d&agrave;ng hơn trong việc theo d&otilde;i danh mục đầu tư v&agrave; giao dịch tiện lợi hơn.</p>', 'Ngày 13/12/2017 tại An Giang, Phó Chủ tịch nước CHXHCNVN Đặng Thị Ngọc Thịnh đã đến tham dự và trao tặng 100 chiếc xe đạp, 100 chiếc ba lô và 100 suất học bổng tiền mặt cho trẻ em hiếu học có hoàn cảnh khó khăn trong chương trình học bổng “An sinh giáo dụ', '2018-05-07 16:32:07', '2018-05-07 16:32:09'), (3, 'Quỹ BVBF tăng trưởng 10,44% trong Quý I/2018, cao nhất trong các quỹ mở trái phiếu', '11213', '&gt;&gt; Kết th&uacute;c Qu&yacute; I/2018, Quỹ đầu tư tr&aacute;i phiếu Bảo Việt (BVBF) ghi nhận mức tăng trưởng 10,44%, cao nhất trong c&aacute;c quỹ mở tr&aacute;i phiếu tại Việt Nam v&agrave; cao gần gấp đ&ocirc;i mức tăng trưởng của quỹ đứng thứ hai thị trường;', '<p>\r\n	C&ocirc;ng ty Quản l&yacute; Quỹ Bảo Việt (BVF) c&ocirc;ng bố kết quả kinh doanh Qu&yacute; I/2018. Theo đ&oacute;, tổng t&agrave;i sản quản l&yacute; tiếp tục đ&agrave; tăng trưởng tốt, đạt 47.842 tỷ đồng, tăng 7,5% so với cuối năm 2017; doanh thu tăng trưởng 20,7% so với c&ugrave;ng kỳ năm trước.</p>\r\n<p>\r\n	C&aacute;c quỹ mở do BVF quản l&yacute; cũng đạt kết quả tốt so với thị trường. Cụ thể, Quỹ đầu tư tr&aacute;i phiếu Bảo Việt (BVBF) ghi nhận mức tăng trưởng NAV/CCQ l&agrave; 10,44% trong Qu&yacute; I/2018, gi&uacute;p quỹ vươn l&ecirc;n đứng đầu về mức tăng trưởng trong c&aacute;c quỹ mở tr&aacute;i phiếu tại Việt Nam.</p>\r\n<p>\r\n	Gi&aacute; một chứng chỉ quỹ của Quỹ đầu tư cổ phiếu năng động Bảo Việt (BVFED) tại thời điểm 31/3/2018 l&agrave; 19.268 đồng, tăng 17,4% so với cuối năm 2017 v&agrave; nằm trong top 5 quỹ mở cổ phiếu c&oacute; mức tăng trưởng cao nhất thị trường. Quỹ đầu tư cổ phiếu triển vọng Bảo Việt (BVPF) cũng ghi nhận mức tăng trưởng kh&aacute; l&agrave; 8,41%.</p>\r\n<p>\r\n	Trong năm 2018, BVF sẽ tập trung đầu tư mạnh mẽ v&agrave;o nền tảng c&ocirc;ng nghệ th&ocirc;ng tin để n&acirc;ng cao chất lượng dịch vụ, cung cấp th&ecirc;m nhiều dịch vụ gia tăng cho kh&aacute;ch h&agrave;ng. Cụ thể, website mới với giao diện th&acirc;n thiện với người d&ugrave;ng vừa được ra mắt v&agrave;o th&aacute;ng 1/2018. C&ugrave;ng với đ&oacute;, BVF cũng n&acirc;ng cấp phần mềm đặt lệnh trực tuyến, ph&aacute;t triển ứng dụng ri&ecirc;ng d&agrave;nh cho điện thoại sẽ được triển khai sớm nhằm gi&uacute;p nh&agrave; đầu tư dễ d&agrave;ng hơn trong việc theo d&otilde;i danh mục đầu tư v&agrave; giao dịch tiện lợi hơn.</p>', './BAOVIET TIẾT KIỆM AN GIA - GỬI TIẾT KIỆM TẶNG PHÍ BẢO HIỂM _ Ngân hàng Bảo Việt_files/atm_800_x_600.png', '2018-05-07 16:32:07', '2018-05-07 16:32:09'), (4, 'Quỹ BVBF tăng trưởng 10,44% trong Quý I/2018, cao nhất trong các quỹ mở trái phiếu', '11213', '&gt;&gt; Kết th&uacute;c Qu&yacute; I/2018, Quỹ đầu tư tr&aacute;i phiếu Bảo Việt (BVBF) ghi nhận mức tăng trưởng 10,44%, cao nhất trong c&aacute;c quỹ mở tr&aacute;i phiếu tại Việt Nam v&agrave; cao gần gấp đ&ocirc;i mức tăng trưởng của quỹ đứng thứ hai thị trường;', '<p>\r\n	C&ocirc;ng ty Quản l&yacute; Quỹ Bảo Việt (BVF) c&ocirc;ng bố kết quả kinh doanh Qu&yacute; I/2018. Theo đ&oacute;, tổng t&agrave;i sản quản l&yacute; tiếp tục đ&agrave; tăng trưởng tốt, đạt 47.842 tỷ đồng, tăng 7,5% so với cuối năm 2017; doanh thu tăng trưởng 20,7% so với c&ugrave;ng kỳ năm trước.</p>\r\n<p>\r\n	C&aacute;c quỹ mở do BVF quản l&yacute; cũng đạt kết quả tốt so với thị trường. Cụ thể, Quỹ đầu tư tr&aacute;i phiếu Bảo Việt (BVBF) ghi nhận mức tăng trưởng NAV/CCQ l&agrave; 10,44% trong Qu&yacute; I/2018, gi&uacute;p quỹ vươn l&ecirc;n đứng đầu về mức tăng trưởng trong c&aacute;c quỹ mở tr&aacute;i phiếu tại Việt Nam.</p>\r\n<p>\r\n	Gi&aacute; một chứng chỉ quỹ của Quỹ đầu tư cổ phiếu năng động Bảo Việt (BVFED) tại thời điểm 31/3/2018 l&agrave; 19.268 đồng, tăng 17,4% so với cuối năm 2017 v&agrave; nằm trong top 5 quỹ mở cổ phiếu c&oacute; mức tăng trưởng cao nhất thị trường. Quỹ đầu tư cổ phiếu triển vọng Bảo Việt (BVPF) cũng ghi nhận mức tăng trưởng kh&aacute; l&agrave; 8,41%.</p>\r\n<p>\r\n	Trong năm 2018, BVF sẽ tập trung đầu tư mạnh mẽ v&agrave;o nền tảng c&ocirc;ng nghệ th&ocirc;ng tin để n&acirc;ng cao chất lượng dịch vụ, cung cấp th&ecirc;m nhiều dịch vụ gia tăng cho kh&aacute;ch h&agrave;ng. Cụ thể, website mới với giao diện th&acirc;n thiện với người d&ugrave;ng vừa được ra mắt v&agrave;o th&aacute;ng 1/2018. C&ugrave;ng với đ&oacute;, BVF cũng n&acirc;ng cấp phần mềm đặt lệnh trực tuyến, ph&aacute;t triển ứng dụng ri&ecirc;ng d&agrave;nh cho điện thoại sẽ được triển khai sớm nhằm gi&uacute;p nh&agrave; đầu tư dễ d&agrave;ng hơn trong việc theo d&otilde;i danh mục đầu tư v&agrave; giao dịch tiện lợi hơn.</p>', './BAOVIET TIẾT KIỆM AN GIA - GỬI TIẾT KIỆM TẶNG PHÍ BẢO HIỂM _ Ngân hàng Bảo Việt_files/atm_800_x_600.png', '2018-05-07 16:32:07', '2018-05-07 16:32:09'), (5, 'Quỹ BVBF tăng trưởng 10,44% trong Quý I/2018, cao nhất trong các quỹ mở trái phiếu', '11213', '&gt;&gt; Kết th&uacute;c Qu&yacute; I/2018, Quỹ đầu tư tr&aacute;i phiếu Bảo Việt (BVBF) ghi nhận mức tăng trưởng 10,44%, cao nhất trong c&aacute;c quỹ mở tr&aacute;i phiếu tại Việt Nam v&agrave; cao gần gấp đ&ocirc;i mức tăng trưởng của quỹ đứng thứ hai thị trường;', '<p>\r\n	C&ocirc;ng ty Quản l&yacute; Quỹ Bảo Việt (BVF) c&ocirc;ng bố kết quả kinh doanh Qu&yacute; I/2018. Theo đ&oacute;, tổng t&agrave;i sản quản l&yacute; tiếp tục đ&agrave; tăng trưởng tốt, đạt 47.842 tỷ đồng, tăng 7,5% so với cuối năm 2017; doanh thu tăng trưởng 20,7% so với c&ugrave;ng kỳ năm trước.</p>\r\n<p>\r\n	C&aacute;c quỹ mở do BVF quản l&yacute; cũng đạt kết quả tốt so với thị trường. Cụ thể, Quỹ đầu tư tr&aacute;i phiếu Bảo Việt (BVBF) ghi nhận mức tăng trưởng NAV/CCQ l&agrave; 10,44% trong Qu&yacute; I/2018, gi&uacute;p quỹ vươn l&ecirc;n đứng đầu về mức tăng trưởng trong c&aacute;c quỹ mở tr&aacute;i phiếu tại Việt Nam.</p>\r\n<p>\r\n	Gi&aacute; một chứng chỉ quỹ của Quỹ đầu tư cổ phiếu năng động Bảo Việt (BVFED) tại thời điểm 31/3/2018 l&agrave; 19.268 đồng, tăng 17,4% so với cuối năm 2017 v&agrave; nằm trong top 5 quỹ mở cổ phiếu c&oacute; mức tăng trưởng cao nhất thị trường. Quỹ đầu tư cổ phiếu triển vọng Bảo Việt (BVPF) cũng ghi nhận mức tăng trưởng kh&aacute; l&agrave; 8,41%.</p>\r\n<p>\r\n	Trong năm 2018, BVF sẽ tập trung đầu tư mạnh mẽ v&agrave;o nền tảng c&ocirc;ng nghệ th&ocirc;ng tin để n&acirc;ng cao chất lượng dịch vụ, cung cấp th&ecirc;m nhiều dịch vụ gia tăng cho kh&aacute;ch h&agrave;ng. Cụ thể, website mới với giao diện th&acirc;n thiện với người d&ugrave;ng vừa được ra mắt v&agrave;o th&aacute;ng 1/2018. C&ugrave;ng với đ&oacute;, BVF cũng n&acirc;ng cấp phần mềm đặt lệnh trực tuyến, ph&aacute;t triển ứng dụng ri&ecirc;ng d&agrave;nh cho điện thoại sẽ được triển khai sớm nhằm gi&uacute;p nh&agrave; đầu tư dễ d&agrave;ng hơn trong việc theo d&otilde;i danh mục đầu tư v&agrave; giao dịch tiện lợi hơn.</p>', './BAOVIET TIẾT KIỆM AN GIA - GỬI TIẾT KIỆM TẶNG PHÍ BẢO HIỂM _ Ngân hàng Bảo Việt_files/atm_800_x_600.png', '2018-05-07 16:32:07', '2018-05-07 16:32:09');
COMMIT;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10, 0) NOT NULL,
  `quantity` decimal(11, 0) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
BEGIN;
INSERT INTO `products` VALUES (1, 'SP01', 'IPhone 4s', 'black - 16gb - global', 1000000, 12, 2, 'iphone4.jpg'), (3, 'SP02', 'IPhone 4s', 'white - 32gb - look', 2000000, 14, 2, 'iphone4s.jpg'), (4, 'SP03', 'IPhone 5', 'black - 32gb - global', 3000000, 18, 2, 'iphone5.jpg'), (5, 'SP04', 'IPhone 5s', 'gold - 16gb - likenew', 3800000, 9, 2, 'iphone5s.jpg'), (7, 'SP05', 'IPhone 6', 'Gold - 16gb - lock', 4500000, 14, 2, 'iphone6.jpg'), (8, 'SP06', 'Macbook Pro 2016', 'No touch-bar - i5 - 8gb - 256gb', 26000000, 5, 4, 'macbook.jpg'), (11, 'SP07', 'Ipad Pro 10inch', 'Gold - 256gb - 3g', 2000000, 9, 1, 'ipadpro.jpg'), (13, 'SP09', 'urBeats', 'black', 2000000, 11, 5, 'urbeats.jpg'), (14, 'SP10', 'Lenovo Thinkpad T470s', 'Black - i5 - 8gb - 256gb', 25000000, 6, 4, 'thinkpad.png'), (15, 'SP11', 'Xiaomi 10000', '10000mAh', 300000, 20, 6, 'xiaomi.jpg'), (16, 'SP12', 'USB OTG Kingston', 'Blue -  64bb - usb3.1', 800000, 6, 5, 'kington.jpg'), (17, 'SP13', 'IPhone X', '128gb black', 3000000, 8, 2, 'iphonex.jpg');
COMMIT;

-- ----------------------------
-- Table structure for titles
-- ----------------------------
DROP TABLE IF EXISTS `titles`;
CREATE TABLE `titles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- ----------------------------
-- Records of titles
-- ----------------------------
BEGIN;
INSERT INTO `titles` VALUES (1, 'Quỹ BVBF tăng trưởng 10,44% trong Quý I/2018, cao nhất trong các quỹ mở trái phiếu', '2018-05-07 08:18:23', '2018-05-07 08:18:23'), (2, 'Bảo hiểm Bảo Việt - Đơn vị phi nhân thọ duy nhất được bình chọn vào Top 3 nơi làm việc tốt nhất ngành bảo hiểm 2017', '2018-05-07 08:18:23', '2018-05-07 08:18:23'), (3, 'Tập đoàn Bảo Việt (BVH): Ra mắt ứng dụng Quan hệ nhà đầu tư trên Mobile App', '2018-05-07 08:18:23', '2018-05-07 08:18:23'), (4, 'Tập đoàn Bảo Việt tăng trưởng 37,6% lợi nhuận sau thuế hợp nhất năm 2017', '2018-05-07 08:18:23', '2018-05-07 08:18:23'), (5, 'Bảo hiểm Bảo Việt ký kết hợp tác cùng Ngân hàng NCB', '2018-05-07 08:18:23', '2018-05-07 08:18:23'), (6, 'Bảo hiểm Bảo Việt ký kết hợp tác chiến lược cùng Momo kiến tạo xu hướng công nghệ bảo hiểm Insurtech', '2018-05-07 08:18:23', '2018-05-07 08:18:23'), (7, 'Tổng Công ty Bảo hiểm Bảo Việt đồng hành cùng Đội tuyển bóng đá Việt Nam U23', '2018-05-07 08:18:23', '2018-05-07 08:18:23'), (8, 'Bảo Việt - niềm tự hào thương hiệu Việt tại Cuộc bình chọn Báo cáo phát triển bền vững tốt nhất Châu Á 2017', '2018-05-07 08:18:23', '2018-05-07 08:18:23'), (9, 'BAOVIET Tiết kiệm An gia - gửi tiết kiệm tặng phí bảo hiểm', '2018-05-07 08:18:23', '2018-05-07 08:18:23'), (10, 'Bảo hiểm Bảo Việt và ví Momo triển khai bán sản phẩm bảo hiểm xe máy trên ứng dụng Momo', '2018-05-07 08:18:23', '2018-05-07 08:18:23'), (11, 'Tổng Công ty Bảo hiểm Bảo Việt triển khai chương trình khuyến mại “Lan tỏa an toàn - Ngập tràn niềm vui”', '2018-05-07 08:18:23', '2018-05-07 08:18:23'), (12, 'BAOVIET Bank khai trương chi nhánh và PGD mới tại Thái Nguyên, Cần Thơ', '2018-05-07 08:18:23', '2018-05-07 08:18:23'), (13, 'Bảo hiểm Phi nhân thọ - Lựa chọn đúng mới phát huy tác dụng', '2018-05-07 08:18:23', '2018-05-07 08:18:23'), (14, 'Bảo hiểm Bảo Việt và Ngân hàng OCB hợp tác vì lợi ích cao nhất dành cho khách hàng', '2018-05-07 08:18:23', '2018-05-07 08:18:23'), (15, 'Cơ hội trúng Iphone 8 Plus khi mua vé máy bay Online', '2018-05-07 08:18:23', '2018-05-07 08:18:23'), (16, 'Gửi tiền nhận vàng - hàng ngàn quà tặng cùng BAOVIET Bank', '2018-05-07 08:18:23', '2018-05-07 08:18:23'), (17, 'Bảo Việt Nhân thọ khám bệnh miễn phí và tặng quà cho 3.000 người nghèo,  gia đình chính sách và có công với Cách mạng tại 6 tỉnh thành', '2018-05-07 08:18:23', '2018-05-07 08:18:23'), (18, 'Tập đoàn Bảo Việt ủng hộ gần 1,5 tỷ đồng cùng đồng bào Tây Bắc vượt lũ', '2018-05-07 08:18:23', '2018-05-07 08:18:23'), (19, 'Bảo Việt tri ân các anh hùng liệt sỹ tại Quảng Trị', '2018-05-07 08:18:23', '2018-05-07 08:18:23'), (20, 'Bảo Việt hỗ trợ gần 27 tỷ đồng cải thiện hạ tầng xã nghèo tại Quế Phong, Nghệ An', '2018-05-07 08:18:23', '2018-05-07 08:18:23'), (21, 'Tổng Công ty Bảo hiểm Bảo Việt tặng thưởng  lái xe Phan Văn Bắc (Lâm Đồng)', '2018-05-07 08:18:23', '2018-05-07 08:18:23'), (22, 'Khởi công công trình thanh niên “Thư viện huyện đảo Bạch Long Vĩ”', '2018-05-07 08:18:23', '2018-05-07 08:18:23'), (23, 'Đoàn thanh niên Tập đoàn Bảo Việt tặng nhà nhân ái cho hộ gia đình chính sách', '2018-05-07 08:18:23', '2018-05-07 08:18:23'), (24, 'Tập đoàn Bảo Việt đẩy mạnh đầu tư cho giáo dục, đảm bảo phát triển bền vững, đầu tư 7 tỷ đồng xây dựng trường mầm non tại Phú Đình, Thái Nguyên', '2018-05-07 08:18:23', '2018-05-07 08:18:23'), (25, 'Bảo hiểm Bảo Việt đạt giải “Thương hiệu Bảo hiểm tốt nhất Việt Nam 2017”', '2018-05-07 08:18:23', '2018-05-07 08:18:23'), (26, 'Tập đoàn Bảo Việt được vinh danh “Top 10 nhãn hiệu uy tín và nổi tiếng nhất Việt Nam”', '2018-05-07 08:18:23', '2018-05-07 08:18:23'), (27, 'Chứng khoán Bảo Việt được Global Banking & Finance Review vinh danh “Best brokerage house Vietnam 2016” và “Best Equity House Vietnam 2016”', '2018-05-07 08:18:23', '2018-05-07 08:18:23'), (28, 'Lãnh đạo Tập đoàn Bảo Việt được vinh dự trao tặng chứng chỉ “Nhà quản lý chuyên nghiệp khi Việt Nam gia nhập TPP và cộng đồng kinh tế ASEAN\"', '2018-05-07 08:18:23', '2018-05-07 08:18:23'), (29, 'Đoàn TNCS Hồ Chí Minh Tập đoàn Bảo Việt sơ kết giữa nhiệm kỳ 2012 - 2017: Phát huy vai trò xung kích của Đoàn Thanh niên, góp phần hoàn thành nhiệm vụ kinh doanh', '2018-05-07 08:18:23', '2018-05-07 08:18:23'), (30, 'Năm thứ 3 liên tiếp, Tập đoàn Bảo Việt được Tạp chí Forbes Việt Nam bình chọn trong danh sách 50 doanh nghiệp niêm yết tốt nhất Việt Nam', '2018-05-07 08:18:24', '2018-05-07 08:18:24'), (31, 'Tập đoàn Bảo Việt đoạt giải thưởng của hai cuộc bình chọn Báo cáo thường niên', '2018-05-07 08:18:24', '2018-05-07 08:18:24'), (32, 'Tập đoàn Bảo Việt nhận danh hiệu TOP 10 Thương hiệu mạnh Việt Nam năm 2010 ', '2018-05-07 08:18:24', '2018-05-07 08:18:24');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'MD5',
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời gian tạo mới bản ghi',
  `status` tinyint(255) NULL DEFAULT 0 COMMENT '0: Deactive ; 1: Active',
  `update_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE,
  UNIQUE INDEX `email_2`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (2, 'Nguyễn Quang Hải', 'hainq@zent.edu', '0276723657', '81dc9bdb52d04dc20036dbd8313ed055', '2018-01-26 14:05:49', 0, '2018-02-02 13:30:32'), (3, 'Bùi Tiến Dũng', 'dungbt@zent.edu', '0287382780', '81dc9bdb52d04dc20036dbd8313ed055', '2018-01-26 14:08:01', 0, '2018-01-27 10:17:46'), (4, 'Nguyễn Duy Mạnh', 'manhnd@zent.edu', '04335454599', '81dc9bdb52d04dc20036dbd8313ed055', '2018-01-26 14:06:29', 0, '2018-01-27 10:53:22'), (5, 'Nguyễn Văn Toàn', 'toannv@zent.edu', '03438483834', '81dc9bdb52d04dc20036dbd8313ed055', '2018-01-26 14:06:34', 0, '2018-01-27 10:53:16'), (8, 'Trần Danh Trung Tùng', 'tttstillalive@gmail.com', '0345346546', '81dc9bdb52d04dc20036dbd8313ed055', '2018-01-26 14:06:17', 1, '2018-01-27 10:53:12'), (9, 'Tùng Đẹp Trai', 'ttt@gmail.com', '0345346546', 'd41d8cd98f00b204e9800998ecf8427e', '2018-01-24 15:29:49', 1, '2018-01-29 15:32:23'), (17, 'Lê Văn Lợi', 'Loilv@gmail.com', '0345346546', 'e10adc3949ba59abbe56e057f20f883e', '2018-01-27 10:57:07', 1, '2018-02-05 18:16:22'), (18, 'Lại Văn Sâm', 'samlv@gmail.com', '02345236578', '827ccb0eea8a706c4c34a16891f84e7b', '2018-01-29 10:44:36', 1, '2018-02-02 14:10:22'), (20, 'Lê Văn Tam', 'tamlv@gmail.com', '02873827800', 'e10adc3949ba59abbe56e057f20f883e', '2018-01-29 15:24:06', 1, '2018-01-29 15:40:28'), (22, 'Tàu Pẩy Pẩy', 'paypay@gmail.com', '0345346546', '827ccb0eea8a706c4c34a16891f84e7b', '2018-01-29 15:38:11', 1, '2018-01-29 15:39:01'), (23, 'Lít Xừn Nờ', 'litxn@hotmail.com', '0345346546', '827ccb0eea8a706c4c34a16891f84e7b', '2018-01-29 15:40:06', 1, '2018-01-29 15:40:37'), (24, 'Pắc Hăng Xô', 'xoph@gmail.com', '02873827899', '827ccb0eea8a706c4c34a16891f84e7b', '2018-01-29 15:47:29', 1, '2018-01-29 16:59:39'), (27, 'Son GoKu', 'goku@gmail.com', '0345346546', '123456', '2018-01-31 15:33:53', 1, '2018-02-02 00:52:38'), (30, 'Lò Văn Tèn', 'lovt@gmail.com', '0345346544', 'e10adc3949ba59abbe56e057f20f883e', '2018-02-02 00:56:01', 1, '2018-02-02 00:56:11'), (32, 'Lê Văn Tám', 'tam@gmail.com', '0345346544', 'e10adc3949ba59abbe56e057f20f883e', '2018-02-02 14:04:52', 1, '2018-02-02 14:05:08'), (33, 'Trần Danh Tùng', 'tungtd@zent.com', '0345346544', 'e10adc3949ba59abbe56e057f20f883e', '2018-03-02 15:09:11', 1, NULL), (34, 'Hoàng Phi Hồng', 'honghp@zent.com', '03453465467', 'e10adc3949ba59abbe56e057f20f883e', '2018-03-10 12:07:05', 1, NULL), (35, 'Trần Văn Q', 'qtv@gmail.com', '02873827899', 'e10adc3949ba59abbe56e057f20f883e', '2018-03-10 16:12:28', 1, '2018-03-10 16:19:57'), (36, 'Hải Nam', 'namhai@gmail.com', '03453465467', 'e10adc3949ba59abbe56e057f20f883e', '2018-03-10 18:09:58', 1, NULL), (37, 'Vũ Văn Thuong', 'thuongvv@gmail.com', '0345346544', 'e10adc3949ba59abbe56e057f20f883e', '2018-03-10 18:33:01', 1, '2018-03-10 18:33:17'), (38, 'Vũ Minh Thắng', '1@gmail.com', '1231321131', '4297f44b13955235245b2497399d7a93', '2018-05-06 16:17:44', 1, NULL), (39, NULL, NULL, NULL, NULL, '2018-05-06 16:17:47', 0, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;