-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2018 at 09:33 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baoviet`
--

-- --------------------------------------------------------
--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--
--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--
-- Table structure for table `categories`
--

CREATE TABLE `titles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `posts`(`id`, `title`, `slug`, `description`, `content`, `image`, `created_at`, `updated_at`) VALUES (1, 'Phó Chủ tịch Nước trao học bổng An sinh Giáo dục - Xe đạp đến trường cho trẻ em hiếu học tại An Giang', '11213', 'Ngày 13/12/2017 tại An Giang, Phó Chủ tịch nước CHXHCNVN Đặng Thị Ngọc Thịnh đã đến tham dự và trao tặng 100 chiếc xe đạp, 100 chiếc ba lô và 100 suất học bổng tiền mặt cho trẻ em hiếu học có hoàn cảnh khó khăn trong chương trình học bổng “An sinh giáo dục - Xe đạp đến trường” do Quỹ Bảo trợ Trẻ Em Việt Nam, Tổng công ty Bảo Việt Nhân thọ phối hợp với phối hợp với Tỉnh An Giang tổ chức. Chương trình tại An Giang tiếp nối chặng hành trình trao tặng 1.700 xe đạp và 1.700 chiếc Ba lô với tổng giá trị 3,6 tỷ đồng trong chương trình “Học bổng An Sinh Giáo dục – Xe đạp đến trường – 2017” của QBTTEVN và Bảo Việt Nhân thọ trên toàn quốc.', 'Tham gia chương trình trao học bổng có Ông Chu Văn Yêm – Phó Chủ nhiệm Văn phòng Chủ tịch nước; Ông Vương Bình Thạnh – Thường vụ tỉnh ủy, Phó Bí thư Chủ tịch UBND Tỉnh An Giang; Ông Nguyễn Thanh Bình – Thường vụ tỉnh ủy, Phó Chủ tịch UBND Tỉnh An Giang; Ông Đỗ Tấn Kiết – Phó Chủ tịch Hội đồng nhân dân Tỉnh An Giang; Ông Tư Thanh Khiết – Phó Chủ tịch Mặt trận Tổ quốc Tỉnh An Giang; Bà Đặng Thị Hoa Rây – Giám đốc Sở LĐTBXH Tỉnh An Giang; Bà Nguyễn Thị Hiền – Phó GĐ Quỹ BTTEVN; Ông Nguyễn Thành Quang – Phó Tổng Giám đốc TCT Bảo Việt Nhân thọ, bà Nguyễn Thị Ánh Tuyết – Giám đốc Công ty BVNT An Giang cùng 450 đại biểu và 200 em học sinh có hoàn cảnh khó khăn đạt thành tích tốt trong học tập tại An Giang.\r\n\r\n\r\n\r\nChương trình Học bổng “An Sinh Giáo Dục – Xe đạp đến trường” được Bảo Việt Nhân Thọ phối hợp cùng Quỹ BTTEVN xây dựng và triển khai trong suốt 13 năm qua, nhằm khuyến khích và hỗ trợ trẻ em nghèo hiếu học trên toàn quốc. Sau 13 năm hợp tác, thông qua Quỹ Bảo trợ trẻ em Việt Nam, Bảo Việt Nhân Thọ đã trao hơn 10.000 suất học bổng An sinh giáo dục và 12.000 suất quà với tổng kinh phí hơn 18 tỷ đổng cho trẻ em có hoàn cảnh đặc biệt, khó khăn trên 63 tỉnh/thành. Năm 2017, Bảo Việt Nhân Thọ sẽ trao tặng tổng cộng 1.700 xe đạp cùng với 1.700 chiếc Ba lô (với tổng kinh phí 3,6 tỷ đồng). Riêng tại An Giang, Phó Chủ tịch nước đã trực tiếp trao tặng 100 chiếc xe đạp cùng với 100 chiếc ba lô và 100 suất học bổng tiền mặt đến 200 em học sinh tiêu biểu của tỉnh, đồng thời động viên tinh thần ham học hỏi của các em, khuyến khích các em tiếp tục nỗ lực phấn đấu vươn lên, đạt thành tích tốt trong học tập. \r\n\r\nPhó Chủ tịch nước Đặng Thị Ngọc Thịnh đã gửi lời cảm ơn đến các nhà tài trợ, ghi nhận sự chung tay của các tổ chức, đơn vị trong đó có Bảo Việt Nhân thọ trong công tác bảo vệ, chăm sóc và hỗ trợ các trẻ em có hoàn cảnh đặc biệt về cả vật chất và tinh thần. \r\n\r\nBà cũng có lời động viên đến các em học sinh cố gắng vươn lên trong học tập, đạt thành tích tốt, lớn lên làm công dân có ích, xây dựng quê hương, đất nước ngày càng giàu đẹp.\r\n\r\nTheo thống kê, mỗi năm Việt Nam có hơn 200 nghìn trẻ em phải bỏ học, trong đó nguyên nhân chủ yếu là gia đình khó khăn và các em phải đi bộ quá xa để đến trường. Nhiều gia đình nghèo khó không đủ tiền để mua sách vở cho các em đi học. Nhiều em ở các vùng xa thường phải đi học từ 4h sáng, và đi bộ chặng đường từ 5 -10 km hoặc xa hơn để kịp đến giờ vào lớp. Những khó khăn này tác động đáng kể đến cuộc sống, kết quả học tập và tương lai của các em. \r\n\r\nVới những phần quà thiết thực này tại An Giang cũng như tại 63 tỉnh thành trên toàn quốc, Bảo Việt Nhân thọ và Quỹ BTTEVN hy vọng góp phần giảm bớt khó khăn, tạo động lực để các em phấn đấu hơn nữa trong học tập, mang đến cho các em giấc mơ về một tương lai tươi sáng hơn. Tại Lễ Trao học bổng, Ông Nguyễn Thành Quang - Phó Tổng Giám Đốc Tổng Công ty Bảo Việt Nhân thọ đã nhấn mạnh: \"Bảo Việt Nhân thọ luôn quan tâm đến công tác đầu tư cho giáo dục và trẻ em, là thế hệ tương lai góp phần xây dựng quê hương đất nước. Cùng với nhiệm vụ mang lại sự bảo vệ chắc chắn, giúp các gia đình hoạch định và đảm bảo kế hoạch tài chính vững chắc tương lai thông qua các sản phẩm bảo hiểm nhân thọ, Bảo Việt Nhân thọ luôn xác định và kiên tâm thực hiện sứ mệnh của mình là bảo vệ giá trị Việt, mang lại lợi ích thiết thực cho cộng đồng, hướng đến xây dựng một xã hội an lành, hạnh phúc và thịnh vượng, một cộng đồng khỏe thể chất, sáng tinh thần. \"\r\n\r\nVới những đóng góp tích cực trong công tác an sinh xã hội trên địa bàn, tại chương trình trao học bổng, Chủ tịch ủy ban nhân dân tỉnh An Giang đã tặng bằng khen cho Công ty BVNT An Giang, ghi nhận những nỗ lực trong việc góp phần phát triển kinh tế, xã hội tỉnh An Giang.\r\n\r\nĐây cũng là một hoạt động ý nghĩa trong chương trình Bảo vệ Tương lại Việt của Bảo Việt Nhân thọ nhằm thực hiện sứ mệnh Bảo vệ lợi ích Việt – Bảo vệ giá trị Việt, mang lại những lợi ích thiết thực, góp phần xây dựng một cộng đồng văn minh, khỏe thể chất, sáng tinh thần. Với những cố gắng không ngừng trong việc nâng cao chất lượng sản phẩm dịch vụ, cũng như sự đóng góp không nhỏ vào các chương trình, dự án an sinh xã hội trong năm 2017, Bảo Việt Nhân thọ vinh dự nhận Giải thưởng Quốc tế “Công ty Bảo hiểm nhân thọ vì sức khỏe cộng đồng năm 2017” và “Công ty bảo hiểm nhân thọ tốt nhất Việt Nam năm 2017” – Giải thưởng do Tạp chí Tài chính và Ngân hàng toàn cầu của Anh quốc bình chọn.', 'https://i.pinimg.com/originals/87/1c/a6/871ca603f2f67a317b485afc8afb6a8c.jpg', '2018-05-07 16:32:07', '2018-05-07 16:32:09');
INSERT INTO `posts`(`id`, `title`, `slug`, `description`, `content`, `image`, `created_at`, `updated_at`) VALUES (2, 'Alfred Schmidt', '11213', '&gt;&gt; Kết th&uacute;c Qu&yacute; I/2018, Quỹ đầu tư tr&aacute;i phiếu Bảo Việt (BVBF) ghi nhận mức tăng trưởng 10,44%, cao nhất trong c&aacute;c quỹ mở tr&aacute;i phiếu tại Việt Nam v&agrave; cao gần gấp đ&ocirc;i mức tăng trưởng của quỹ đứng thứ hai thị trường;', '<p>\r\n	C&ocirc;ng ty Quản l&yacute; Quỹ Bảo Việt (BVF) c&ocirc;ng bố kết quả kinh doanh Qu&yacute; I/2018. Theo đ&oacute;, tổng t&agrave;i sản quản l&yacute; tiếp tục đ&agrave; tăng trưởng tốt, đạt 47.842 tỷ đồng, tăng 7,5% so với cuối năm 2017; doanh thu tăng trưởng 20,7% so với c&ugrave;ng kỳ năm trước.</p>\r\n<p>\r\n	C&aacute;c quỹ mở do BVF quản l&yacute; cũng đạt kết quả tốt so với thị trường. Cụ thể, Quỹ đầu tư tr&aacute;i phiếu Bảo Việt (BVBF) ghi nhận mức tăng trưởng NAV/CCQ l&agrave; 10,44% trong Qu&yacute; I/2018, gi&uacute;p quỹ vươn l&ecirc;n đứng đầu về mức tăng trưởng trong c&aacute;c quỹ mở tr&aacute;i phiếu tại Việt Nam.</p>\r\n<p>\r\n	Gi&aacute; một chứng chỉ quỹ của Quỹ đầu tư cổ phiếu năng động Bảo Việt (BVFED) tại thời điểm 31/3/2018 l&agrave; 19.268 đồng, tăng 17,4% so với cuối năm 2017 v&agrave; nằm trong top 5 quỹ mở cổ phiếu c&oacute; mức tăng trưởng cao nhất thị trường. Quỹ đầu tư cổ phiếu triển vọng Bảo Việt (BVPF) cũng ghi nhận mức tăng trưởng kh&aacute; l&agrave; 8,41%.</p>\r\n<p>\r\n	Trong năm 2018, BVF sẽ tập trung đầu tư mạnh mẽ v&agrave;o nền tảng c&ocirc;ng nghệ th&ocirc;ng tin để n&acirc;ng cao chất lượng dịch vụ, cung cấp th&ecirc;m nhiều dịch vụ gia tăng cho kh&aacute;ch h&agrave;ng. Cụ thể, website mới với giao diện th&acirc;n thiện với người d&ugrave;ng vừa được ra mắt v&agrave;o th&aacute;ng 1/2018. C&ugrave;ng với đ&oacute;, BVF cũng n&acirc;ng cấp phần mềm đặt lệnh trực tuyến, ph&aacute;t triển ứng dụng ri&ecirc;ng d&agrave;nh cho điện thoại sẽ được triển khai sớm nhằm gi&uacute;p nh&agrave; đầu tư dễ d&agrave;ng hơn trong việc theo d&otilde;i danh mục đầu tư v&agrave; giao dịch tiện lợi hơn.</p>', './Phó Chủ tịch Nước trao học bổng _An sinh Giáo dục - Xe đạp đến trường_ cho trẻ em hiếu học tại An Giang_files/bao-viet-nhan-tho-trao-xe-dap-hoc-bong-an-giang-20171214-15123129.jpg', '2018-05-07 16:32:07', '2018-05-07 16:32:09');
INSERT INTO `posts`(`id`, `title`, `slug`, `description`, `content`, `image`, `created_at`, `updated_at`) VALUES (3, 'Quỹ BVBF tăng trưởng 10,44% trong Quý I/2018, cao nhất trong các quỹ mở trái phiếu', '11213', '&gt;&gt; Kết th&uacute;c Qu&yacute; I/2018, Quỹ đầu tư tr&aacute;i phiếu Bảo Việt (BVBF) ghi nhận mức tăng trưởng 10,44%, cao nhất trong c&aacute;c quỹ mở tr&aacute;i phiếu tại Việt Nam v&agrave; cao gần gấp đ&ocirc;i mức tăng trưởng của quỹ đứng thứ hai thị trường;', '<p>\r\n	C&ocirc;ng ty Quản l&yacute; Quỹ Bảo Việt (BVF) c&ocirc;ng bố kết quả kinh doanh Qu&yacute; I/2018. Theo đ&oacute;, tổng t&agrave;i sản quản l&yacute; tiếp tục đ&agrave; tăng trưởng tốt, đạt 47.842 tỷ đồng, tăng 7,5% so với cuối năm 2017; doanh thu tăng trưởng 20,7% so với c&ugrave;ng kỳ năm trước.</p>\r\n<p>\r\n	C&aacute;c quỹ mở do BVF quản l&yacute; cũng đạt kết quả tốt so với thị trường. Cụ thể, Quỹ đầu tư tr&aacute;i phiếu Bảo Việt (BVBF) ghi nhận mức tăng trưởng NAV/CCQ l&agrave; 10,44% trong Qu&yacute; I/2018, gi&uacute;p quỹ vươn l&ecirc;n đứng đầu về mức tăng trưởng trong c&aacute;c quỹ mở tr&aacute;i phiếu tại Việt Nam.</p>\r\n<p>\r\n	Gi&aacute; một chứng chỉ quỹ của Quỹ đầu tư cổ phiếu năng động Bảo Việt (BVFED) tại thời điểm 31/3/2018 l&agrave; 19.268 đồng, tăng 17,4% so với cuối năm 2017 v&agrave; nằm trong top 5 quỹ mở cổ phiếu c&oacute; mức tăng trưởng cao nhất thị trường. Quỹ đầu tư cổ phiếu triển vọng Bảo Việt (BVPF) cũng ghi nhận mức tăng trưởng kh&aacute; l&agrave; 8,41%.</p>\r\n<p>\r\n	Trong năm 2018, BVF sẽ tập trung đầu tư mạnh mẽ v&agrave;o nền tảng c&ocirc;ng nghệ th&ocirc;ng tin để n&acirc;ng cao chất lượng dịch vụ, cung cấp th&ecirc;m nhiều dịch vụ gia tăng cho kh&aacute;ch h&agrave;ng. Cụ thể, website mới với giao diện th&acirc;n thiện với người d&ugrave;ng vừa được ra mắt v&agrave;o th&aacute;ng 1/2018. C&ugrave;ng với đ&oacute;, BVF cũng n&acirc;ng cấp phần mềm đặt lệnh trực tuyến, ph&aacute;t triển ứng dụng ri&ecirc;ng d&agrave;nh cho điện thoại sẽ được triển khai sớm nhằm gi&uacute;p nh&agrave; đầu tư dễ d&agrave;ng hơn trong việc theo d&otilde;i danh mục đầu tư v&agrave; giao dịch tiện lợi hơn.</p>', './Phó Chủ tịch Nước trao học bổng _An sinh Giáo dục - Xe đạp đến trường_ cho trẻ em hiếu học tại An Giang_files/bao-viet-nhan-tho-trao-xe-dap-hoc-bong-an-giang-20171214-15123129.jpg', '2018-05-07 16:32:07', '2018-05-07 16:32:09');
INSERT INTO `posts`(`id`, `title`, `slug`, `description`, `content`, `image`, `created_at`, `updated_at`) VALUES (4, 'Quỹ BVBF tăng trưởng 10,44% trong Quý I/2018, cao nhất trong các quỹ mở trái phiếu', '11213', '&gt;&gt; Kết th&uacute;c Qu&yacute; I/2018, Quỹ đầu tư tr&aacute;i phiếu Bảo Việt (BVBF) ghi nhận mức tăng trưởng 10,44%, cao nhất trong c&aacute;c quỹ mở tr&aacute;i phiếu tại Việt Nam v&agrave; cao gần gấp đ&ocirc;i mức tăng trưởng của quỹ đứng thứ hai thị trường;', '<p>\r\n	C&ocirc;ng ty Quản l&yacute; Quỹ Bảo Việt (BVF) c&ocirc;ng bố kết quả kinh doanh Qu&yacute; I/2018. Theo đ&oacute;, tổng t&agrave;i sản quản l&yacute; tiếp tục đ&agrave; tăng trưởng tốt, đạt 47.842 tỷ đồng, tăng 7,5% so với cuối năm 2017; doanh thu tăng trưởng 20,7% so với c&ugrave;ng kỳ năm trước.</p>\r\n<p>\r\n	C&aacute;c quỹ mở do BVF quản l&yacute; cũng đạt kết quả tốt so với thị trường. Cụ thể, Quỹ đầu tư tr&aacute;i phiếu Bảo Việt (BVBF) ghi nhận mức tăng trưởng NAV/CCQ l&agrave; 10,44% trong Qu&yacute; I/2018, gi&uacute;p quỹ vươn l&ecirc;n đứng đầu về mức tăng trưởng trong c&aacute;c quỹ mở tr&aacute;i phiếu tại Việt Nam.</p>\r\n<p>\r\n	Gi&aacute; một chứng chỉ quỹ của Quỹ đầu tư cổ phiếu năng động Bảo Việt (BVFED) tại thời điểm 31/3/2018 l&agrave; 19.268 đồng, tăng 17,4% so với cuối năm 2017 v&agrave; nằm trong top 5 quỹ mở cổ phiếu c&oacute; mức tăng trưởng cao nhất thị trường. Quỹ đầu tư cổ phiếu triển vọng Bảo Việt (BVPF) cũng ghi nhận mức tăng trưởng kh&aacute; l&agrave; 8,41%.</p>\r\n<p>\r\n	Trong năm 2018, BVF sẽ tập trung đầu tư mạnh mẽ v&agrave;o nền tảng c&ocirc;ng nghệ th&ocirc;ng tin để n&acirc;ng cao chất lượng dịch vụ, cung cấp th&ecirc;m nhiều dịch vụ gia tăng cho kh&aacute;ch h&agrave;ng. Cụ thể, website mới với giao diện th&acirc;n thiện với người d&ugrave;ng vừa được ra mắt v&agrave;o th&aacute;ng 1/2018. C&ugrave;ng với đ&oacute;, BVF cũng n&acirc;ng cấp phần mềm đặt lệnh trực tuyến, ph&aacute;t triển ứng dụng ri&ecirc;ng d&agrave;nh cho điện thoại sẽ được triển khai sớm nhằm gi&uacute;p nh&agrave; đầu tư dễ d&agrave;ng hơn trong việc theo d&otilde;i danh mục đầu tư v&agrave; giao dịch tiện lợi hơn.</p>', './Phó Chủ tịch Nước trao học bổng _An sinh Giáo dục - Xe đạp đến trường_ cho trẻ em hiếu học tại An Giang_files/bao-viet-nhan-tho-trao-xe-dap-hoc-bong-an-giang-20171214-15123129.jpg', '2018-05-07 16:32:07', '2018-05-07 16:32:09');
INSERT INTO `posts`(`id`, `title`, `slug`, `description`, `content`, `image`, `created_at`, `updated_at`) VALUES (5, 'Quỹ BVBF tăng trưởng 10,44% trong Quý I/2018, cao nhất trong các quỹ mở trái phiếu', '11213', '&gt;&gt; Kết th&uacute;c Qu&yacute; I/2018, Quỹ đầu tư tr&aacute;i phiếu Bảo Việt (BVBF) ghi nhận mức tăng trưởng 10,44%, cao nhất trong c&aacute;c quỹ mở tr&aacute;i phiếu tại Việt Nam v&agrave; cao gần gấp đ&ocirc;i mức tăng trưởng của quỹ đứng thứ hai thị trường;', '<p>\r\n	C&ocirc;ng ty Quản l&yacute; Quỹ Bảo Việt (BVF) c&ocirc;ng bố kết quả kinh doanh Qu&yacute; I/2018. Theo đ&oacute;, tổng t&agrave;i sản quản l&yacute; tiếp tục đ&agrave; tăng trưởng tốt, đạt 47.842 tỷ đồng, tăng 7,5% so với cuối năm 2017; doanh thu tăng trưởng 20,7% so với c&ugrave;ng kỳ năm trước.</p>\r\n<p>\r\n	C&aacute;c quỹ mở do BVF quản l&yacute; cũng đạt kết quả tốt so với thị trường. Cụ thể, Quỹ đầu tư tr&aacute;i phiếu Bảo Việt (BVBF) ghi nhận mức tăng trưởng NAV/CCQ l&agrave; 10,44% trong Qu&yacute; I/2018, gi&uacute;p quỹ vươn l&ecirc;n đứng đầu về mức tăng trưởng trong c&aacute;c quỹ mở tr&aacute;i phiếu tại Việt Nam.</p>\r\n<p>\r\n	Gi&aacute; một chứng chỉ quỹ của Quỹ đầu tư cổ phiếu năng động Bảo Việt (BVFED) tại thời điểm 31/3/2018 l&agrave; 19.268 đồng, tăng 17,4% so với cuối năm 2017 v&agrave; nằm trong top 5 quỹ mở cổ phiếu c&oacute; mức tăng trưởng cao nhất thị trường. Quỹ đầu tư cổ phiếu triển vọng Bảo Việt (BVPF) cũng ghi nhận mức tăng trưởng kh&aacute; l&agrave; 8,41%.</p>\r\n<p>\r\n	Trong năm 2018, BVF sẽ tập trung đầu tư mạnh mẽ v&agrave;o nền tảng c&ocirc;ng nghệ th&ocirc;ng tin để n&acirc;ng cao chất lượng dịch vụ, cung cấp th&ecirc;m nhiều dịch vụ gia tăng cho kh&aacute;ch h&agrave;ng. Cụ thể, website mới với giao diện th&acirc;n thiện với người d&ugrave;ng vừa được ra mắt v&agrave;o th&aacute;ng 1/2018. C&ugrave;ng với đ&oacute;, BVF cũng n&acirc;ng cấp phần mềm đặt lệnh trực tuyến, ph&aacute;t triển ứng dụng ri&ecirc;ng d&agrave;nh cho điện thoại sẽ được triển khai sớm nhằm gi&uacute;p nh&agrave; đầu tư dễ d&agrave;ng hơn trong việc theo d&otilde;i danh mục đầu tư v&agrave; giao dịch tiện lợi hơn.</p>', './Phó Chủ tịch Nước trao học bổng _An sinh Giáo dục - Xe đạp đến trường_ cho trẻ em hiếu học tại An Giang_files/bao-viet-nhan-tho-trao-xe-dap-hoc-bong-an-giang-20171214-15123129.jpg', '2018-05-07 16:32:07', '2018-05-07 16:32:09');

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_hoa_don`
--
INSERT INTO `categories`(`id`, `name`, `description`, `created_at`, `updated_at`) VALUES (1, 'TRANG CHỦ', 'TRANGCHU', '2018-02-05 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `categories`(`id`, `name`, `description`, `created_at`, `updated_at`) VALUES (2, 'GIỚI THIỆU', 'GIOITHIEU', '2018-02-05 18:43:29', '0000-00-00 00:00:00');
INSERT INTO `categories`(`id`, `name`, `description`, `created_at`, `updated_at`) VALUES (4, 'BẢO HIỂM BẢO VIỆT', 'BAOHIEMCONNGUOI', '2018-02-06 14:14:55', '0000-00-00 00:00:00');
INSERT INTO `categories`(`id`, `name`, `description`, `created_at`, `updated_at`) VALUES (5, 'BẢO HIỂM XE CƠ GIỚI', 'BAOHIEMXECOGIOI', '2018-05-12 04:13:16', '0000-00-00 00:00:00');
INSERT INTO `categories`(`id`, `name`, `description`, `created_at`, `updated_at`) VALUES (6, 'BẢO HIỂM TÀI SẢN', 'BAOHIEMTAISAN', '2018-05-12 04:13:31', '0000-00-00 00:00:00');
INSERT INTO `categories`(`id`, `name`, `description`, `created_at`, `updated_at`) VALUES (7, 'TIN TỨC', 'tin-tuc', '2018-05-12 04:13:43', '0000-00-00 00:00:00');
INSERT INTO `categories`(`id`, `name`, `description`, `created_at`, `updated_at`) VALUES (8, 'LIÊN HỆ', 'LIENHE', '2018-05-12 04:13:54', '0000-00-00 00:00:00');

CREATE TABLE `chi_tiet_hoa_don` (
  `receipt_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `sum` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chi_tiet_hoa_don`
--

INSERT INTO `chi_tiet_hoa_don` (`receipt_code`, `product_code`, `quantity`, `price`, `sum`) VALUES
('1520510982', 'SP04', 2, '3800000', '7600000'),
('1520510982', 'SP03', 1, '3000000', '3000000'),
('1520510982', 'SP13', 1, '3000000', '3000000'),
('1520511643', 'SP04', 2, '3800000', '7600000'),
('1520511643', 'SP13', 2, '3000000', '6000000'),
('1520511643', 'SP09', 1, '2000000', '2000000'),
('1520511736', 'SP05', 1, '4500000', '4500000'),
('1520511736', 'SP07', 1, '2000000', '2000000'),
('1520511736', 'SP10', 1, '25000000', '25000000'),
('1520512082', 'SP14', 1, '18000000', '18000000'),
('1520512082', 'SP01', 1, '1000000', '1000000'),
('1520512082', 'SP11', 1, '300000', '300000'),
('1520512817', 'SP04', 1, '3800000', '3800000'),
('1520512817', 'SP06', 1, '26000000', '26000000'),
('1520512879', 'SP05', 1, '4500000', '4500000'),
('1520512879', 'SP09', 1, '2000000', '2000000'),
('1520513154', 'SP01', 3, '1000000', '3000000'),
('1520513154', 'SP02', 1, '2000000', '2000000'),
('1520513762', 'SP01', 1, '1000000', '1000000'),
('1520513895', 'SP06', 1, '26000000', '26000000'),
('1520513895', 'SP09', 1, '2000000', '2000000'),
('1520514623', 'SP05', 1, '4500000', '4500000'),
('1520514623', 'SP07', 1, '2000000', '2000000'),
('1520515228', 'SP06', 1, '26000000', '26000000'),
('1520515228', 'SP03', 1, '3000000', '3000000'),
('1520515228', 'SP10', 1, '25000000', '25000000'),
('1520606238', 'SP05', 1, '4500000', '4500000'),
('1520606238', 'SP07', 1, '2000000', '2000000'),
('1520606238', 'SP11', 1, '300000', '300000'),
('1520606238', 'SP14', 1, '18000000', '18000000'),
('1520606238', 'SP04', 1, '3800000', '3800000'),
('1520610100', 'SP04', 1, '3800000', '3800000'),
('1520610100', 'SP07', 1, '2000000', '2000000'),
('1520622871', 'SP06', 1, '26000000', '26000000'),
('1520622871', 'SP07', 1, '2000000', '2000000'),
('1520622871', 'SP10', 1, '25000000', '25000000'),
('1520622871', 'SP01', 1, '1000000', '1000000'),
('1520674018', 'SP03', 1, '3000000', '3000000'),
('1520674018', 'SP02', 1, '2000000', '2000000'),
('1520674343', 'SP12', 1, '800000', '800000'),
('1520674343', 'SP09', 2, '2000000', '4000000'),
('1520674343', 'SP03', 1, '3000000', '3000000'),
('1520674768', 'SP10', 1, '25000000', '25000000'),
('1520674768', 'SP06', 1, '26000000', '26000000'),
('1520675704', 'SP07', 1, '2000000', '2000000'),
('1520675704', 'SP06', 1, '26000000', '26000000'),
('1520675704', 'SP05', 1, '4500000', '4500000'),
('1520677336', 'SP09', 1, '2000000', '2000000'),
('1520677336', 'SP10', 1, '25000000', '25000000'),
('1520677336', 'SP07', 1, '2000000', '2000000'),
('1520678281', 'SP09', 1, '2000000', '2000000'),
('1520678281', 'SP11', 1, '300000', '300000'),
('1520678281', 'SP02', 1, '2000000', '2000000'),
('1520678764', 'SP02', 1, '2000000', '2000000'),
('1520681755', 'SP05', 1, '4500000', '4500000'),
('1520681755', 'SP10', 2, '25000000', '50000000'),
('1520681755', 'SP13', 1, '3000000', '3000000'),
('1520681755', 'SP01', 1, '1000000', '1000000'),
('1520681801', 'SP04', 1, '3800000', '3800000'),
('1520681801', 'SP05', 1, '4500000', '4500000'),
('1520681801', 'SP10', 1, '25000000', '25000000');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `mobile`, `address`) VALUES
(1, 'Trần Danh Tùng', 'ttt@gmail.com', '0123456789', 'Thanh Nhàn - Hà Nội'),
(4, 'Lê Thị Táo', 'tao@gmail.com', '03453465467', 'Nam Định'),
(5, 'Phạm Thị G', 'pham@gmail.com', '02873827899', 'Sài gòn'),
(6, 'Lê Văn Tuấn', 'tuanlv3@gmail.com', '0345346544', 'Hà Nam'),
(7, 'Lê Văn Khải', 'khailv@zent.edu', '03453465467', 'Triều Khúc - Hà Nội'),
(8, 'Ngụy Minh Tuấn', 'tuannm@gmail.com', '02873827899', 'Hà Đông Hà Nội'),
(9, 'Ngô Đức Sơn', 'sonnd@gmail.com', '0345346544', 'Hai Bà Trưng - Hà Nội'),
(10, 'Lê Văn Lương', 'luonglv@gmail.com', '02345236578', 'Tây Mỗ - Hà Nội'),
(11, 'Mai Thái Sơn', 'sml@gmail.com', '02345236578', 'Nghệ An'),
(12, 'Cù Trọng Xoay', 'xoayct@gmail.com', '02345236578', 'Hai Bà Trưng - Hà Nội'),
(13, 'Trần Xoáy', 'xoayt@gmail.com', '02345236578', 'Hà Đông Hà Nội'),
(14, 'Tùng Béo', 'tungtinhteis@gmail.com', '03453465467', 'Hoài Đức Hà Nội');

-- --------------------------------------------------------

--
-- Table structure for table `hoa_don`
--

CREATE TABLE `hoa_don` (
  `id` int(20) NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `staff_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `sum` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoa_don`
--

INSERT INTO `hoa_don` (`id`, `code`, `customer_id`, `staff_id`, `date`, `sum`) VALUES
(1, '1520510604', '1', '33', '2018-03-08 19:03:24', '13600000'),
(5, '1520510678', '4', '33', '2018-03-08 19:04:38', '13600000'),
(9, '1520510766', '1', '33', '2018-03-08 19:06:06', '13600000'),
(10, '1520510923', '1', '33', '2018-03-08 19:08:43', '13600000'),
(11, '1520510982', '4', '33', '2018-03-08 19:09:42', '13600000'),
(12, '1520511643', '1', '33', '2018-03-08 19:20:43', '15600000'),
(13, '1520511736', '4', '33', '2018-03-08 19:22:16', '31500000'),
(14, '1520512082', '', '33', '2018-03-08 19:28:02', '19300000'),
(15, '1520512817', '1', '33', '2018-03-08 19:40:17', '29800000'),
(16, '1520512879', '', '33', '2018-03-08 19:41:19', '6500000'),
(17, '1520513154', '5', '33', '2018-03-08 19:45:54', '5000000'),
(18, '1520513762', '9', '33', '2018-03-08 19:56:02', '1000000'),
(19, '1520513895', '1', '33', '2018-03-08 19:58:15', '28000000'),
(20, '1520514623', '1', '33', '2018-03-08 20:10:23', '6500000'),
(21, '1520515228', '4', '33', '2018-03-08 20:20:28', '54000000'),
(22, '1520606238', '7', '33', '2018-03-09 21:37:18', '28600000'),
(23, '1520610100', '4', '33', '2018-03-09 22:41:40', '5800000'),
(24, '1520622871', '10', '33', '2018-03-10 02:14:31', '54000000'),
(25, '1520674018', '6', '33', '2018-03-10 16:26:58', '5000000'),
(26, '1520674343', '11', '33', '2018-03-10 16:32:23', '7800000'),
(27, '1520674768', '12', '33', '2018-03-10 16:39:28', '51000000'),
(28, '1520675704', '13', '33', '2018-03-10 16:55:04', '32500000'),
(29, '1520677336', '14', '33', '2018-03-10 17:22:16', '29000000'),
(30, '1520678281', '14', '33', '2018-03-10 17:38:01', '4300000'),
(31, '1520678764', '14', '33', '2018-03-10 17:46:04', '2000000'),
(32, '1520681755', '4', '33', '2018-03-10 18:35:55', '58500000'),
(33, '1520681801', '14', '33', '2018-03-10 18:36:41', '33300000');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `quantity` decimal(11,0) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `description`, `price`, `quantity`, `category_id`, `image`) VALUES
(1, 'SP01', 'IPhone 4s', 'black - 16gb - global', '1000000', '12', 2, 'iphone4.jpg'),
(3, 'SP02', 'IPhone 4s', 'white - 32gb - look', '2000000', '14', 2, 'iphone4s.jpg'),
(4, 'SP03', 'IPhone 5', 'black - 32gb - global', '3000000', '18', 2, 'iphone5.jpg'),
(5, 'SP04', 'IPhone 5s', 'gold - 16gb - likenew', '3800000', '9', 2, 'iphone5s.jpg'),
(7, 'SP05', 'IPhone 6', 'Gold - 16gb - lock', '4500000', '14', 2, 'iphone6.jpg'),
(8, 'SP06', 'Macbook Pro 2016', 'No touch-bar - i5 - 8gb - 256gb', '26000000', '5', 4, 'macbook.jpg'),
(11, 'SP07', 'Ipad Pro 10inch', 'Gold - 256gb - 3g', '2000000', '9', 1, 'ipadpro.jpg'),
(13, 'SP09', 'urBeats', 'black', '2000000', '11', 5, 'urbeats.jpg'),
(14, 'SP10', 'Lenovo Thinkpad T470s', 'Black - i5 - 8gb - 256gb', '25000000', '6', 4, 'thinkpad.png'),
(15, 'SP11', 'Xiaomi 10000', '10000mAh', '300000', '20', 6, 'xiaomi.jpg'),
(16, 'SP12', 'USB OTG Kingston', 'Blue -  64bb - usb3.1', '800000', '6', 5, 'kington.jpg'),
(17, 'SP13', 'IPhone X', '128gb black', '3000000', '8', 2, 'iphonex.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'MD5',
  `created_at` datetimL COMMENT 'Thời gian tạo mới bản ghi',
  `status` tinyint(255) DEFAULT '0' COMMENT '0: Deactive ; 1: Active',
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `password`, `created_at`, `status`, `update_at`) VALUES
(2, 'Nguyễn Quang Hải', 'hainq@zent.edu', '0276723657', '81dc9bdb52d04dc20036dbd8313ed055', '2018-01-26 14:05:49', 0, '2018-02-02 13:30:32'),
(3, 'Bùi Tiến Dũng', 'dungbt@zent.edu', '0287382780', '81dc9bdb52d04dc20036dbd8313ed055', '2018-01-26 14:08:01', 0, '2018-01-27 10:17:46'),
(4, 'Nguyễn Duy Mạnh', 'manhnd@zent.edu', '04335454599', '81dc9bdb52d04dc20036dbd8313ed055', '2018-01-26 14:06:29', 0, '2018-01-27 10:53:22'),
(5, 'Nguyễn Văn Toàn', 'toannv@zent.edu', '03438483834', '81dc9bdb52d04dc20036dbd8313ed055', '2018-01-26 14:06:34', 0, '2018-01-27 10:53:16'),
(8, 'Trần Danh Trung Tùng', 'tttstillalive@gmail.com', '0345346546', '81dc9bdb52d04dc20036dbd8313ed055', '2018-01-26 14:06:17', 1, '2018-01-27 10:53:12'),
(9, 'Tùng Đẹp Trai', 'ttt@gmail.com', '0345346546', 'd41d8cd98f00b204e9800998ecf8427e', '2018-01-24 15:29:49', 1, '2018-01-29 15:32:23'),
(17, 'Lê Văn Lợi', 'Loilv@gmail.com', '0345346546', 'e10adc3949ba59abbe56e057f20f883e', '2018-01-27 10:57:07', 1, '2018-02-05 18:16:22'),
(18, 'Lại Văn Sâm', 'samlv@gmail.com', '02345236578', '827ccb0eea8a706c4c34a16891f84e7b', '2018-01-29 10:44:36', 1, '2018-02-02 14:10:22'),
(20, 'Lê Văn Tam', 'tamlv@gmail.com', '02873827800', 'e10adc3949ba59abbe56e057f20f883e', '2018-01-29 15:24:06', 1, '2018-01-29 15:40:28'),
(22, 'Tàu Pẩy Pẩy', 'paypay@gmail.com', '0345346546', '827ccb0eea8a706c4c34a16891f84e7b', '2018-01-29 15:38:11', 1, '2018-01-29 15:39:01'),
(23, 'Lít Xừn Nờ', 'litxn@hotmail.com', '0345346546', '827ccb0eea8a706c4c34a16891f84e7b', '2018-01-29 15:40:06', 1, '2018-01-29 15:40:37'),
(24, 'Pắc Hăng Xô', 'xoph@gmail.com', '02873827899', '827ccb0eea8a706c4c34a16891f84e7b', '2018-01-29 15:47:29', 1, '2018-01-29 16:59:39'),
(27, 'Son GoKu', 'goku@gmail.com', '0345346546', '123456', '2018-01-31 15:33:53', 1, '2018-02-02 00:52:38'),
(30, 'Lò Văn Tèn', 'lovt@gmail.com', '0345346544', 'e10adc3949ba59abbe56e057f20f883e', '2018-02-02 00:56:01', 1, '2018-02-02 00:56:11'),
(32, 'Lê Văn Tám', 'tam@gmail.com', '0345346544', 'e10adc3949ba59abbe56e057f20f883e', '2018-02-02 14:04:52', 1, '2018-02-02 14:05:08'),
(33, 'Trần Danh Tùng', 'tungtd@zent.com', '0345346544', 'e10adc3949ba59abbe56e057f20f883e', '2018-03-02 15:09:11', 1, NULL),
(34, 'Hoàng Phi Hồng', 'honghp@zent.com', '03453465467', 'e10adc3949ba59abbe56e057f20f883e', '2018-03-10 12:07:05', 1, NULL),
(35, 'Trần Văn Q', 'qtv@gmail.com', '02873827899', 'e10adc3949ba59abbe56e057f20f883e', '2018-03-10 16:12:28', 1, '2018-03-10 16:19:57'),
(36, 'Hải Nam', 'namhai@gmail.com', '03453465467', 'e10adc3949ba59abbe56e057f20f883e', '2018-03-10 18:09:58', 1, NULL),
(37, 'Vũ Văn Thuong', 'thuongvv@gmail.com', '0345346544', 'e10adc3949ba59abbe56e057f20f883e', '2018-03-10 18:33:01', 1, '2018-03-10 18:33:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;