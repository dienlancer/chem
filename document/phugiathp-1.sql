-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2018 at 01:53 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phugiathp`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'ilPOiDhmKqsxtUpi7ZgWe5vDYjt2ICJK', 1, '2017-11-12 06:15:56', '2017-11-12 06:15:55', '2017-11-12 06:15:56'),
(2, 1, 'rcp04qHne8oATtrTCwKl9FuckJEarSCb', 1, '2017-11-12 06:20:02', '2017-11-12 06:20:02', '2017-11-12 06:20:02'),
(3, 1, 'AHbwHv4BMq4Z5b7nkdvOlvcOvXnPqMk0', 1, '2017-11-12 06:24:14', '2017-11-12 06:24:14', '2017-11-12 06:24:14'),
(4, 1, 'JqmoT6nwuNXt0D5jape2qCQsEVQgWEqA', 1, '2017-11-12 06:26:26', '2017-11-12 06:26:26', '2017-11-12 06:26:26'),
(5, 1, '1TnyfEnFLs7gdNZXKP2r35tc1hBvcnPg', 1, '2017-11-12 07:22:52', '2017-11-12 07:22:52', '2017-11-12 07:22:52'),
(6, 1, 'QlzbRQWzVJgg01NkGUVewoQhT4qPKTMZ', 1, '2017-11-12 07:23:56', '2017-11-12 07:23:56', '2017-11-12 07:23:56'),
(13, 8, 'l16IOygny5ihmPBxkIZIVkZjCQmH1wfA', 1, '2018-01-28 10:04:24', '2018-01-28 10:04:24', '2018-01-28 10:04:24'),
(14, 9, 'DAf22Uade27AmO71vWsE0n2vGaVSpaQH', 1, '2018-02-04 05:35:55', '2018-02-04 05:35:55', '2018-02-04 05:35:55'),
(19, 14, 'R0Yehty1Y3qhG4Wpfoc8YUyNq5TisAIk', 1, '2018-03-13 19:46:01', '2018-03-13 19:46:01', '2018-03-13 19:46:01'),
(20, 15, 'umUGPTa3kTtRJKPFFFWyhIAlxopjMg80', 1, '2018-03-13 19:50:57', '2018-03-13 19:50:57', '2018-03-13 19:50:57'),
(21, 16, 'xRYDAo6sDR9yWMszzQEJIHBnS5VMSuDf', 1, '2018-03-18 18:55:37', '2018-03-18 18:55:37', '2018-03-18 18:55:37'),
(22, 17, 'saewF5Q2AVX6wwd8m84SG8qNuo94pGjT', 1, '2018-05-26 01:55:25', '2018-05-26 01:55:25', '2018-05-26 01:55:25');

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_image` text COLLATE utf8_unicode_ci,
  `intro` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `count_view` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `fullname`, `alias`, `image`, `alt_image`, `intro`, `content`, `description`, `meta_keyword`, `meta_description`, `count_view`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mua hóa chất ngành bao bì ở đâu giá rẻ uy tín tại Sài Gòn?', 'mua-hoa-chat-nganh-bao-bi-o-dau-gia-re-uy-tin-tai-sai-gon', 'hoa-chat-nganh-bao-bi-wdr73ejmq6fl.png', NULL, 'Mua hóa chất ngành bao bì ở đâu giá rẻ uy tín tại Sài Gòn?; Hóa chất ngành bao bì giá rẻ TP HCM; Bán hóa chất ngành bao bì giá rẻ TP HCM', '<p>Sài Gòn Chem tự hào là công ty phân phối HÓA CHẤT NGÀNH BAO BÌ chuyên nghiệp và uy tín toàn thành phố Hồ Chí Minh. Công ty chúng tôi luôn muốn phục vụ ngày càng tốt hơn cho các khách hàng hiện hữu, đồng thời, phát triển thêm nhiều khách hàng mới với mong muốn cung cấp cho quý khách hàng những sản phẩm với giá cả tốt nhất với phong cách phục vụ tận tình nhất.</p>\r\n\r\n<p>Một số sản phẩm tiêu biểu phải kể đến:</p>\r\n\r\n<p>HCHO – Acid Formalin<br>\r\nỨng dụng:</p>\r\n\r\n<p>Dùng trong ngành sơn, công nghiệp nhựa dẻo, khử trùng trong ... ,nguyên liệu sản xuất phân bón, sản xuất bao bì giấy, chất giặt tẩy, ...</p>\r\n\r\n<p>XÚT (NAOH) THÁI LAN</p>\r\n\r\n<p>Công thức hóa học : NaOH</p>\r\n\r\n<p>Hàm lượng hóa chất : 99%</p>\r\n\r\n<p>Tên gọi khác : Xút Hột, Xút Bột, Caustic Soda Micropearls, NaOH Hạt, NaOH Hột, NaOH Bột, Natri Hydroxit, Sodium Hydroxide, Caustic Soda, Xút ăn da, Sodium Hydroxide …</p>\r\n\r\n<p>Xuất xứ : Thái Lan</p>\r\n\r\n<p>Đóng gói : 25Kg/1bao<br>\r\nỨNG DỤNG XÚT (NAOH) THÁI LAN</p>\r\n\r\n<p>+ Xút NaOH dùng pha chế dung dịch kiềm để xử lý rau hoa quả trước khi chế biến hoặc đóng hộp…</p>\r\n\r\n<p>+ Trong công nghiệp dược phẩm: xút NaOH dùng sản xuất các sản phẩm hoặc bán sản phẩm chứa gốc Natri như: Natri phenolat thành phần của thuốc giảm đau Aspirin, khử trùng y tế….</p>\r\n\r\n<p>+ Xút NaOH (Cautic soda flakes) dùng trong sản xuất giấy, bột giấy ... dùng để tẩy trắng.</p>\r\n\r\n<p>Ngoài phân phối Xút NaOH Thái Lan, Sài Gòn Chem còn cung cấp xút nhập khẩu từ những nhà sản xuất lớn trên thế giới như Xút NaOH Indoesia, Xút NaOH Trung Quốc, Xút NaOH Đài Loan với cam kết chất lượng đi đôi với giá thành tốt nhất.&nbsp;</p>', 'chú thích Mua hóa chất ngành bao bì ở đâu giá rẻ uy tín tại Sài Gòn?', 'metakeyword Mua hóa chất ngành bao bì ở đâu giá rẻ uy tín tại Sài Gòn?', 'metadescription Mua hóa chất ngành bao bì ở đâu giá rẻ uy tín tại Sài Gòn?', 5, 1, 1, '2018-04-20 07:04:49', '2018-06-24 18:00:31'),
(2, 'Hóa chất ngành bao bì giá rẻ TP HCM', 'hoa-chat-nganh-bao-bi-gia-re-tp-hcm', 'hoa-chat-nganh-bao-bi-1nfo0yipcbjx.png', NULL, 'Hóa chất ngành bao bì giá rẻ TP HCM; Bán hóa chất ngành bao bì giá rẻ TP HCM; Mua hóa chất ngành bao bì giá rẻ ở đâu?', '<p>Ngày nay Sài Gòn Chem đang là địa chỉ tin cậy cho các đối tác để triển khai hóa chất phụ gia cho các ngành sản xuất hóa chất ở Việt Nam. Cùng với sự tăng trưởng kinh tế của Việt Nam, Sài Gòn Chem đang trên đà phát triển mạnh mẽ, nhắm tới mục tiêu trở thành nhà cung cấp phụ gia hóa chất hàng đầu Việt Nam. Một trong những sản phẩm nổi bật nhất của chúng tôi phải kể đến là HÓA CHẤT NGÀNH BAO BÌ được nhập khẩu trực tiếp từ các nhà sản xuất lớn trên thế giới, cam kết giá sản phẩm chúng tôi đưa ra cạnh tranh nhất trên thị trường.</p><p><img src=\"/upload/art-1.png\" style=\"width: 100%; float: right;\" class=\"note-float-right\" alt=\"chiếc xe hơi màu trắng\" title=\"Xe hơi màu trắng\"><br></p>\r\n\r\n<p>Một số sản phẩm tiêu biểu phải kể đến:</p>\r\n\r\n<p>H3BO3 - Acid Boric<br>\r\n+ Acid Boric có thể được sử dụng trong kỹ thuật luyện kim, hàn công nghệ cao và dệt nhuộm, ngành bao bì...<br>\r\n+ Nó có thể được sử dụng như là thuốc sát trùng, chẳng hạn như ngăn chặn gỗ tự hoại.<br>\r\n+ Nó có thể được sử dụng như một chất bảo vệ thực vật.</p>\r\n\r\n<p>Borax 99.5% Na2B4O7.10H2O<br>\r\nỨng dụng:</p>\r\n\r\n<p>+ Ngành sản xuất phân bón</p>\r\n\r\n<p>+ Ngành sản xuất giấy, bao bì</p>\r\n\r\n<p>+ Thuỷ tinh, Gỗ</p><p><img src=\"/upload/400x250-conmochieu-2.png\" style=\"width: 100%;\"><br></p>', 'chú thích Hóa chất ngành bao bì giá rẻ TP HCM', 'metakeyword Hóa chất ngành bao bì giá rẻ TP HCM', 'metadescription Hóa chất ngành bao bì giá rẻ TP HCM', 3, 2, 1, '2018-04-20 07:11:45', '2018-06-09 19:39:33'),
(3, 'Bán hóa chất ngành bao bì giá rẻ TP HCM', 'ban-hoa-chat-nganh-bao-bi-gia-re-tp-hcm', 'hoa-chat-nganh-bao-bi-vizejuak15rh.png', NULL, 'Bán hóa chất ngành bao bì giá rẻ TP HCM; Mua hóa chất ngành bao bì giá rẻ ở đâu?; Nhà phân phối hóa chất ngành bao bì tại tp HCM', '<p>S&agrave;i G&ograve;n Chem tự h&agrave;o l&agrave; c&ocirc;ng ty ph&acirc;n phối H&Oacute;A CHẤT NG&Agrave;NH BAO B&Igrave; chuy&ecirc;n nghiệp v&agrave; uy t&iacute;n to&agrave;n th&agrave;nh phố Hồ Ch&iacute; Minh. S&agrave;i G&ograve;n Chem kh&ocirc;ng chỉ cung cấp c&aacute;c h&oacute;a chất đặc chủng m&agrave; ch&uacute;ng t&ocirc;i c&ograve;n thực hiện tư vấn c&ocirc;ng nghệ v&agrave; cung cấp giải ph&aacute;p cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Đến với S&agrave;i G&ograve;n Chem, qu&yacute; kh&aacute;ch sẽ thật sự h&agrave;i l&ograve;ng khi chất lượng sản phẩm lu&ocirc;n được đảm bảo, đội ngũ nh&acirc;n vi&ecirc;n c&oacute; phong c&aacute;ch phục vụ nhiệt t&igrave;nh, tận t&acirc;m, kiến thức chuy&ecirc;n ng&agrave;nh vững v&agrave;ng s&acirc;u sắc.</p>\r\n\r\n<p>Một số sản phẩm ti&ecirc;u biểu phải kể đến:</p>\r\n\r\n<p>PAC Ấn độ, PAC Trung Quốc, PAC Th&aacute;i Lan&nbsp;<br />\r\nỨng dụng h&oacute;a chất PAC Ấn độ, PAC Trung Quốc, PAC Th&aacute;i Lan</p>\r\n\r\n<p>+ H&oacute;a chất PAC (PAC Ấn Độ, PAC Trung Quốc, PAC Th&aacute;i Lan) c&oacute; t&aacute;c dụng tăng đ&ocirc;̣ trong của nước, kéo dài chu kỳ lọc, tăng ch&acirc;́t lượng nước sau lọc.</p>\r\n\r\n<p>+ H&oacute;a chất PAC (PAC Ấn Độ, PAC Trung Quốc, PAC Th&aacute;i Lan) d&ugrave;ng xử l&yacute; nước thải chứa cặn lơ lửng như nước thải c&ocirc;ng nghiệp ng&agrave;nh gốm sứ, gạch, nh&agrave; m&aacute;y chế biến thủy sản, x&iacute; nghiệp giết mổ gia s&uacute;c...</p>\r\n\r\n<p>+ D&ugrave;ng trong ng&agrave;nh bao b&igrave;.</p>\r\n\r\n<p>tinh bột m&igrave; biến t&iacute;nh.</p>\r\n\r\n<p>Tinh bột m&igrave; biến t&iacute;nh c&oacute; ứng dụng rất phổ biến, bao gồm:</p>\r\n\r\n<p>+ &nbsp;L&agrave; chất tạo gel trong c&aacute;c loại kẹo gum v&agrave; thực phẩm mềm dẻo</p>\r\n\r\n<p>+ &nbsp;L&agrave; t&aacute;c nh&acirc;n tạo h&igrave;nh trong c&aacute;c sản phẩm thịt v&agrave; thức ăn cho vật nu&ocirc;i trong nh&agrave;.</p>\r\n\r\n<p>+ Với c&ocirc;ng nghiệp khai kho&aacute;ng, tinh bột m&igrave; biến t&iacute;nh được d&ugrave;ng trong tuyển nổi quặng, dung dịch nhũ tương khoan dầu.</p>', 'chú thích Bán hóa chất ngành bao bì giá rẻ TP HCM', 'metakeyword Bán hóa chất ngành bao bì giá rẻ TP HCM', 'metadescription Bán hóa chất ngành bao bì giá rẻ TP HCM', 5, 3, 1, '2018-04-20 07:13:15', '2018-06-06 02:23:20'),
(4, 'Mua hóa chất ngành bao bì giá rẻ ở đâu?', 'mua-hoa-chat-nganh-bao-bi-gia-re-o-dau', 'hoa-chat-nganh-bao-bi-9kgvibon7z0h.png', NULL, 'Mua hóa chất ngành bao bì giá rẻ ở đâu?; Mua hóa chất ngành bao bì ở đâu giá rẻ uy tín tại Sài Gòn?; Hóa chất ngành bao bì giá rẻ TP HCM', '<p>S&agrave;i G&ograve;n Chem tự h&agrave;o l&agrave; c&ocirc;ng ty ph&acirc;n phối H&Oacute;A CHẤT NG&Agrave;NH BAO B&Igrave; chuy&ecirc;n nghiệp v&agrave; uy t&iacute;n to&agrave;n th&agrave;nh phố Hồ Ch&iacute; Minh. Ch&uacute;ng t&ocirc;i cam kết chỉ cung cấp những sản phẩm đảm bảo chất lượng xuất xứ r&otilde; r&agrave;ng, lu&ocirc;n đặt chữ T&iacute;n v&agrave; chữ T&acirc;m l&ecirc;n h&agrave;ng đầu.</p>\r\n\r\n<p>Sự tin tưởng v&agrave; ủng hộ của qu&yacute; kh&aacute;ch h&agrave;ng trong suốt thời gian qua l&agrave; nguồn động vi&ecirc;n lớn tr&ecirc;n bước đường ph&aacute;t triển của S&agrave;i G&ograve;n Chem. Để xứng đ&aacute;ng với niềm tin ấy, ch&uacute;ng t&ocirc;i kh&ocirc;ng ngừng ho&agrave;n thiện để c&oacute; thể phục vụ qu&yacute; kh&aacute;ch h&agrave;ng ng&agrave;y c&agrave;ng tốt hơn, chuy&ecirc;n nghiệp hơn.</p>\r\n\r\n<p>Một số sản phẩm ti&ecirc;u biểu phải kể đến:</p>\r\n\r\n<p>nước Javel (Javen)</p>\r\n\r\n<p>T&ecirc;n sản phẩm: Sodium Hypochlorite NaClO 10%</p>\r\n\r\n<p>C&ocirc;ng thức ph&acirc;n tử: NaClO</p>\r\n\r\n<p>Dung dịch lỏng, trong suốt, c&oacute; m&agrave;u đồng nhất.<br />\r\nỨng dụng h&oacute;a chất Javel (Javen)</p>\r\n\r\n<p>+ Dung dịch nước Javel c&oacute; nồng độ 30% d&ugrave;ng l&agrave;m sạch, tiệt khuẩn m&ocirc;i trường lỏng: l&agrave;m sạch nước ở hồ bơi, nơi đọng nước bẩn (như chỗ chứa nước ở nh&agrave; vệ sinh).</p>\r\n\r\n<p>+ Nước Javel được biết đến với t&iacute;nh năng khử tr&ugrave;ng vi sinh vật g&acirc;y bệnh trong giếng hoặc c&aacute;c hệ thống xử l&yacute; nước v&agrave; nước thải.</p>\r\n\r\n<p>+ Nước Javel l&agrave; chất oxy h&oacute;a mạnh được d&ugrave;ng trong c&ocirc;ng nghiệp sản xuất giấy, dệt nhuộm, bao b&igrave;.</p>\r\n\r\n<p>AMONIAC - NH4OH<br />\r\nỨng dụng:</p>\r\n\r\n<p>+ &nbsp;Được sử dụng trong qu&aacute; tr&igrave;nh l&ecirc;n men c&ocirc;ng nghiệp như l&agrave; một nguồn nitơ cho vi sinh vật v&agrave; điều chỉnh độ pH trong qu&aacute; tr&igrave;nh l&ecirc;n men.<br />\r\n+ &nbsp;Kh&iacute; Amoniac phản ứng với c&aacute;c tannin tự nhi&ecirc;n trong gỗ v&igrave; vậy Amoniac c&oacute; thể d&ugrave;ng để thay đổi m&agrave;u sắc cho gỗ.<br />\r\n+ Amoniac c&ograve;n được d&ugrave;ng trong ng&agrave;nh xi mạ, dệt nhuộm, bao b&igrave;.</p>', 'chú thích Mua hóa chất ngành bao bì giá rẻ ở đâu?', 'metakeyword Mua hóa chất ngành bao bì giá rẻ ở đâu?', 'metadescription Mua hóa chất ngành bao bì giá rẻ ở đâu?', 5, 4, 1, '2018-04-20 07:15:19', '2018-05-31 06:03:05'),
(5, 'Mua Silicone ở đâu giá rẻ uy tín tại Sài Gòn?; Silicone giá rẻ TP HCM Bán Silicone giá rẻ TP HCM', 'mua-silicone-o-dau-gia-re-uy-tin-tai-sai-gon-silicone-gia-re-tp-hcm-ban-silicone-gia-re-tp-hcm', 'phan-phoi-silicon-h23p4aybt8sw.png', NULL, 'Mua Silicone ở đâu giá rẻ uy tín tại Sài Gòn?; Silicone giá rẻ TP HCM Bán Silicone giá rẻ TP HCM', '<p>Keo Silicone l&agrave; g&igrave;?</p>\r\n\r\n<p>Keo silicone l&agrave; sản phẩm đặc biệt được sản xuất từ silicon nguy&ecirc;n sinh, phụ gia v&agrave; chất x&uacute;c t&aacute;c. Keo c&oacute; trạng th&aacute;i vật l&yacute; dạng hồ lỏng nhớt c&oacute; thể đ&oacute;ng rắn khi tiếp x&uacute;c với hơi ẩm.</p>\r\n\r\n<p>Ứng dụng keo Silicone</p>\r\n\r\n<p>Keo được sử dụng để b&iacute;t k&iacute;n, ngăn chặn kh&ocirc;ng kh&iacute;, kh&iacute; gas, tiếng ồn, lửa ch&aacute;y, kh&oacute;i hoặc chất lỏng giữa hai m&ocirc;i trường.</p>\r\n\r\n<p>Keo được sử dụng trong nhiều ng&agrave;nh kh&aacute;c nhau như x&acirc;y dựng, sản xuất xe hơi v&agrave; c&ocirc;ng nghiệp vũ trụ&hellip;</p>\r\n\r\n<p>Một số sản phẩm keo Silicone phổ biến phải kể đến:</p>\r\n\r\n<p>SILICONE RTV &ndash; 830</p>\r\n\r\n<p>Quy c&aacute;ch : 25kg/th&ugrave;ng</p>\r\n\r\n<p>xuất xứ: Đ&agrave;i Loan</p>\r\n\r\n<p>Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t.<br />\r\nỨNG DỤNG SILICONE RTV &ndash; 830</p>\r\n\r\n<p>SILICONE RTV &ndash; 830 th&iacute;ch hợp cho sản xuất nến nghệ thuật v&agrave; thạch cao, cũng như khu&ocirc;n mẫu cho sản xuất đồ nội thất v&agrave; c&aacute;c th&agrave;nh phần điện tử.</p>\r\n\r\n<p>SILICONE RTV &ndash; 830 được ứng dụng l&agrave;m khu&ocirc;n cao su d&ugrave;ng để sản xuất đồ trang tr&iacute; v&agrave; h&agrave;ng thủ c&ocirc;ng mỹ nghệ l&agrave;m bằng polyester, epoxy hoặc PU.</p>\r\n\r\n<p>SILICONE SA - 3353</p>\r\n\r\n<p>Quy c&aacute;ch : 20kg/th&ugrave;ng</p>\r\n\r\n<p>Xuất xứ: Đ&agrave;i Loan</p>\r\n\r\n<p>Bảo quản nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t.<br />\r\nỨNG DỤNG SILICONE SA - 3353</p>\r\n\r\n<p>SILICONE SA - 3353 d&ugrave;ng l&agrave;m khu&ocirc;n cho c&aacute;c m&oacute;n b&aacute;nh th&ocirc;ng thường như khu&ocirc;n l&agrave;m b&aacute;nh cupcake, khu&ocirc;n b&aacute;nh donut, khu&ocirc;n b&aacute;nh waffle, khu&ocirc;n vỏ s&ograve; l&agrave;m b&aacute;nh quy, khu&ocirc;n cakepops, khu&ocirc;n mochi nước Nhật Bản.</p>\r\n\r\n<p>SILICONE SA - 3353 d&ugrave;ng trong sản xuất trang sức, thiết bị điện tử, điện c&ocirc;ng nghiệp&hellip;</p>\r\n\r\n<p>Ngo&agrave;i ra ch&uacute;ng t&ocirc;i c&ograve;n cung cấp c&aacute;c sản phẩm Silicone kh&aacute;c như:</p>', 'chú thích Mua Silicone ở đâu giá rẻ uy tín tại Sài Gòn?; Silicone giá rẻ TP HCM Bán Silicone giá rẻ TP HCM', 'metakeyword Mua Silicone ở đâu giá rẻ uy tín tại Sài Gòn?; Silicone giá rẻ TP HCM Bán Silicone giá rẻ TP HCM', 'metadescription Mua Silicone ở đâu giá rẻ uy tín tại Sài Gòn?; Silicone giá rẻ TP HCM Bán Silicone giá rẻ TP HCM', 5, 5, 1, '2018-04-20 07:16:46', '2018-05-31 09:50:14'),
(6, 'Silicone giá rẻ TP HCM', 'silicone-gia-re-tp-hcm', 'phan-phoi-silicon-ibz7o94rxl61.png', NULL, 'Silicone giá rẻ TP HCM; Bán Silicone giá rẻ TP HCM; Mua Silicone giá rẻ ở đâu?', '<p>Silicone l&agrave; g&igrave;?</p>\r\n\r\n<p>Silicone l&agrave; một polymer tổng hợp l&agrave;m từ silicon, oxygen v&agrave; c&aacute;c nguy&ecirc;n tố kh&aacute;c, thường gặp nhất l&agrave; carbon v&agrave; hydrogen. Silicone thường l&agrave; chất lỏng hoặc chất dẻo tựa cao su, v&agrave; c&oacute; một số ứng dụng hữu ich, v&iacute; dụ như độc t&iacute;nh thấp v&agrave; nhiệt trở cao. N&oacute; cũng l&agrave; chất c&aacute;ch điện tốt.</p>\r\n\r\n<p>Một số sản phẩm keo Silicone phổ biến phải kể đến:</p>\r\n\r\n<p>SILICONE SA - 3353</p>\r\n\r\n<p>Sản phẩm: SILICONE SA - 3353</p>\r\n\r\n<p>Quy c&aacute;ch : 20kg/th&ugrave;ng</p>\r\n\r\n<p>Xuất xứ: Đ&agrave;i Loan</p>\r\n\r\n<p>Bảo quản nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t.<br />\r\nỨNG DỤNG SILICONE SA - 3353</p>\r\n\r\n<p>SA-3353 d&ugrave;ng l&agrave;m khu&ocirc;n cho c&aacute;c sản phẩm cần độ ch&iacute;nh x&aacute;c cao nh&igrave;n thấy chi tiết b&ecirc;n trong như:</p>\r\n\r\n<p>+ sản xuất trang sức</p>\r\n\r\n<p>+ thiết bị điện tử</p>\r\n\r\n<p>+ điện c&ocirc;ng nghiệp&hellip;</p>\r\n\r\n<p>SILICONE RTV-693</p>\r\n\r\n<p>Đ&acirc;y l&agrave; loại silicone vừa c&oacute; độ cứng, vừa c&oacute; độ dẻo tốt, được ứng dụng l&agrave;m khu&ocirc;n cao su d&ugrave;ng để sản xuất đồ trang tr&iacute; v&agrave; h&agrave;ng thủ c&ocirc;ng mỹ nghệ l&agrave;m bằng polyester, epoxy hoặc nhựa xốp PU. N&oacute; cũng th&iacute;ch hợp cho sản xuất nến nghệ thuật v&agrave; thạch cao, cũng như khu&ocirc;n mẫu cho sản xuất đồ nội thất v&agrave; c&aacute;c th&agrave;nh phần điện tử.<br />\r\nNgo&agrave;i ra ch&uacute;ng t&ocirc;i c&ograve;n cung cấp c&aacute;c sản phẩm Silicone kh&aacute;c như:</p>\r\n\r\n<p><br />\r\nSILICONE SA - 3353</p>\r\n\r\n<p>SILICONE RTV&ndash; 626A</p>\r\n\r\n<p>SILICONE RTV&ndash;693</p>\r\n\r\n<p>SILICONE RTV &ndash; 612</p>\r\n\r\n<p>SILICONE RTV &ndash; 828</p>\r\n\r\n<p>SILICONE &ndash; CHẤT T&Aacute;CH KHU&Ocirc;N EM - 60</p>\r\n\r\n<p>KEO SILICONE</p>\r\n\r\n<p>SILICONE RTV 898</p>\r\n\r\n<p>SILICONE RTV 1856&nbsp;</p>\r\n\r\n<p>Với cam kết gi&aacute; tốt nhất thị trường.</p>', 'chú thích Silicone giá rẻ TP HCM', 'metakeyword Silicone giá rẻ TP HCM', 'metadescription Silicone giá rẻ TP HCM', 5, 6, 1, '2018-04-20 07:18:16', '2018-05-31 06:02:27'),
(7, 'Nhà phân phối Silicone tại tp HCM', 'nha-phan-phoi-silicone-tai-tp-hcm', 'phan-phoi-silicon-jt1eqk6agzuw.png', NULL, 'Nhà phân phối Silicone tại tp HCM; Mua Silicone ở đâu giá rẻ uy tín tại Sài Gòn?; Silicone giá rẻ TP HCM', '<p>Hiện nay, tr&ecirc;n thị trường đang xuất hiện một loại keo d&ugrave;ng cho ng&agrave;nh x&acirc;y dựng được chiết xuất từ hợp chất c&oacute; t&ecirc;n l&agrave; Silicone. Nhưng c&oacute; kh&aacute; nhiều người chỉ biết đến t&ecirc;n c&aacute;c loại keo m&agrave; kh&ocirc;ng biết keo Silicone l&agrave; g&igrave;? Ưu, nhược điểm v&agrave; c&aacute;ch sử dụng keo Silicone?</p>\r\n\r\n<p>Trong b&agrave;i viết n&agrave;y ch&uacute;ng t&ocirc;i muốn giới thiệu đến c&aacute;c qu&yacute; kh&aacute;ch h&agrave;ng của m&igrave;nh về những kh&aacute;i niệm tr&ecirc;n để qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; thể hiểu hơn về sản phẩm v&agrave; c&oacute; những lựa chọn sản phẩm tốt nhất cho c&aacute;c c&ocirc;ng tr&igrave;nh của m&igrave;nh.</p>\r\n\r\n<p>Ứng dụng Silicone trong đời sống</p>\r\n\r\n<p>+ Trong lĩnh vực y khoa, silicone c&oacute; mặt trong bộ phận giả cấy gh&eacute;p, ống th&ocirc;ng đường tiểu, k&iacute;nh s&aacute;t tr&ograve;ng, vải băng vết thương v&agrave; nhiều vật kh&aacute;c.</p>\r\n\r\n<p>+ Bạn cũng c&oacute; thể t&igrave;m thấy silicone trong một số vật dụng c&aacute; nh&acirc;n, như dầu gội, kem cạo r&acirc;u, dầu b&ocirc;i trơn c&aacute; nh&acirc;n v&agrave; đồ chơi t&igrave;nh dục.</p>\r\n\r\n<p>Một số Silicone phổ biến phải kể đến:</p>\r\n\r\n<p>SILICONE RVT &ndash; 626A</p>\r\n\r\n<p>Sản phẩm: SILICONE RTV &ndash; 626A</p>\r\n\r\n<p>Quy c&aacute;ch : 25kg/th&ugrave;ng</p>\r\n\r\n<p>Đặc điểm: Lưu chuyển tốt v&agrave; độ nhớt thấp, chịu nhiệt cao, kh&aacute;ng x&eacute; cao</p>', 'chú thích Nhà phân phối Silicone tại tp HCM; Mua Silicone ở đâu giá rẻ uy tín tại Sài Gòn?; Silicone giá rẻ TP HCM', 'metakeyword Nhà phân phối Silicone tại tp HCM; Mua Silicone ở đâu giá rẻ uy tín tại Sài Gòn?; Silicone giá rẻ TP HCM', 'metadescription Nhà phân phối Silicone tại tp HCM; Mua Silicone ở đâu giá rẻ uy tín tại Sài Gòn?; Silicone giá rẻ TP HCM', 7, 7, 1, '2018-04-20 07:19:34', '2018-06-19 00:27:59'),
(8, 'Bán Silicone giá rẻ TP HCM', 'ban-silicone-gia-re-tp-hcm', 'phan-phoi-silicon-5l0ygne8wujm.png', NULL, 'Silicone có cấu trúc hóa học là 1 chuỗi liên kết Si-O-Si-O và các liên kết ngang với các nguyên tử carbon. Các dạng silicone bạn có thể tham khảo đó là: dạnglỏng (fluid), dạng gel, dạng dẻo loại cao su được sáng chế năm 1945, dạng rắn.', '<p>B&aacute;n Silicone gi&aacute; rẻ TP HCM<br />\r\nSilicone l&agrave; g&igrave;?</p>\r\n\r\n<p>Silicone c&oacute; cấu tr&uacute;c h&oacute;a học l&agrave; 1 chuỗi li&ecirc;n kết Si-O-Si-O v&agrave; c&aacute;c li&ecirc;n kết ngang với c&aacute;c nguy&ecirc;n tử carbon. C&aacute;c dạng silicone bạn c&oacute; thể tham khảo đ&oacute; l&agrave;: dạnglỏng (fluid), dạng gel, dạng dẻo loại cao su được s&aacute;ng chế năm 1945, dạng rắn.</p>\r\n\r\n<p>Ứng dụng keo Silicone</p>\r\n\r\n<p>Đ&acirc;y ch&iacute;nh l&agrave; nguy&ecirc;n liệu ch&iacute;nh của c&aacute;c ng&agrave;nh c&ocirc;ng nghiệp như ; linh kiện điện tử, thủy tinh, chế tạo th&eacute;p, vật liệu chất dẻo&hellip;. Trong những ng&agrave;nh c&ocirc;ng nghiệp kh&aacute;c, silicone thường được d&ugrave;ng l&agrave;m chất bịt k&iacute;n cho c&aacute;c b&igrave;nh đựng nước, v&agrave; ống h&agrave;n ch&igrave;.</p>\r\n\r\n<p>Trong điện tử học &ndash; n&oacute; được d&ugrave;ng l&agrave;m lớp &aacute;o c&oacute; thể che chắn c&aacute;c dụng cụ nhạy cảm trước sốc điện v&agrave; những nguy hiểm kh&aacute;c.</p>\r\n\r\n<p>Một số sản phẩm keo Silicone phổ biến phải kể đến:</p>\r\n\r\n<p>Silicone RTV &ndash; 693</p>\r\n\r\n<p>Quy c&aacute;ch : 25kg/th&ugrave;ng</p>\r\n\r\n<p>Xuất xứ: Đ&agrave;i Loan<br />\r\nỨng dụng</p>\r\n\r\n<p>L&agrave;m khu&ocirc;n cao su d&ugrave;ng để sản xuất đồ trang tr&iacute; v&agrave; h&agrave;ng thủ c&ocirc;ng mỹ nghệ l&agrave;m bằng polyester, epoxy hoặc nhựa xốp PU.</p>\r\n\r\n<p>SILICONE RTV - 830</p>\r\n\r\n<p>Sản phẩm: SILICONE RTV &ndash; 830</p>\r\n\r\n<p>Quy c&aacute;ch : 25kg/th&ugrave;ng</p>\r\n\r\n<p>xuất xứ: Đ&agrave;i Loan</p>\r\n\r\n<p>Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t.<br />\r\nỨNG DỤNG SILICONE RTV - 830</p>\r\n\r\n<p>SILICONE RTV &ndash; 830 ứng dụng l&agrave;m khu&ocirc;n cao su trong sản xuất h&agrave;ng thủ c&ocirc;ng mỹ nghệ.</p>\r\n\r\n<p>SILICONE RTV &ndash; 830 th&iacute;ch hợp l&agrave;m khu&ocirc;n mẫu cho sản xuất đồ nội thất v&agrave; c&aacute;c th&agrave;nh phần điện tử.</p>\r\n\r\n<p>Ngo&agrave;i ra ch&uacute;ng t&ocirc;i c&ograve;n cung cấp c&aacute;c sản phẩm Silicone kh&aacute;c như:</p>\r\n\r\n<p><br />\r\nSILICONE SA - 3353</p>\r\n\r\n<p>SILICONE RTV&ndash; 626A</p>\r\n\r\n<p>SILICONE RTV&ndash;693</p>\r\n\r\n<p>SILICONE RTV &ndash; 612</p>\r\n\r\n<p>SILICONE RTV &ndash; 828</p>\r\n\r\n<p>SILICONE &ndash; CHẤT T&Aacute;CH KHU&Ocirc;N EM - 60</p>\r\n\r\n<p>KEO SILICONE</p>\r\n\r\n<p>SILICONE RTV 898</p>\r\n\r\n<p>SILICONE RTV 1856&nbsp;</p>\r\n\r\n<p>Với cam kết gi&aacute; tốt nhất thị trường.</p>', 'chú thích Bán Silicone giá rẻ TP HCM; Mua Silicone giá rẻ ở đâu?; Nhà phân phối Silicone tại tp HCM', 'metakeyword Bán Silicone giá rẻ TP HCM; Mua Silicone giá rẻ ở đâu?; Nhà phân phối Silicone tại tp HCM', 'metadescription Bán Silicone giá rẻ TP HCM; Mua Silicone giá rẻ ở đâu?; Nhà phân phối Silicone tại tp HCM', 5, 8, 1, '2018-04-20 07:21:39', '2018-06-27 18:27:09'),
(9, 'Phụ gia trong sản xuất giò chả', 'phu-gia-trong-san-xuat-gio-cha', 'phu-gia-gio-cha-g60wf72mp9j4.png', NULL, 'Phụ gia trong sản xuất giò chả; Phụ gia trong chế biến giò chả; Cung cấp phụ gia chế biến giò chả', '<p>Gi&ograve; lụa, gi&ograve; chả hay chả lụa l&agrave; t&ecirc;n gọi của m&oacute;n ăn được l&agrave;m từ hai nguy&ecirc;n liệu cơ bản l&agrave; thịt nạc thăn lợn gi&atilde; nhuyễn kết hợp với nước mắm ngon, g&oacute;i trong l&aacute; chuối v&agrave; luộc ch&iacute;n. Gi&ograve; lụa ngon khi khoanh gi&ograve; c&oacute; m&agrave;u trắng ng&agrave; hơi ngả sang m&agrave;u hồng nhạt, bề mặt c&oacute; một v&agrave;i lỗ rỗ, m&ugrave;i thơm, vị ăn ngọt, gi&ograve;n, mịn m&agrave;ng, kh&ocirc;ng kh&ocirc; rắn, kh&ocirc;ng mềm n&aacute;t v&agrave; kh&ocirc;ng bị b&atilde;.</p>\r\n\r\n<p>Một số phụ gia d&ugrave;ng để l&agrave;m gi&ograve; chả bao gồm bột ngọt, đường, TSPP, tinh bột khoai t&acirc;y, carragenan....</p>\r\n\r\n<p>S&agrave;i G&ograve;n Chem l&agrave; nh&agrave; ph&acirc;n phối PHỤ GIA GI&Ograve; CHẢ được nhập khẩu trực tiếp từ c&aacute;c nh&agrave; sản xuất lớn tr&ecirc;n thế giới, cam kết gi&aacute; sản phẩm ch&uacute;ng t&ocirc;i đưa ra cạnh tranh nhất tr&ecirc;n thị trường.</p>\r\n\r\n<p>Một số phụ gia gi&ograve; chả b&aacute;n chạy nhất phải kể đến:</p>\r\n\r\n<p>NISIN</p>\r\n\r\n<p>Nisin do c&aacute;c chủng vi khuẩn lactic trong qu&aacute; tr&igrave;nh l&ecirc;n men sữa. Nisin c&oacute; hoạt t&iacute;nh kh&aacute;ng vi sinh vật, l&agrave; một t&aacute;c nh&acirc;n kh&aacute;ng khuẩn tự nhi&ecirc;n v&agrave; kh&ocirc;ng thể tổng hợp nh&acirc;n tạo.<br />\r\nỨNG DỤNG NISIN</p>\r\n\r\n<p>+ Khi sử dụng Nisin để bảo quản b&uacute;n, thời gian bảo quản k&eacute;o d&agrave;i từ 1 ng&agrave;y (kh&ocirc;ng c&oacute; nisin) l&ecirc;n 2 ng&agrave;y (c&oacute; bổ sung nisin).</p>\r\n\r\n<p>+ Nisin c&ograve;n được sử dụng bảo quản gi&ograve; lụa (chả lụa) v&ocirc; c&ugrave;ng an to&agrave;n.</p>\r\n\r\n<p>ƯU ĐIỂM NISIN</p>\r\n\r\n<p>Cũng như bất kỳ chuỗi axit amin v&agrave; c&aacute;c protein kh&aacute;c, n&oacute; được ph&acirc;n hủy trong qu&aacute; tr&igrave;nh ti&ecirc;u h&oacute;a trong ruột v&agrave; kh&ocirc;ng g&acirc;y ra ảnh hưởng cho sức khỏe.</p>\r\n\r\n<p>Carrageenan</p>\r\n\r\n<p>Quy c&aacute;ch: 25kg/bao.</p>\r\n\r\n<p>Xuất xứ: Philippine; Korea; USA; France...<br />\r\nỨng dụng Carrageenan</p>\r\n\r\n<p>+ Carrageenan được ứng dụng trong c&aacute;c sản phẩm bơ sữa như trứng đ&aacute;nh sữa, b&aacute;nh pudding.</p>\r\n\r\n<p>+ Trong chế biến thực phẩm, Carrageenan c&oacute; c&ocirc;ng dụng ổn định h&oacute;a hệ nhũ tương của hỗn hợp protein v&agrave; chất b&eacute;o trong thịt, tạo cảm gi&aacute;c mềm, dịu của sản phẩm.</p>\r\n\r\n<p>+ Sử dụng thay h&agrave;n the trong sản xuất gi&ograve; lụa (chả lụa).</p>', 'chú thích Phụ gia trong sản xuất giò chả', 'metakeyword Phụ gia trong sản xuất giò chả; Phụ gia trong chế biến giò chả; Cung cấp phụ gia chế biến giò chả', 'metadescription  Phụ gia trong sản xuất giò chả; Phụ gia trong chế biến giò chả; Cung cấp phụ gia chế biến giò chả', 14, 9, 1, '2018-04-20 07:24:32', '2018-06-28 07:39:17'),
(10, 'Phụ gia trong chế biến giò chả', 'phu-gia-trong-che-bien-gio-cha', 'phu-gia-gio-cha-8v5zwcpghqyl.png', NULL, 'Phụ gia trong chế biến giò chả; Cung cấp phụ gia chế biến giò chả; Chuyên cung cấp phụ gia chế biến giò chả', '<p>Gi&ograve; chả, một trong những m&oacute;n ăn quen thuộc v&agrave; được y&ecirc;u th&iacute;ch bởi rất nhiều người. Nguy&ecirc;n liệu l&agrave;m m&oacute;n gi&ograve; chả cũng rất đơn giản nhưng để c&oacute; được miếng gi&ograve; ngon đ&ograve;i hỏi sự lựa chọn cầu kỳ, tinh tế v&agrave; quy tr&igrave;nh thực hiện hết sức b&agrave;i bản từ kh&acirc;u chọn lựa nguy&ecirc;n liệu như thịt lợn tươi, nước mắm phải chọn loại nước mắm thật ngon với độ đạm cao, thơm v&agrave; s&aacute;nh (như nước mắm c&aacute; thu), l&aacute; chuối th&igrave; phải chọn l&aacute; tươi b&aacute;nh tẻ, tốt nhất l&agrave; l&aacute; chuối t&acirc;y hoặc c&oacute; thể sử dụng l&aacute; chuối giả để c&oacute; m&agrave;u sắc bắt mắt. Ngo&agrave;i ra, c&aacute;c phụ gia cũng g&oacute;p phần kh&ocirc;ng k&eacute;m quan trọng để tạo n&ecirc;n 1 khoanh gi&ograve; ngon, m&agrave;u sắc đặc trưng, c&oacute; m&ugrave;i vị thơm ngon, kh&ocirc;ng c&oacute; m&ugrave;i vị lạ.</p>\r\n\r\n<p>Một số PHỤ GIA GI&Ograve; CHẢ b&aacute;n chạy nhất phải kể đến:</p>\r\n\r\n<p>TINH BỘT KHOAI T&Acirc;Y d&ugrave;ng sản xuất b&aacute;nh kẹo, bim bim, chả lụa (gi&ograve; chả)<br />\r\nỨNG DỤNG TINH BỘT KHOAI T&Acirc;Y</p>\r\n\r\n<p>+ Tinh bột khoai t&acirc;y được sử dụng r&ocirc;̣ng rãi trog ch&ecirc;́ bi&ecirc;́n thực ph&acirc;̉m như: súp, thịt h&acirc;̀m, nước s&ocirc;́t...</p>\r\n\r\n<p>+ Sủi cảo, c&aacute; vi&ecirc;n</p>\r\n\r\n<p>+ Chả lụa (gi&ograve; chả)</p>\r\n\r\n<p>SODIUM ACETATE</p>\r\n\r\n<p>Sodium Acetate được điều chế từ giấm nu&ocirc;i với t&ecirc;n thường gọi: Axetate natri; natri acetate; Acetic acid... mang đặc t&iacute;nh kh&aacute;ng khuẩn c&oacute; thể d&ugrave;ng l&agrave;m chất bảo quản thực phẩm.</p>\r\n\r\n<p>C&ocirc;ng thức: CH3COONa</p>\r\n\r\n<p>Ngoại quan : Sodium Acetate ở dạng hạt v&agrave; bột, kh&ocirc;ng m&agrave;u v&agrave; m&ugrave;i.</p>\r\n\r\n<p>Quy c&aacute;ch: 20kg/bao</p>\r\n\r\n<p>Xuất xứ: Canada<br />\r\nỨNG DỤNG SODIUM ACETATE</p>\r\n\r\n<p>+ Sodium Acetate d&ugrave;ng để bảo quản gi&ograve; lụa, chả gi&ograve;, x&uacute;c x&iacute;ch, m&igrave; sợi&hellip; thay thế cho h&agrave;n the.</p>\r\n\r\n<p>+ Sodium Acetate ứng dụng trong bảo quản x&uacute;c x&iacute;ch, b&ograve; vi&ecirc;n, c&aacute; vi&ecirc;n, heo vi&ecirc;n, g&agrave; vi&ecirc;n.</p>', 'chú thích Phụ gia trong chế biến giò chả; Cung cấp phụ gia chế biến giò chả; Chuyên cung cấp phụ gia chế biến giò chả', 'metakeyword Phụ gia trong chế biến giò chả; Cung cấp phụ gia chế biến giò chả; Chuyên cung cấp phụ gia chế biến giò chả', 'metadescription Phụ gia trong chế biến giò chả; Cung cấp phụ gia chế biến giò chả; Chuyên cung cấp phụ gia chế biến giò chả', 13, 10, 1, '2018-04-20 07:26:28', '2018-06-28 02:26:56'),
(11, 'Cung cấp phụ gia chế biến giò chả', 'cung-cap-phu-gia-che-bien-gio-cha', 'phu-gia-gio-cha-z2s5agb7oyt3.png', NULL, 'Cung cấp phụ gia chế biến giò chả; Chuyên cung cấp phụ gia chế biến giò chả; Nhà phân phối phụ gia chế biến giò chả', '<p>Gi&ograve; lụa, gi&ograve; chả hay chả lụa l&agrave; t&ecirc;n gọi của m&oacute;n ăn được l&agrave;m từ hai nguy&ecirc;n liệu cơ bản l&agrave; thịt nạc thăn lợn gi&atilde; nhuyễn kết hợp với nước mắm ngon, g&oacute;i trong l&aacute; chuối v&agrave; luộc ch&iacute;n. Gi&ograve; chả thịnh h&agrave;nh trong ẩm thực Việt Nam từ Bắc xuống Nam như một m&oacute;n ăn vừa phổ th&ocirc;ng vừa sang trọng, gi&ograve; chả gi&ograve;n v&agrave; thơm đậm m&ugrave;i thịt tươi luộc cộng với m&ugrave;i đặc trưng của l&aacute; chuối tươi được luộc ch&iacute;n.</p>\r\n\r\n<p>S&agrave;i G&ograve;n Chem tự h&agrave;o l&agrave; nh&agrave; ph&acirc;n phối PHỤ GIA GI&Ograve; CHẢ được nhập khẩu trực tiếp từ c&aacute;c nh&agrave; sản xuất lớn tr&ecirc;n thế giới, cam kết gi&aacute; sản phẩm ch&uacute;ng t&ocirc;i đưa ra cạnh tranh nhất tr&ecirc;n thị trường. Ch&uacute;ng t&ocirc;i c&oacute; một đội ngũ nh&acirc;n vi&ecirc;n kinh doanh cũng như chuy&ecirc;n vi&ecirc;n tư vấn tận t&igrave;nh với nhiều năm kinh nghiệm trong lĩnh vực h&oacute;a chất, đảm bảo sẽ l&agrave;m h&agrave;i l&ograve;ng qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p>Một số phụ gia gi&ograve; chả b&aacute;n chạy nhất phải kể đến:</p>\r\n\r\n<p>Carrageenan ứng dụng bảo quản thực phẩm thay thế h&agrave;n the hiệu quả.<br />\r\nỨNG DỤNG CARRAGEENAN</p>\r\n\r\n<p>Carrageenan l&agrave; chất l&agrave;nh t&iacute;nh, c&oacute; thể sử dụng l&agrave;m phụ gia chế biến, bảo quản thực phẩm thay thế h&agrave;n the. Carrageenan kh&ocirc;ng những c&oacute; hiệu ứng tốt hơn h&agrave;n the m&agrave; c&ograve;n c&oacute; ưu điểm l&agrave; kh&ocirc;ng độc hại đối với người.</p>\r\n\r\n<p>Sodium Erythorbate (E 316) gi&uacute;p bảo quản v&agrave; ổn định hương vị cho thịt nguội, hot dog, nem</p>\r\n\r\n<p>T&ecirc;n gọi kh&aacute;c: Muối Natri của Acid Isoascorbic, Sodium lsovitamin C, Sodium D-Isoascorbate</p>\r\n\r\n<p>C&ocirc;ng thức h&oacute;a học: C6H7NaO6</p>\r\n\r\n<p>Sodium Erythorbate tan dễ d&agrave;ng trong nước, 16g/100ml ở nhiệt độ thường, kh&oacute; tan trong ethanol, gi&aacute; trị pH của dung dịch 2% l&agrave; 6.5-8.</p>\r\n\r\n<p>Điểm n&oacute;ng chảy Sodium Erythorbate l&agrave; hơn 200 độ C<br />\r\nỨng dụng Sodium Erythorbate (E 316)</p>\r\n\r\n<p>+ Sodium erythorbate (E316) chủ yếu được sử dụng trong ng&agrave;nh c&ocirc;ng nghiệp thực phẩm, sử dụng như l&agrave; t&aacute;c nh&acirc;n chống oxy h&oacute;a, l&agrave; chất bảo quản v&agrave; giữ m&agrave;u sắc.</p>\r\n\r\n<p>+ Sodium erythorbate (E316) cũng thường được d&ugrave;ng trong thịt nguội, hot dog, nem, gi&ograve; chả&hellip;Đ&acirc;y l&agrave; một chất chống oxy h&oacute;a gi&uacute;p ổn định hương vị cũng như gi&uacute;p v&agrave;o việc giữ cho m&agrave;u hồng thắm của sản phẩm chậm phai mờ.</p>', 'chú thích Cung cấp phụ gia chế biến giò chả; Chuyên cung cấp phụ gia chế biến giò chả; Nhà phân phối phụ gia chế biến giò chả', 'metakeyword Cung cấp phụ gia chế biến giò chả; Chuyên cung cấp phụ gia chế biến giò chả; Nhà phân phối phụ gia chế biến giò chả', 'metadescription Cung cấp phụ gia chế biến giò chả; Chuyên cung cấp phụ gia chế biến giò chả; Nhà phân phối phụ gia chế biến giò chả', 16, 11, 1, '2018-04-20 07:27:57', '2018-06-28 12:22:31'),
(12, 'Chuyên cung cấp phụ gia chế biến giò chả', 'chuyen-cung-cap-phu-gia-che-bien-gio-cha', 'phu-gia-gio-cha-cpkmq0ilybsd.png', NULL, 'Chuyên cung cấp phụ gia chế biến giò chả; Phụ gia trong sản xuất giò chả Phụ gia trong chế biến giò chả', '<p>Gi&ograve; chả, một m&oacute;n ăn v&ocirc; c&ugrave;ng quen thuộc trong ẩm thực của người Việt Nam. Một c&acirc;y gi&ograve; chất lượng phải đảm bảo: Khi cắt ngang th&acirc;n c&acirc;y gi&ograve;, l&aacute;t cắt phẳng v&agrave; mịn, gi&ograve; c&oacute; kết cấu tốt, c&oacute; những lỗ nhỏ; M&agrave;u sắc đặc trưng; C&oacute; m&ugrave;i vị thơm ngon, kh&ocirc;ng c&oacute; m&ugrave;i vị lạ. Để l&agrave;m được điều đ&oacute;, ngo&agrave;i nguy&ecirc;n liệu ch&iacute;nh l&agrave; thịt heo, ch&uacute;ng ta c&ograve;n phải sử dụng c&aacute;c chất phụ gia để l&agrave;m tăng hương vị, m&agrave;u sắc của sản phẩm.</p>\r\n\r\n<p>S&agrave;i G&ograve;n Chem tự h&agrave;o l&agrave; c&ocirc;ng ty ph&acirc;n phối PHỤ GIA GI&Ograve; CHẢ chuy&ecirc;n nghiệp v&agrave; uy t&iacute;n to&agrave;n th&agrave;nh phố Hồ Ch&iacute; Minh. An to&agrave;n vệ sinh thực phẩm, cải thiện dinh dưỡng v&agrave; sức khỏe con người l&agrave; những ti&ecirc;u ch&iacute; được S&agrave;i G&ograve;n Chem đặc biệt ch&uacute; trọng trong nh&oacute;m sản phẩm phụ gia thực phẩm n&agrave;y.</p>\r\n\r\n<p>Một số phụ gia gi&ograve; chả b&aacute;n chạy nhất phải kể đến:</p>\r\n\r\n<p>Bột l&ograve;ng trắng trứng g&agrave; d&ugrave;ng l&agrave;m sốt mayonaire, chả gi&ograve;, chả lụa, chả quế<br />\r\nỨng dụng bột l&ograve;ng trắng trứng g&agrave;</p>\r\n\r\n<p>+ Bột l&ograve;ng trắng trứng g&agrave; được d&ugrave;ng l&agrave;m sốt mayonaire, chả gi&ograve;, chả lụa, chả quế...</p>\r\n\r\n<p>+ Những sản phẩm c&aacute; (b&aacute;nh l&agrave;m từ c&aacute;, chả c&aacute; surimi và c&aacute;c sản ph&acirc;̉m từ chả&hellip;.)</p>\r\n\r\n<p>+ C&aacute;c sản ph&acirc;̉m từ vi&ecirc;̣c ph&ocirc;́i tr&ocirc;̣n &nbsp;khoai t&acirc;y cần độ kết d&iacute;nh (đ&ocirc;̣ dai) &nbsp;giữ nước tốt.</p>\r\n\r\n<p>TSPP l&agrave;m chất độn trong sản xuất tương ớt, tương c&agrave;, chả lụa, x&uacute;c x&iacute;ch, thịt vi&ecirc;n<br />\r\n+ TSPP d&ugrave;ng l&agrave; chất độn trong thực phẩm, c&oacute; t&aacute;c dụng l&agrave;m tăng khối của thực phẩm để bổ sung cho m&agrave;u tự nhi&ecirc;n của sản phẩm bị mất trong qu&aacute; tr&igrave;nh chế biến hay l&agrave;m cho thực phẩm tr&ocirc;ng bắt mắt hơn.</p>\r\n\r\n<p>+ TSPP được sử dụng l&agrave;m chất li&ecirc;n kết, chất độn trong sản xuất một số sản phẩm thực phẩm: Sốt Mayonnaise, tương ớt, tương c&agrave;, chả lụa, x&uacute;c x&iacute;ch, thịt vi&ecirc;n&hellip;&nbsp;</p>', 'chú thích Chuyên cung cấp phụ gia chế biến giò chả; Phụ gia trong sản xuất giò chả Phụ gia trong chế biến giò chả', 'metakeyword Chuyên cung cấp phụ gia chế biến giò chả; Phụ gia trong sản xuất giò chả Phụ gia trong chế biến giò chả', 'metadescription Chuyên cung cấp phụ gia chế biến giò chả; Phụ gia trong sản xuất giò chả Phụ gia trong chế biến giò chả', 17, 12, 1, '2018-04-20 07:29:12', '2018-06-27 06:17:23');

-- --------------------------------------------------------

--
-- Table structure for table `article_category`
--

DROP TABLE IF EXISTS `article_category`;
CREATE TABLE `article_category` (
  `id` bigint(20) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `article_category`
--

INSERT INTO `article_category` (`id`, `article_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 4, '2018-04-20 07:04:49', '2018-04-20 07:04:49'),
(2, 2, 4, '2018-04-20 07:11:45', '2018-04-20 07:11:45'),
(3, 3, 4, '2018-04-20 07:13:15', '2018-04-20 07:13:15'),
(4, 4, 4, '2018-04-20 07:15:19', '2018-04-20 07:15:19'),
(5, 5, 4, '2018-04-20 07:16:46', '2018-04-20 07:16:46'),
(6, 6, 4, '2018-04-20 07:18:16', '2018-04-20 07:18:16'),
(7, 7, 4, '2018-04-20 07:19:34', '2018-04-20 07:19:34'),
(8, 8, 4, '2018-04-20 07:21:39', '2018-04-20 07:21:39'),
(9, 9, 4, '2018-04-20 07:24:32', '2018-04-20 07:24:32'),
(10, 10, 4, '2018-04-20 07:26:28', '2018-04-20 07:26:28'),
(11, 11, 4, '2018-04-20 07:27:57', '2018-04-20 07:27:57'),
(12, 12, 4, '2018-04-20 07:29:12', '2018-04-20 07:29:12');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` bigint(20) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `caption` text COLLATE utf8_unicode_ci,
  `alt` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_url` text COLLATE utf8_unicode_ci,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `category_id`, `caption`, `alt`, `image`, `page_url`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'Khi trẻ cười', 'khi trẻ cười 2', 'phugiathp-1-kdl1vr4ctg2f.jpg', 'cloudbeauty.vn', 1, 1, '2017-12-16 05:04:04', '2018-05-23 02:44:06'),
(14, 1, 'test 1', 'test 1', 'phugiathp-2-86pzj7sx0qr3.jpg', 'http://magiwan.vn/', 2, 1, '2018-01-18 07:23:11', '2018-05-26 09:57:39'),
(50, 1, 'Banner 3', 'banner 3', 'phugiathp-3-keczgv1rlt9a.jpg', 'https://vidoco.vn/', 3, 1, '2018-04-18 10:35:58', '2018-05-23 02:44:36'),
(51, 1, 'Banner 4', 'banner 4', 'phugiathp-4-x2i1r8l59yj4.jpg', 'https://vidoco.vn/', 4, 1, '2018-04-18 10:36:16', '2018-05-23 02:44:52'),
(52, 16, 'Quảng cáo 1', 'quảng cáo 1', 'banner-6-k20ei4xml13w.jpg', 'https://vidoco.vn/', 1, 1, '2018-04-20 08:59:28', '2018-05-02 01:46:54'),
(54, 1, 'Banner 5', 'banner 5', 'phugiathp-5-ngkzp5o4lv09.jpg', 'http://chem.dienkim', 5, 1, '2018-05-02 01:57:26', '2018-05-23 02:45:06'),
(55, 16, 'Gia vị nước mắm', 'Gia vị nước mắm', 'img20170331160530-rx1bs6iyon8q.jpg', 'http://phugiathp.com/gia-vi-nuoc-tuong-nuoc-mam.html', 2, 1, '2018-05-26 08:15:32', '2018-05-26 08:15:32');

-- --------------------------------------------------------

--
-- Table structure for table `category_article`
--

DROP TABLE IF EXISTS `category_article`;
CREATE TABLE `category_article` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_article`
--

INSERT INTO `category_article` (`id`, `fullname`, `meta_keyword`, `meta_description`, `alias`, `parent_id`, `image`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Tin tức thị trường', 'metakeyword Tin tức', 'metadescription Tin tức', 'tin-tuc-thi-truong', 0, NULL, 1, 1, '2017-12-18 02:17:10', '2018-05-26 09:55:56');

-- --------------------------------------------------------

--
-- Table structure for table `category_banner`
--

DROP TABLE IF EXISTS `category_banner`;
CREATE TABLE `category_banner` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_banner`
--

INSERT INTO `category_banner` (`id`, `fullname`, `theme_location`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Slideshow', 'slideshow', 1, 1, '2017-12-16 05:02:58', '2018-05-26 09:56:43'),
(16, 'Quảng cáo', 'advertising', 1, 1, '2018-04-20 08:55:19', '2018-04-20 08:55:19');

-- --------------------------------------------------------

--
-- Table structure for table `category_param`
--

DROP TABLE IF EXISTS `category_param`;
CREATE TABLE `category_param` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `param_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_param`
--

INSERT INTO `category_param` (`id`, `fullname`, `alias`, `parent_id`, `param_value`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Xuất xứ', 'xuat-xu', 0, '', 1, 1, '2018-02-01 20:40:54', '2018-02-02 01:34:27'),
(5, 'Nhật', 'nhat', 1, '', 1, 1, '2018-02-01 20:46:48', '2018-02-02 01:40:43'),
(9, 'Thương hiệu', 'thuong-hieu', 0, '', 2, 1, '2018-02-02 01:38:44', '2018-02-02 01:38:48'),
(10, 'Mỹ', 'my', 1, '', 2, 1, '2018-02-02 01:39:59', '2018-02-02 01:39:59'),
(11, 'Hàn Quốc', 'han-quoc', 1, '', 3, 1, '2018-02-02 01:40:14', '2018-02-02 01:40:14'),
(12, 'Trung Quốc', 'trung-quoc', 1, '', 4, 1, '2018-02-02 01:40:27', '2018-02-02 01:40:30'),
(13, 'Nike', 'nike', 9, '', 19, 1, '2018-02-02 01:41:04', '2018-03-03 03:44:46'),
(14, 'Adidas', 'adidas', 9, '', 12, 1, '2018-02-02 01:41:32', '2018-03-03 03:44:46'),
(15, 'Jordan', 'jordan', 9, '', 14, 1, '2018-02-02 01:41:45', '2018-03-03 03:44:46'),
(16, 'Converse', 'converse', 9, '', 15, 1, '2018-02-02 01:42:53', '2018-03-03 03:44:46'),
(17, 'Reebok', 'reebok', 9, '', 16, 1, '2018-02-02 01:43:05', '2018-03-03 03:44:46'),
(18, 'Vans', 'vans', 9, '', 17, 1, '2018-02-02 01:43:17', '2018-03-03 03:44:46'),
(19, 'Under Armour', 'under-armour', 9, '', 18, 1, '2018-02-02 01:43:26', '2018-03-03 03:44:46'),
(20, 'Puma', 'puma', 9, '', 5, 1, '2018-02-02 01:43:34', '2018-03-03 03:44:46'),
(21, 'New Balance', 'new-balance', 9, '', 13, 1, '2018-02-02 01:43:49', '2018-03-03 03:44:46'),
(22, 'Đơn vị', 'don-vi', 0, '', 3, 1, '2018-02-02 01:44:45', '2018-02-02 01:45:02'),
(23, 'Chiếc', 'chiec', 22, '', 1, 1, '2018-02-02 01:45:15', '2018-02-02 01:45:15'),
(24, 'Bịch', 'bich', 22, '', 1, 1, '2018-02-02 01:45:25', '2018-02-02 01:45:25'),
(25, 'Lọ', 'lo', 22, '', 1, 1, '2018-02-02 01:45:34', '2018-02-02 01:45:34'),
(26, 'Lô hàng', 'lo-hang', 22, '', 1, 1, '2018-02-02 01:46:20', '2018-02-02 01:46:20'),
(27, 'Màu', 'mau', 0, '', 4, 1, '2018-02-02 01:47:29', '2018-02-02 01:47:29'),
(28, 'Xanh lá cây', 'xanh-la-cay', 27, '#00c60e', 5, 1, '2018-02-02 01:48:01', '2018-02-02 01:51:22'),
(29, 'Đỏ', 'do', 27, '#c60000', 4, 1, '2018-02-02 01:48:22', '2018-02-02 01:51:22'),
(30, 'Tím', 'tim', 27, '#8c00c6', 3, 1, '2018-02-02 01:48:45', '2018-02-02 01:51:22'),
(31, 'Vàng', 'vang', 27, '#e6e900', 2, 1, '2018-02-02 01:49:17', '2018-02-02 01:51:22'),
(32, 'Hồng', 'hong', 27, '#ff00e4', 1, 1, '2018-02-02 01:49:49', '2018-02-02 01:51:22'),
(33, 'Bạc', 'bac', 27, '#e8d65d', 6, 1, '2018-02-02 01:51:00', '2018-02-02 01:51:22'),
(34, 'Kích thước', 'kich-thuoc', 0, '1', 5, 1, '2018-02-02 04:24:15', '2018-02-02 04:24:23'),
(35, 'S', 's', 34, '', 1, 1, '2018-02-02 04:24:40', '2018-02-02 04:24:40'),
(36, 'M', 'm', 34, '', 2, 1, '2018-02-02 04:24:54', '2018-02-02 04:25:48'),
(37, 'L', 'l', 34, '', 3, 1, '2018-02-02 04:25:02', '2018-02-02 04:25:48'),
(38, 'XL', 'xl', 34, '', 4, 1, '2018-02-02 04:25:11', '2018-02-02 04:25:48'),
(39, 'XS', 'xs', 34, '', 5, 1, '2018-02-02 04:25:21', '2018-02-02 04:25:48'),
(40, 'REN', 'ren', 9, '', 7, 1, '2018-02-03 04:15:08', '2018-03-03 03:44:46'),
(41, 'NOSBYN', 'nosbyn', 9, '', 8, 1, '2018-02-03 04:15:24', '2018-03-03 03:44:46'),
(42, 'THE BLUE T-SHIRT', 'the-blue-t-shirt', 9, '', 9, 1, '2018-02-03 04:15:38', '2018-03-03 03:44:46'),
(43, 'COCOSIN', 'cocosin', 9, '', 1, 1, '2018-02-03 04:15:53', '2018-02-03 04:15:53'),
(44, 'WEPHOBIA', 'wephobia', 9, '', 2, 1, '2018-02-03 04:16:05', '2018-03-03 03:44:46'),
(45, 'MAGONN', 'magonn', 9, '', 4, 1, '2018-02-03 04:16:21', '2018-03-03 03:44:46'),
(46, 'LIBE', 'libe', 9, '', 6, 1, '2018-02-03 04:16:33', '2018-03-03 03:44:46'),
(47, 'Chất liệu', 'chat-lieu', 0, '', 6, 1, '2018-02-03 11:34:21', '2018-02-03 11:34:29'),
(48, 'Thun', 'thun', 47, '', 2, 1, '2018-02-03 11:34:43', '2018-02-03 11:35:29'),
(49, 'Vải', 'vai', 47, '', 1, 1, '2018-02-03 11:34:53', '2018-02-03 11:35:29'),
(50, 'Nhà thiết kế', 'nha-thiet-ke', 0, '', 7, 1, '2018-02-03 11:36:34', '2018-02-03 11:36:34'),
(51, 'Clara Fashion', 'clara-fashion', 50, '', 1, 1, '2018-02-03 11:36:54', '2018-02-03 11:36:54'),
(52, 'Tình trạng', 'tinh-trang', 0, '', 7, 1, '2018-02-27 03:33:32', '2018-02-27 03:33:46'),
(53, 'Còn hàng', 'con-hang', 52, '1', 1, 1, '2018-02-27 03:34:09', '2018-03-01 03:15:16'),
(54, 'Hết hàng', 'het-hang', 52, '0', 2, 1, '2018-02-27 03:34:29', '2018-03-01 03:15:25'),
(55, 'Bảo hành', 'bao-hanh', 0, '', 8, 1, '2018-03-01 03:21:37', '2018-03-01 03:21:44'),
(56, '1 tháng', '1-thang', 55, '', 1, 1, '2018-03-01 03:23:13', '2018-03-01 03:23:13'),
(57, '2 tháng', '2-thang', 55, '', 2, 1, '2018-03-01 03:23:23', '2018-03-01 03:23:23'),
(58, '3 tháng', '3-thang', 55, '', 3, 1, '2018-03-01 03:23:31', '2018-03-01 03:23:31'),
(59, '4 tháng', '4-thang', 55, '', 4, 1, '2018-03-01 03:23:38', '2018-03-01 03:23:38'),
(60, '5 tháng', '5-thang', 55, '', 5, 1, '2018-03-01 03:23:50', '2018-03-01 03:23:50'),
(61, '6 tháng', '6-thang', 55, '', 6, 1, '2018-03-01 03:24:00', '2018-03-01 03:24:00'),
(62, '7 tháng', '7-thang', 55, '', 7, 1, '2018-03-01 03:24:09', '2018-03-01 03:24:09'),
(63, 'Việt Nam', 'viet-nam', 1, '', 5, 1, '2018-03-02 18:28:20', '2018-03-02 18:28:20'),
(64, 'Công trí', 'cong-tri', 50, '', 2, 1, '2018-03-03 02:31:01', '2018-03-03 02:31:01'),
(65, 'Đỗ Mạnh Cường', 'do-manh-cuong', 50, '', 3, 1, '2018-03-03 02:31:26', '2018-03-03 02:31:26'),
(66, 'Lý Quý Khánh', 'ly-quy-khanh', 50, '', 4, 1, '2018-03-03 02:31:44', '2018-03-03 02:31:44'),
(67, 'Cotton', 'cotton', 47, '', 3, 1, '2018-03-03 02:32:09', '2018-03-03 02:32:09'),
(68, 'Lenovo', 'lenovo', 9, '', 10, 1, '2018-03-03 03:43:53', '2018-03-03 03:44:46'),
(69, 'HP', 'hp', 9, '', 11, 1, '2018-03-03 03:44:04', '2018-03-03 03:44:46'),
(70, 'Acer', 'acer', 9, '', 3, 1, '2018-03-03 03:44:12', '2018-03-03 03:44:46'),
(71, 'Asus', 'asus', 9, '', 20, 1, '2018-03-03 03:46:39', '2018-03-03 03:46:55');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

DROP TABLE IF EXISTS `category_product`;
CREATE TABLE `category_product` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `alias` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `fullname`, `meta_keyword`, `meta_description`, `alias`, `image`, `status`, `parent_id`, `sort_order`, `created_at`, `updated_at`) VALUES
(18, 'Gia vị nước tương nước mắm', 'metakeyword Hương liệu thực phẩm', 'metadescription Hương liệu thực phẩm', 'gia-vi-nuoc-tuong-nuoc-mam', NULL, 1, 0, 2, '2018-04-19 02:10:14', '2018-05-26 09:58:14'),
(19, 'Chế biến thạch rau câu', 'metakeyword Màu thực phẩm', 'metadescription Màu thực phẩm', 'che-bien-thach-rau-cau', NULL, 1, 0, 5, '2018-04-19 02:11:15', '2018-05-11 14:54:28'),
(20, 'Trà, cà phê, ca cao', 'metakeyword Chất bảo quản', 'metadescription Chất bảo quản', 'tra-ca-phe-ca-cao', NULL, 1, 0, 7, '2018-04-19 02:11:37', '2018-05-11 14:54:28'),
(21, 'Tinh bột- tinh bột biến tính', 'metakeyword Chất tạo ngọt', 'metadescription Chất tạo ngọt', 'tinh-bot-tinh-bot-bien-tinh', NULL, 1, 0, 9, '2018-04-19 02:12:06', '2018-05-11 14:54:28'),
(22, 'Thực phẩm chay', 'metakeyword Chất điều vị', 'metadescription Chất điều vị', 'thuc-pham-chay', NULL, 1, 0, 10, '2018-04-19 02:12:29', '2018-05-11 14:54:28'),
(23, 'Nguyên liệu trà sữa', 'metakeyword Chất chống oxy hóa', 'metadescription Chất chống oxy hóa', 'nguyen-lieu-tra-sua', NULL, 1, 0, 11, '2018-04-19 02:12:58', '2018-05-11 14:54:28'),
(24, 'Máy móc thiết bị- bao bì thực phẩm', 'metakeyword Chất tạo xốp', 'metadescription Chất tạo xốp', 'may-moc-thiet-bi-bao-bi-thuc-pham', NULL, 1, 0, 12, '2018-04-19 02:13:22', '2018-05-11 14:54:28'),
(36, 'Mì ăn liền - Bún - Phở', 'metakeyword Hương mặn', 'metadescription Hương mặn', 'mi-an-lien-bun-pho', NULL, 1, 0, 3, '2018-04-19 02:39:56', '2018-05-11 14:54:28'),
(37, 'Chế biến kem', 'metakeyword Hương ngọt', 'metadescription Hương ngọt', 'che-bien-kem', NULL, 1, 0, 4, '2018-04-19 02:40:21', '2018-05-11 14:54:28'),
(38, 'Chế biến thịt cá', 'metakeyword Chế biến thịt cá', 'metadescription Chế biến thịt cá', 'che-bien-thit-ca', NULL, 1, 0, 1, '2018-04-19 02:41:22', '2018-05-11 14:36:38'),
(41, 'Nước giải khát', 'metakeyword Nước giải khát', 'metadescription Nước giải khát', 'nuoc-giai-khat', NULL, 1, 0, 8, '2018-04-19 02:43:01', '2018-05-11 14:54:28'),
(46, 'Bánh kẹo', 'metakeyword Bánh kẹo', 'metadescription Bánh kẹo', 'banh-keo', NULL, 1, 0, 6, '2018-04-19 02:48:18', '2018-05-11 14:54:28');

-- --------------------------------------------------------

--
-- Table structure for table `category_video`
--

DROP TABLE IF EXISTS `category_video`;
CREATE TABLE `category_video` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_video`
--

INSERT INTO `category_video` (`id`, `fullname`, `meta_keyword`, `meta_description`, `alias`, `parent_id`, `image`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Video', 'metakeyword video', 'metadescription video', 'video', NULL, 'thuvienhinh-1.png', 1, 1, '2018-01-09 10:03:48', '2018-01-09 11:08:05');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
CREATE TABLE `district` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `fullname`, `alias`, `province_id`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tân Bình', 'tan-binh', 24, 3, 1, '2018-02-26 03:03:50', '2018-02-26 03:23:39'),
(2, 'Phú Nhuận', 'phu-nhuan', 24, 4, 1, '2018-02-26 03:19:32', '2018-02-26 03:23:39'),
(3, 'Quận 1', 'quan-1', 24, 1, 1, '2018-02-26 03:19:56', '2018-02-26 03:21:12'),
(4, 'Quận 2', 'quan-2', 24, 2, 1, '2018-02-26 03:20:06', '2018-02-26 03:26:09'),
(5, 'Quận 2', 'quan-2', 36, 6, 1, '2018-02-26 03:23:23', '2018-02-26 03:25:07'),
(6, 'Quận 1', 'quan-1', 36, 5, 1, '2018-02-26 03:24:19', '2018-02-26 03:25:00'),
(7, 'Tân Bình', 'tan-binh', 36, 7, 1, '2018-02-26 03:24:47', '2018-02-26 03:25:07'),
(8, 'Phú Nhuận', 'phu-nhuan', 36, 8, 1, '2018-02-26 03:25:52', '2018-02-26 03:25:52');

-- --------------------------------------------------------

--
-- Table structure for table `group_member`
--

DROP TABLE IF EXISTS `group_member`;
CREATE TABLE `group_member` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `group_member`
--

INSERT INTO `group_member` (`id`, `fullname`, `alias`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', 1, '2016-12-17 05:05:18', '2018-05-26 10:02:19'),
(2, 'Bài viết', 'bai-viet', 2, '2016-12-17 05:05:41', '2018-01-26 04:49:29'),
(3, 'Thành viên vip', 'thanh-vien-vip', 3, '2018-01-26 04:06:49', '2018-01-26 04:49:35'),
(4, 'Thành viên thường', 'thanh-vien-thuong', 4, '2018-01-26 04:08:16', '2018-01-26 04:49:49');

-- --------------------------------------------------------

--
-- Table structure for table `group_privilege`
--

DROP TABLE IF EXISTS `group_privilege`;
CREATE TABLE `group_privilege` (
  `id` int(11) NOT NULL,
  `group_member_id` int(11) NOT NULL,
  `privilege_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `group_privilege`
--

INSERT INTO `group_privilege` (`id`, `group_member_id`, `privilege_id`, `created_at`, `updated_at`) VALUES
(3040, 2, 1, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3041, 2, 2, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3042, 2, 3, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3043, 2, 4, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3044, 2, 5, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3045, 2, 16, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3046, 2, 17, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3047, 2, 33, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3048, 2, 49, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3049, 2, 50, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3050, 2, 55, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3051, 2, 56, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3052, 2, 57, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3053, 2, 58, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3054, 2, 59, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3055, 2, 60, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3056, 2, 61, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3057, 2, 62, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3058, 2, 63, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3059, 2, 67, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3060, 2, 68, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3061, 2, 79, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3062, 2, 80, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3063, 2, 85, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3064, 2, 86, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3065, 2, 103, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3066, 2, 104, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3067, 2, 105, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3068, 2, 106, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3069, 2, 107, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3070, 2, 108, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3071, 2, 109, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3072, 2, 110, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3073, 2, 111, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3074, 2, 112, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3075, 2, 113, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3076, 2, 114, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3077, 2, 115, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3078, 2, 116, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3079, 2, 117, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3080, 2, 118, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3081, 2, 119, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3082, 2, 120, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3083, 2, 121, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3084, 2, 122, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3085, 2, 123, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3086, 2, 124, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3087, 2, 125, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3088, 2, 126, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3089, 2, 127, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3090, 2, 128, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3091, 2, 129, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3092, 2, 130, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3093, 2, 131, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3094, 2, 132, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3095, 2, 133, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3096, 2, 134, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3097, 2, 135, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3098, 2, 136, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3099, 2, 137, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3100, 2, 138, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3101, 2, 139, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3102, 2, 140, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3103, 2, 141, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3104, 2, 142, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3105, 2, 143, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3106, 2, 144, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3180, 3, 0, '2018-01-26 04:06:59', '2018-01-26 04:06:59'),
(3641, 1, 1, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3642, 1, 2, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3643, 1, 3, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3644, 1, 4, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3645, 1, 5, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3646, 1, 16, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3647, 1, 17, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3648, 1, 18, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3649, 1, 19, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3650, 1, 24, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3651, 1, 25, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3652, 1, 33, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3653, 1, 43, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3654, 1, 44, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3655, 1, 49, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3656, 1, 50, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3657, 1, 55, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3658, 1, 56, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3659, 1, 57, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3660, 1, 58, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3661, 1, 59, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3662, 1, 60, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3663, 1, 61, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3664, 1, 62, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3665, 1, 63, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3666, 1, 67, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3667, 1, 68, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3668, 1, 79, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3669, 1, 80, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3670, 1, 85, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3671, 1, 86, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3672, 1, 103, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3673, 1, 104, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3674, 1, 105, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3675, 1, 106, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3676, 1, 107, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3677, 1, 108, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3678, 1, 109, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3679, 1, 110, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3680, 1, 111, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3681, 1, 112, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3682, 1, 113, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3683, 1, 114, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3684, 1, 115, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3685, 1, 116, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3686, 1, 117, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3687, 1, 118, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3688, 1, 119, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3689, 1, 120, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3690, 1, 121, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3691, 1, 122, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3692, 1, 123, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3693, 1, 124, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3694, 1, 125, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3695, 1, 126, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3696, 1, 127, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3697, 1, 128, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3698, 1, 129, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3699, 1, 130, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3700, 1, 131, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3701, 1, 132, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3702, 1, 133, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3703, 1, 134, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3704, 1, 135, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3705, 1, 136, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3706, 1, 137, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3707, 1, 138, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3708, 1, 139, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3709, 1, 140, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3710, 1, 141, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3711, 1, 142, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3712, 1, 143, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3713, 1, 144, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3714, 1, 145, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3715, 1, 146, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3716, 1, 147, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3717, 1, 148, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3718, 1, 149, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3719, 1, 150, '2018-02-01 20:44:57', '2018-02-01 20:44:57');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `quantity` int(11) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `code`, `email`, `fullname`, `address`, `phone`, `note`, `quantity`, `total_price`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, '892456137', 'lactg@dienkim.com', 'Trần Gia Lạc', '09 Võ Văn Tần', '0988123567', 'tôi muốn mua 2 sản phẩm này', 5, 1950000, 0, 1, '2018-04-21 04:11:02', '2018-05-22 02:22:40'),
(2, '385672914', 'hoantv@dienkim.com', 'Trần Văn Hoan', '89 Lê Văn Tám', '0988788123', 'Tôi muốn mua 2 sản phẩm này', 5, 1350000, 0, 1, '2018-04-21 04:14:56', '2018-04-21 04:14:56'),
(3, '398672415', 'tramtt@dienkim.com', 'Trần Thị Trâm', '90 Nguyễn Kiệm', '0977152782', 'Tôi muốn mua 2 sản phẩm này . Giao nhanh nha', 5, 1950000, 1, 1, '2018-05-26 04:43:09', '2018-05-26 09:59:50'),
(4, '532716948', 'lualt@dienkim.com', 'Lê Thị Lụa', '86 Lý Thường Kiệt', '0988152899', 'Tôi thích 2 sản phẩm này . Liên hệ lại với tôi nhe', 8, 3150000, 0, 1, '2018-05-26 04:45:53', '2018-05-26 04:45:53'),
(5, '352971684', 'hungtq@gmail.com', 'Tang Quoc Hung', '162 Le Trung Dinh', '0971312877', 'mau vang, giao hang 8h ngay mai', 10, 2500000, 1, 1, '2018-05-26 08:25:26', '2018-05-26 08:27:48'),
(6, '528649371', 'Truongminhlucky@gmail.com', 'Truong ngoc ninh', 'Ap my trung 1, xa my thanh trung, tam binh, vinh long', '0977350205', '', 2, 450000, 0, 1, '2018-06-24 06:45:25', '2018-06-24 06:45:25'),
(7, '627491583', 'Truongminhlucky@gmail.com', 'Truong ngoc ninh', 'Ap my trung 1, xa my thanh trung, tam binh, vinh long', '0977350205', '', 0, 0, 0, 1, '2018-06-24 06:45:32', '2018-06-24 06:45:32');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_detail`
--

DROP TABLE IF EXISTS `invoice_detail`;
CREATE TABLE `invoice_detail` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `product_image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT NULL,
  `product_quantity` int(11) DEFAULT NULL,
  `product_total_price` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `invoice_detail`
--

INSERT INTO `invoice_detail` (`id`, `invoice_id`, `product_id`, `product_code`, `product_name`, `product_image`, `product_price`, `product_quantity`, `product_total_price`, `created_at`, `updated_at`) VALUES
(1, 1, 7, '159842367', 'Hương trái cây dùng trong thực phẩm', 'chem-1-tem6p8aijslz.png', '150000.00', 2, '300000.00', '2018-04-21 04:11:02', '2018-04-21 04:11:02'),
(2, 1, 14, '768192435', 'Màu Vàng hột gà (Egg Yellow)', 'chem-11-r62tvewmp01i.png', '550000.00', 3, '1650000.00', '2018-04-21 04:11:02', '2018-04-21 04:11:02'),
(3, 2, 17, '972135486', 'Màu Hồng Sen Erythrosine Red', 'chem-15-iogsb5jzrqw7.png', '250000.00', 3, '750000.00', '2018-04-21 04:14:56', '2018-04-21 04:14:56'),
(4, 2, 5, '154932786', 'Hương thịt heo', 'chem-8-iqtjl5b9ncow.png', '300000.00', 2, '600000.00', '2018-04-21 04:14:56', '2018-04-21 04:14:56'),
(5, 3, 6, '578231496', 'Hương bò', 'chem-24-kud0qifl8eg3.png', '350000.00', 3, '1050000.00', '2018-05-26 04:43:09', '2018-05-26 04:43:09'),
(6, 3, 16, '514932687', 'Màu Đen Than (Black) dùng trong thực phẩm', 'chem-14-xli2jn697b8t.png', '450000.00', 2, '900000.00', '2018-05-26 04:43:09', '2018-05-26 04:43:09'),
(7, 4, 14, '768192435', 'Màu Vàng hột gà (Egg Yellow)', 'chem-11-r62tvewmp01i.png', '550000.00', 3, '1650000.00', '2018-05-26 04:45:53', '2018-05-26 04:45:53'),
(8, 4, 2, '327981654', 'Hương mực dạng lỏng', 'chem-9-obnq2lp7zu0r.png', '300000.00', 5, '1500000.00', '2018-05-26 04:45:53', '2018-05-26 04:45:53'),
(9, 5, 17, '972135486', 'Màu Hồng Sen Erythrosine Red', 'chem-15-iogsb5jzrqw7.png', '250000.00', 10, '2500000.00', '2018-05-26 08:25:26', '2018-05-26 08:25:26'),
(10, 6, 1, '913765842', 'Hương gà', 'chem-30-icgtp7fbrynj.png', '100000.00', 1, '100000.00', '2018-06-24 06:45:25', '2018-06-24 06:45:25'),
(11, 6, 6, '578231496', 'Hương bò', 'chem-24-kud0qifl8eg3.png', '350000.00', 1, '350000.00', '2018-06-24 06:45:25', '2018-06-24 06:45:25');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `menu_type_id` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `menu_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `fullname`, `alias`, `parent_id`, `menu_type_id`, `level`, `menu_class`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(57, 'Trang chủ', 'trang-chu', 0, 5, 0, NULL, 1, 1, '2018-01-10 07:14:21', '2018-01-10 07:14:21'),
(61, 'Quy trình sản xuất', 'quy-trinh-san-xuat', 0, 5, 0, '', 4, 1, '2018-01-10 07:15:34', '2018-05-12 11:17:07'),
(372, 'Chính sách giao hàng', 'chinh-sach-giao-hang', 0, 9, 0, '', 1, 1, '2018-02-28 07:25:53', '2018-02-28 07:25:53'),
(374, 'Hướng dẫn mua hàng', 'huong-dan-mua-hang', 0, 9, 0, '', 3, 1, '2018-02-28 07:26:16', '2018-02-28 07:26:16'),
(375, 'Quy chế hoạt động', 'quy-che-hoat-dong', 0, 9, 0, '', 4, 1, '2018-02-28 07:26:27', '2018-02-28 07:26:27'),
(376, 'Giới thiệu', 'gioi-thieu', 0, 9, 0, '', 5, 1, '2018-02-28 07:26:39', '2018-04-21 03:54:31'),
(377, 'Liên hệ', 'lien-he', 0, 9, 0, '', 6, 1, '2018-02-28 07:26:56', '2018-02-28 07:27:00'),
(406, 'Sản phẩm', 'chuyen-giao-cong-nghe', 0, 5, 0, '', 3, 1, '2018-03-04 12:48:56', '2018-05-12 11:17:07'),
(414, 'Tin tức', 'tin-tuc-thi-truong', 0, 9, 0, '', 7, 1, '2018-03-19 11:41:25', '2018-04-21 03:53:44'),
(415, 'Sản phẩm', 'chuyen-giao-cong-nghe', 0, 1, 0, '', 3, 1, '2018-04-18 09:41:33', '2018-05-11 14:19:49'),
(416, 'Trang chủ', 'trang-chu', 0, 1, 0, '', 1, 1, '2018-04-18 09:42:20', '2018-04-21 01:38:52'),
(417, 'Quy trình sản xuất', 'quy-trinh-san-xuat', 0, 1, 0, '', 4, 1, '2018-04-18 09:42:55', '2018-05-11 14:20:27'),
(418, 'Chuyển giao công nghệ', 'chuyen-giao-cong-nghe', 0, 1, 0, '', 4, 1, '2018-04-18 09:43:16', '2018-05-11 14:20:56'),
(419, 'Tin tức thị trường', 'tin-tuc-thi-truong', 0, 1, 0, '', 5, 1, '2018-04-18 09:43:40', '2018-05-11 14:21:30'),
(420, 'Liên hệ', 'lien-he', 0, 1, 0, '', 6, 1, '2018-04-18 09:44:03', '2018-04-18 09:44:03'),
(439, 'Chế biến thịt cá', 'che-bien-thit-ca', 415, 1, 1, '', 1, 1, '2018-04-19 02:55:37', '2018-05-11 15:13:25'),
(490, 'Hương liệu thực phẩm', 'gia-vi-nuoc-tuong-nuoc-mam', 0, 11, 0, '', 1, 1, '2018-04-20 09:33:35', '2018-04-20 09:33:35'),
(491, 'Màu thực phẩm', 'che-bien-thach-rau-cau', 0, 11, 0, '', 2, 1, '2018-04-20 09:33:43', '2018-04-20 09:33:43'),
(492, 'Chất bảo quản', 'tra-ca-phe-ca-cao', 0, 11, 0, '', 3, 1, '2018-04-20 09:33:52', '2018-04-20 09:33:52'),
(493, 'Chất tạo ngọt', 'tinh-bot-tinh-bot-bien-tinh', 0, 11, 0, '', 4, 1, '2018-04-20 09:34:37', '2018-04-20 09:34:37'),
(494, 'Chất điều vị', 'thuc-pham-chay', 0, 11, 0, '', 5, 1, '2018-04-20 09:34:47', '2018-04-20 09:34:47'),
(495, 'Chất chống oxy hóa', 'nguyen-lieu-tra-sua', 0, 11, 0, '', 6, 1, '2018-04-20 09:35:00', '2018-04-20 09:35:00'),
(502, 'Chuyển giao công nghệ', 'chuyen-giao-cong-nghe', 0, 5, 0, '', 5, 1, '2018-05-02 06:46:06', '2018-05-12 11:17:07'),
(503, 'Tin tức thị trường', 'tin-tuc-thi-truong', 0, 5, 0, '', 6, 1, '2018-05-02 06:46:32', '2018-05-12 11:17:07'),
(504, 'Liên hệ', 'lien-he', 0, 5, 0, '', 7, 1, '2018-05-02 06:47:07', '2018-05-12 11:17:07'),
(506, 'Giới thiệu', 'gioi-thieu', 0, 1, 0, '', 2, 1, '2018-05-11 14:19:29', '2018-05-11 14:19:49'),
(507, 'Gia vị nước tương nước mắm', 'gia-vi-nuoc-tuong-nuoc-mam', 415, 1, 1, '', 2, 1, '2018-05-11 15:16:17', '2018-05-11 15:16:33'),
(508, 'Mì ăn liền - Bún - Phở', 'mi-an-lien-bun-pho', 415, 1, 1, '', 3, 1, '2018-05-11 15:17:04', '2018-05-11 15:17:22'),
(509, 'Chế biến kem', 'che-bien-kem', 415, 1, 1, '', 4, 1, '2018-05-11 15:17:50', '2018-05-11 15:17:50'),
(510, 'Chế biến thạch rau câu', 'che-bien-thach-rau-cau', 415, 1, 1, '', 5, 1, '2018-05-11 15:18:18', '2018-05-11 15:18:36'),
(511, 'Bánh kẹo', 'banh-keo', 415, 1, 1, '', 6, 1, '2018-05-11 15:19:26', '2018-05-11 15:19:26'),
(512, 'Trà, cà phê, ca cao', 'tra-ca-phe-ca-cao', 415, 1, 1, '', 7, 1, '2018-05-11 15:20:00', '2018-05-11 15:20:00'),
(513, 'Nước giải khát', 'nuoc-giai-khat', 415, 1, 1, '', 8, 1, '2018-05-11 15:20:39', '2018-05-11 15:20:39'),
(514, 'Tinh bột- tinh bột biến tính', 'tinh-bot-tinh-bot-bien-tinh', 415, 1, 1, '', 9, 1, '2018-05-11 15:21:11', '2018-05-11 15:21:11'),
(515, 'Thực phẩm chay', 'thuc-pham-chay', 415, 1, 1, '', 10, 1, '2018-05-11 15:21:48', '2018-05-11 15:21:48'),
(516, 'Nguyên liệu trà sữa', 'nguyen-lieu-tra-sua', 415, 1, 1, '', 11, 1, '2018-05-11 15:24:24', '2018-05-11 15:24:24'),
(517, 'Máy móc thiết bị- bao bì thực phẩm', 'may-moc-thiet-bi-bao-bi-thuc-pham', 415, 1, 1, '', 12, 1, '2018-05-11 15:24:53', '2018-05-11 15:24:53'),
(518, 'Chế biến thịt cá', 'che-bien-thit-ca', 0, 8, 0, '', 1, 1, '2018-05-11 15:30:43', '2018-05-11 15:30:43'),
(519, 'Gia vị nước tương nước mắm', 'gia-vi-nuoc-tuong-nuoc-mam', 0, 8, 0, '', 2, 1, '2018-05-11 15:31:11', '2018-05-26 10:00:59'),
(520, 'Mì ăn liền - Bún - Phở', 'mi-an-lien-bun-pho', 0, 8, 0, '', 3, 1, '2018-05-11 15:31:43', '2018-05-11 15:31:43'),
(521, 'Chế biến kem', 'che-bien-kem', 0, 8, 0, '', 4, 1, '2018-05-11 15:32:07', '2018-05-11 15:32:07'),
(522, 'Chế biến thạch rau câu', 'che-bien-thach-rau-cau', 0, 8, 0, '', 5, 1, '2018-05-11 15:32:34', '2018-05-11 15:32:34'),
(523, 'Bánh kẹo', 'banh-keo', 0, 8, 0, '', 6, 1, '2018-05-11 15:33:02', '2018-05-11 15:33:02'),
(524, 'Trà, cà phê, ca cao', 'tra-ca-phe-ca-cao', 0, 8, 0, '', 7, 1, '2018-05-11 15:33:30', '2018-05-11 15:33:30'),
(525, 'Nước giải khát', 'nuoc-giai-khat', 0, 8, 0, '', 8, 1, '2018-05-11 15:33:54', '2018-05-11 15:33:54'),
(526, 'Tinh bột- tinh bột biến tính', 'tinh-bot-tinh-bot-bien-tinh', 0, 8, 0, '', 9, 1, '2018-05-11 15:34:21', '2018-05-11 15:34:21'),
(527, 'Thực phẩm chay', 'thuc-pham-chay', 0, 8, 0, '', 10, 1, '2018-05-11 15:34:46', '2018-05-11 15:34:46'),
(528, 'Nguyên liệu trà sữa', 'nguyen-lieu-tra-sua', 0, 8, 0, '', 11, 1, '2018-05-11 15:35:10', '2018-05-11 15:35:10'),
(529, 'Máy móc thiết bị- bao bì thực phẩm', 'may-moc-thiet-bi-bao-bi-thuc-pham', 0, 8, 0, '', 12, 1, '2018-05-11 15:35:31', '2018-05-11 15:35:31'),
(530, 'Giới thiệu', 'gioi-thieu', 0, 5, 0, '', 2, 1, '2018-05-12 11:15:51', '2018-05-12 11:17:07'),
(531, 'Chế biến thịt cá', 'che-bien-thit-ca', 406, 5, 1, '', 1, 1, '2018-05-12 11:18:02', '2018-05-12 11:18:02'),
(532, 'Gia vị nước tương nước mắm', 'gia-vi-nuoc-tuong-nuoc-mam', 406, 5, 1, '', 2, 1, '2018-05-12 11:18:17', '2018-05-12 11:18:17'),
(533, 'Mì ăn liền - Bún - Phở', 'mi-an-lien-bun-pho', 406, 5, 1, '', 3, 1, '2018-05-12 11:18:30', '2018-05-12 11:18:59'),
(534, 'Chế biến kem', 'che-bien-kem', 406, 5, 1, '', 4, 1, '2018-05-12 11:18:48', '2018-05-12 11:18:48'),
(535, 'Chế biến thạch rau câu', 'che-bien-thach-rau-cau', 406, 5, 1, '', 5, 1, '2018-05-12 11:19:17', '2018-05-12 11:19:17'),
(536, 'Bánh kẹo', 'banh-keo', 406, 5, 1, '', 6, 1, '2018-05-12 11:19:36', '2018-05-12 11:19:36'),
(537, 'Trà, cà phê, ca cao', 'tra-ca-phe-ca-cao', 406, 5, 1, '', 7, 1, '2018-05-12 11:19:59', '2018-05-12 11:19:59'),
(538, 'Nước giải khát', 'nuoc-giai-khat', 406, 5, 1, '', 8, 1, '2018-05-12 11:20:17', '2018-05-12 11:20:17'),
(539, 'Tinh bột- tinh bột biến tính', 'tinh-bot-tinh-bot-bien-tinh', 406, 5, 1, '', 9, 1, '2018-05-12 11:20:33', '2018-05-12 11:20:33'),
(540, 'Thực phẩm chay', 'thuc-pham-chay', 406, 5, 1, '', 10, 1, '2018-05-12 11:20:51', '2018-05-12 11:20:51'),
(541, 'Nguyên liệu trà sữa', 'nguyen-lieu-tra-sua', 406, 5, 1, '', 11, 1, '2018-05-12 11:21:07', '2018-05-12 11:21:07'),
(542, 'Máy móc thiết bị- bao bì thực phẩm', 'may-moc-thiet-bi-bao-bi-thuc-pham', 406, 5, 1, '', 12, 1, '2018-05-12 11:21:23', '2018-05-12 11:21:23'),
(543, 'Chế biến thịt cá', 'che-bien-thit-ca', 0, 11, 0, '', 7, 1, '2018-05-26 08:04:37', '2018-05-26 08:04:37'),
(544, 'Chế biến thịt cá', 'che-bien-thit-ca', 439, 1, 2, '', 1, 1, '2018-05-26 08:43:59', '2018-05-26 08:43:59'),
(545, 'Hương bò', 'huong-bo', 0, 1, 0, '', 10, 1, '2018-05-26 08:45:36', '2018-05-26 08:45:36'),
(546, 'Hương Cầy', 'huong-cay', 0, 8, 0, '', 80, 1, '2018-05-26 08:47:59', '2018-05-26 08:47:59');

-- --------------------------------------------------------

--
-- Table structure for table `menu_admin`
--

DROP TABLE IF EXISTS `menu_admin`;
CREATE TABLE `menu_admin` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `form_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_type`
--

DROP TABLE IF EXISTS `menu_type`;
CREATE TABLE `menu_type` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_type`
--

INSERT INTO `menu_type` (`id`, `fullname`, `theme_location`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'MainMenu', 'main-menu', 1, 1, '2017-12-15 03:37:06', '2018-02-22 17:15:43'),
(5, 'MobileMenu', 'mobile-menu', 1, 1, '2018-01-09 19:31:48', '2018-05-12 11:13:29'),
(8, 'Danh mục sản phẩm', 'category-side-bar', 1, 1, '2018-02-28 06:56:55', '2018-05-26 10:00:36'),
(9, 'Hỗ trợ khách hàng', 'htkh', 1, 1, '2018-02-28 07:19:49', '2018-04-20 09:35:24'),
(11, 'Sản phẩm', 'category-footer', 1, 1, '2018-04-20 09:33:17', '2018-04-20 10:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_07_02_230147_migration_cartalyst_sentinel', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `module_item`
--

DROP TABLE IF EXISTS `module_item`;
CREATE TABLE `module_item` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` text COLLATE utf8_unicode_ci,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `component` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `setting` text COLLATE utf8_unicode_ci,
  `status` int(1) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
CREATE TABLE `organization` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `count_view` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_image` text COLLATE utf8_unicode_ci,
  `intro` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `count_view` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `fullname`, `alias`, `theme_location`, `image`, `alt_image`, `intro`, `content`, `description`, `meta_keyword`, `meta_description`, `count_view`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Công Ty Cổ Phần Kaizen Foods', 'cong-ty-co-phan-kaizen-foods', 'intro-footer', NULL, NULL, '', '<p><span style=\"font-size: 12px;\"><b><i>CÔNG TY TNHH XNK CÔNG NGHỆ THP</i></b></span></p><span style=\"font-size: 12px;\">\r\n\r\n</span><p><span style=\"font-size: 12px;\">Địa chỉ: Số 166/ 26 Lê Trung Đình, P.Sơn Kỳ, Q.Tân Phú, TP.HCM</span></p><span style=\"font-size: 12px;\">\r\n\r\n</span><p><span style=\"font-size: 12px;\">Điện thoại: 0911 460 639</span></p><span style=\"font-size: 12px;\">\r\n\r\n</span><p><span style=\"font-size: 12px;\">Email:&nbsp;votrantoantk@gmail.com</span></p><span style=\"font-size: 12px;\">\r\n\r\n</span><p><span style=\"font-size: 12px;\">Website: www.phugiathp.com</span></p>', '', '', '', NULL, 6, 1, '2017-12-28 04:10:41', '2018-05-26 08:03:24'),
(6, 'Fanpage', 'fanpage', 'fanpage-footer', NULL, NULL, '<div class=\"fb-page\" data-href=\"https://www.facebook.com/Ph&#x1ee5;-Gia-Th&#x1ef1;c-Ph&#x1ea9;m-THP-629396864080442\" data-tabs=\"timeline\" data-width=\"300\" data-height=\"300\" data-small-header=\"false\" data-adapt-container-width=\"true\" data-hide-cover=\"false\" data-show-facepile=\"true\"><blockquote cite=\"https://www.facebook.com/Ph&#x1ee5;-Gia-Th&#x1ef1;c-Ph&#x1ea9;m-THP-629396864080442\" class=\"fb-xfbml-parse-ignore\"><a href=\"https://www.facebook.com/Ph&#x1ee5;-Gia-Th&#x1ef1;c-Ph&#x1ea9;m-THP-629396864080442\">Phụ Gia Thực Phẩm THP</a></blockquote></div>', '<p><br></p>', '', '', '', NULL, 7, 1, '2018-01-19 02:31:15', '2018-05-22 02:37:11'),
(15, 'Quy trình sản xuất', 'quy-trinh-san-xuat', '', NULL, NULL, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '', 'metakeyword Quy trình sản xuất', 'metadescription Quy trình sản xuất', 35, 1, 1, '2018-04-18 09:37:38', '2018-06-27 06:17:32'),
(17, 'Thông tin liên hệ', 'thong-tin-lien-he', 'thong-tin-lien-he', NULL, NULL, '', '<h3><span style=\"color:#067a1e\"><strong>CÔNG TY TNHH XNK CÔNG NGHỆ THP</strong></span></h3>\r\n\r\n<p><em><strong>Địa chỉ:</strong></em>Số 166/ 26 Lê Trung Đình, P.Sơn Kỳ, Q.Tân Phú, TP.HCM</p>\r\n\r\n<p><em><strong>Điện thoại:</strong></em> 0911 460 639</p>\r\n\r\n<p><em><strong>Email:</strong></em> votrantoantk@gmail.com</p>\r\n\r\n<p><em><strong>Website:</strong></em> www.phugiathp.com</p>', '', '', '', NULL, 1, 1, '2018-04-21 03:23:24', '2018-05-22 02:42:21'),
(18, 'Chính sách giao hàng', 'chinh-sach-giao-hang', '', NULL, NULL, '', '<p>Đang cập nhật</p><p><img src=\"/upload/art-2.png\" style=\"width: 100%;\" alt=\"chiếc xe màu đen\" title=\"xe hơi màu đen\"><br></p>', '', '', '', 20, 1, 1, '2018-04-21 03:49:54', '2018-06-27 06:17:33'),
(20, 'Hướng dẫn mua hàng', 'huong-dan-mua-hang', '', NULL, NULL, '', '<p>Đang cập nhật...</p>', '', '', '', 16, 1, 1, '2018-04-21 03:51:08', '2018-06-29 07:28:20'),
(21, 'Quy chế hoạt động', 'quy-che-hoat-dong', '', NULL, NULL, '', '<p>Đang cập nhật</p>', '', '', '', 13, 1, 1, '2018-04-21 03:51:49', '2018-06-27 06:17:44'),
(22, 'Giới thiệu', 'gioi-thieu', '', NULL, NULL, '', '<p>Đang cập nhật</p>', '', '', '', 28, 1, 1, '2018-04-21 03:52:30', '2018-06-28 10:09:04'),
(24, 'Chuyển giao công nghệ', 'chuyen-giao-cong-nghe', '', NULL, NULL, '', '<p><br></p>', '', '', '', 20, 1, 1, '2018-05-11 14:26:56', '2018-06-28 17:43:49');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
CREATE TABLE `payment_method` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `content` text,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`id`, `fullname`, `alias`, `content`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Thanh toán bằng Ví điện tử NgânLượng', 'NL', '<p style=\"text-align:justify\">Thanh toán trực tuyến AN TOÀN và ĐƯỢC BẢO VỆ, sử dụng thẻ ngân hàng trong và ngoài nước hoặc nhiều hình thức tiện lợi khác. Được bảo hộ & cấp phép bởi NGÂN HÀNG NHÀ NƯỚC, ví điện tử duy nhất được cộng đồng ƯA THÍCH NHẤT 2 năm liên tiếp, Bộ Thông tin Truyền thông trao giải thưởng Sao Khuê<br />\nGiao dịch. Đăng ký ví NgânLượng.vn miễn phí <a href=\"https://www.nganluong.vn/?portal=nganluong&page=user_register\"><span style=\"color:#2980b9\">tại đây</span></a></p>', 1, 1, '2018-01-07 17:25:13', '2018-02-06 10:46:40'),
(2, 'Thanh toán online bằng thẻ ngân hàng nội địa', 'ATM_ONLINE', '<p><i>\n				<span style=\"color:#ff5a00;font-weight:bold;text-decoration:underline;\">Lưu ý</span>: Bạn cần đăng ký Internet-Banking hoặc dịch vụ thanh toán trực tuyến tại ngân hàng trước khi thực hiện.</i></p>\n							\n						<ul class=\"cardList clearfix\">\n						<li class=\"bank-online-methods \">\n							<label for=\"vcb_ck_on\">\n								<i class=\"BIDV\" title=\"Ngân hàng TMCP Đầu tư &amp; Phát triển Việt Nam\"></i>\n								<input type=\"radio\" value=\"BIDV\" name=\"bankcode\">\n							\n						</label></li>\n						<li class=\"bank-online-methods \">\n							<label for=\"vcb_ck_on\">\n								<i class=\"VCB\" title=\"Ngân hàng TMCP Ngoại Thương Việt Nam\"></i>\n								<input type=\"radio\" value=\"VCB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"vnbc_ck_on\">\n								<i class=\"DAB\" title=\"Ngân hàng Đông Á\"></i>\n								<input type=\"radio\" value=\"DAB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"tcb_ck_on\">\n								<i class=\"TCB\" title=\"Ngân hàng Kỹ Thương\"></i>\n								<input type=\"radio\" value=\"TCB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_mb_ck_on\">\n								<i class=\"MB\" title=\"Ngân hàng Quân Đội\"></i>\n								<input type=\"radio\" value=\"MB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_vib_ck_on\">\n								<i class=\"VIB\" title=\"Ngân hàng Quốc tế\"></i>\n								<input type=\"radio\" value=\"VIB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_vtb_ck_on\">\n								<i class=\"ICB\" title=\"Ngân hàng Công Thương Việt Nam\"></i>\n								<input type=\"radio\" value=\"ICB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_exb_ck_on\">\n								<i class=\"EXB\" title=\"Ngân hàng Xuất Nhập Khẩu\"></i>\n								<input type=\"radio\" value=\"EXB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_acb_ck_on\">\n								<i class=\"ACB\" title=\"Ngân hàng Á Châu\"></i>\n								<input type=\"radio\" value=\"ACB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_hdb_ck_on\">\n								<i class=\"HDB\" title=\"Ngân hàng Phát triển Nhà TPHCM\"></i>\n								<input type=\"radio\" value=\"HDB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_msb_ck_on\">\n								<i class=\"MSB\" title=\"Ngân hàng Hàng Hải\"></i>\n								<input type=\"radio\" value=\"MSB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_nvb_ck_on\">\n								<i class=\"NVB\" title=\"Ngân hàng Nam Việt\"></i>\n								<input type=\"radio\" value=\"NVB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_vab_ck_on\">\n								<i class=\"VAB\" title=\"Ngân hàng Việt Á\"></i>\n								<input type=\"radio\" value=\"VAB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_vpb_ck_on\">\n								<i class=\"VPB\" title=\"Ngân Hàng Việt Nam Thịnh Vượng\"></i>\n								<input type=\"radio\" value=\"VPB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_scb_ck_on\">\n								<i class=\"SCB\" title=\"Ngân hàng Sài Gòn Thương tín\"></i>\n								<input type=\"radio\" value=\"SCB\" name=\"bankcode\">\n							\n						</label></li>\n\n						\n\n						<li class=\"bank-online-methods \">\n							<label for=\"bnt_atm_pgb_ck_on\">\n								<i class=\"PGB\" title=\"Ngân hàng Xăng dầu Petrolimex\"></i>\n								<input type=\"radio\" value=\"PGB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"bnt_atm_gpb_ck_on\">\n								<i class=\"GPB\" title=\"Ngân hàng TMCP Dầu khí Toàn Cầu\"></i>\n								<input type=\"radio\" value=\"GPB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"bnt_atm_agb_ck_on\">\n								<i class=\"AGB\" title=\"Ngân hàng Nông nghiệp &amp; Phát triển nông thôn\"></i>\n								<input type=\"radio\" value=\"AGB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"bnt_atm_sgb_ck_on\">\n								<i class=\"SGB\" title=\"Ngân hàng Sài Gòn Công Thương\"></i>\n								<input type=\"radio\" value=\"SGB\" name=\"bankcode\">\n							\n						</label></li>	\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_bab_ck_on\">\n								<i class=\"BAB\" title=\"Ngân hàng Bắc Á\"></i>\n								<input type=\"radio\" value=\"BAB\" name=\"bankcode\">\n							\n						</label></li>\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_bab_ck_on\">\n								<i class=\"TPB\" title=\"Tền phong bank\"></i>\n								<input type=\"radio\" value=\"TPB\" name=\"bankcode\">\n							\n						</label></li>\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_bab_ck_on\">\n								<i class=\"NAB\" title=\"Ngân hàng Nam Á\"></i>\n								<input type=\"radio\" value=\"NAB\" name=\"bankcode\">\n							\n						</label></li>\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_bab_ck_on\">\n								<i class=\"SHB\" title=\"Ngân hàng TMCP Sài Gòn - Hà Nội (SHB)\"></i>\n								<input type=\"radio\" value=\"SHB\" name=\"bankcode\">\n							\n						</label></li>\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_bab_ck_on\">\n								<i class=\"OJB\" title=\"Ngân hàng TMCP Đại Dương (OceanBank)\"></i>\n								<input type=\"radio\" value=\"OJB\" name=\"bankcode\">\n							\n						</label></li>\n						\n\n\n\n						\n					</ul>', 2, 1, '2018-01-07 17:25:25', '2018-02-08 02:57:55'),
(3, 'Thanh toán bằng IB', 'IB_ONLINE', '<p><i>\n						<span style=\"color:#ff5a00;font-weight:bold;text-decoration:underline;\">Lưu ý</span>: Bạn cần đăng ký Internet-Banking hoặc dịch vụ thanh toán trực tuyến tại ngân hàng trước khi thực hiện.</i></p>\n\n				<ul class=\"cardList clearfix\">\n					<li class=\"bank-online-methods \">\n						<label for=\"vcb_ck_on\">\n							<i class=\"BIDV\" title=\"Ngân hàng TMCP Đầu tư &amp; Phát triển Việt Nam\"></i>\n							<input type=\"radio\" value=\"BIDV\" name=\"bankcode\">\n\n						</label></li>\n					<li class=\"bank-online-methods \">\n						<label for=\"vcb_ck_on\">\n							<i class=\"VCB\" title=\"Ngân hàng TMCP Ngoại Thương Việt Nam\"></i>\n							<input type=\"radio\" value=\"VCB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"vnbc_ck_on\">\n							<i class=\"DAB\" title=\"Ngân hàng Đông Á\"></i>\n							<input type=\"radio\" value=\"DAB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"tcb_ck_on\">\n							<i class=\"TCB\" title=\"Ngân hàng Kỹ Thương\"></i>\n							<input type=\"radio\" value=\"TCB\" name=\"bankcode\">\n\n						</label></li>\n\n\n				</ul>', 3, 1, '2018-02-05 11:55:58', '2018-02-08 02:58:59'),
(4, 'Thanh toán atm offline', 'ATM_OFFLINE', '<ul class=\"cardList clearfix\">\n					<li class=\"bank-online-methods \">\n						<label for=\"vcb_ck_on\">\n							<i class=\"BIDV\" title=\"Ngân hàng TMCP Đầu tư &amp; Phát triển Việt Nam\"></i>\n							<input type=\"radio\" value=\"BIDV\" name=\"bankcode\">\n\n						</label></li>\n						\n					<li class=\"bank-online-methods \">\n						<label for=\"vcb_ck_on\">\n							<i class=\"VCB\" title=\"Ngân hàng TMCP Ngoại Thương Việt Nam\"></i>\n							<input type=\"radio\" value=\"VCB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"vnbc_ck_on\">\n							<i class=\"DAB\" title=\"Ngân hàng Đông Á\"></i>\n							<input type=\"radio\" value=\"DAB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"tcb_ck_on\">\n							<i class=\"TCB\" title=\"Ngân hàng Kỹ Thương\"></i>\n							<input type=\"radio\" value=\"TCB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_mb_ck_on\">\n							<i class=\"MB\" title=\"Ngân hàng Quân Đội\"></i>\n							<input type=\"radio\" value=\"MB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_vtb_ck_on\">\n							<i class=\"ICB\" title=\"Ngân hàng Công Thương Việt Nam\"></i>\n							<input type=\"radio\" value=\"ICB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_acb_ck_on\">\n							<i class=\"ACB\" title=\"Ngân hàng Á Châu\"></i>\n							<input type=\"radio\" value=\"ACB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_msb_ck_on\">\n							<i class=\"MSB\" title=\"Ngân hàng Hàng Hải\"></i>\n							<input type=\"radio\" value=\"MSB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_scb_ck_on\">\n							<i class=\"SCB\" title=\"Ngân hàng Sài Gòn Thương tín\"></i>\n							<input type=\"radio\" value=\"SCB\" name=\"bankcode\">\n\n						</label></li>\n					<li class=\"bank-online-methods \">\n						<label for=\"bnt_atm_pgb_ck_on\">\n							<i class=\"PGB\" title=\"Ngân hàng Xăng dầu Petrolimex\"></i>\n							<input type=\"radio\" value=\"PGB\" name=\"bankcode\">\n\n						</label></li>\n					\n					 <li class=\"bank-online-methods \">\n						<label for=\"bnt_atm_agb_ck_on\">\n							<i class=\"AGB\" title=\"Ngân hàng Nông nghiệp &amp; Phát triển nông thôn\"></i>\n							<input type=\"radio\" value=\"AGB\" name=\"bankcode\">\n\n						</label></li>\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_bab_ck_on\">\n							<i class=\"SHB\" title=\"Ngân hàng TMCP Sài Gòn - Hà Nội (SHB)\"></i>\n							<input type=\"radio\" value=\"SHB\" name=\"bankcode\">\n\n						</label></li>\n					\n\n\n\n				</ul>', 4, 1, '2018-02-06 10:09:38', '2018-02-08 03:00:18'),
(5, 'Thanh toán tại văn phòng ngân hàng', 'NH_OFFLINE', '<ul class=\"cardList clearfix\">\n					<li class=\"bank-online-methods \">\n						<label for=\"vcb_ck_on\">\n							<i class=\"BIDV\" title=\"Ngân hàng TMCP Đầu tư &amp; Phát triển Việt Nam\"></i>\n							<input type=\"radio\" value=\"BIDV\" name=\"bankcode\">\n\n						</label></li>\n					<li class=\"bank-online-methods \">\n						<label for=\"vcb_ck_on\">\n							<i class=\"VCB\" title=\"Ngân hàng TMCP Ngoại Thương Việt Nam\"></i>\n							<input type=\"radio\" value=\"VCB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"vnbc_ck_on\">\n							<i class=\"DAB\" title=\"Ngân hàng Đông Á\"></i>\n							<input type=\"radio\" value=\"DAB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"tcb_ck_on\">\n							<i class=\"TCB\" title=\"Ngân hàng Kỹ Thương\"></i>\n							<input type=\"radio\" value=\"TCB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_mb_ck_on\">\n							<i class=\"MB\" title=\"Ngân hàng Quân Đội\"></i>\n							<input type=\"radio\" value=\"MB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_vib_ck_on\">\n							<i class=\"VIB\" title=\"Ngân hàng Quốc tế\"></i>\n							<input type=\"radio\" value=\"VIB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_vtb_ck_on\">\n							<i class=\"ICB\" title=\"Ngân hàng Công Thương Việt Nam\"></i>\n							<input type=\"radio\" value=\"ICB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_acb_ck_on\">\n							<i class=\"ACB\" title=\"Ngân hàng Á Châu\"></i>\n							<input type=\"radio\" value=\"ACB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_msb_ck_on\">\n							<i class=\"MSB\" title=\"Ngân hàng Hàng Hải\"></i>\n							<input type=\"radio\" value=\"MSB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_scb_ck_on\">\n							<i class=\"SCB\" title=\"Ngân hàng Sài Gòn Thương tín\"></i>\n							<input type=\"radio\" value=\"SCB\" name=\"bankcode\">\n\n						</label></li>\n\n\n\n					<li class=\"bank-online-methods \">\n						<label for=\"bnt_atm_pgb_ck_on\">\n							<i class=\"PGB\" title=\"Ngân hàng Xăng dầu Petrolimex\"></i>\n							<input type=\"radio\" value=\"PGB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"bnt_atm_agb_ck_on\">\n							<i class=\"AGB\" title=\"Ngân hàng Nông nghiệp &amp; Phát triển nông thôn\"></i>\n							<input type=\"radio\" value=\"AGB\" name=\"bankcode\">\n\n						</label></li>\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_bab_ck_on\">\n							<i class=\"TPB\" title=\"Tền phong bank\"></i>\n							<input type=\"radio\" value=\"TPB\" name=\"bankcode\">\n\n						</label></li>\n\n\n\n				</ul>', 5, 1, '2018-02-06 10:09:53', '2018-02-08 03:01:03'),
(6, 'Thanh toán bằng thẻ Visa hoặc MasterCard', 'VISA', '<p><span style=\"color:#ff5a00;font-weight:bold;text-decoration:underline;\">Lưu ý</span>:Visa hoặc MasterCard.</p>\n				<ul class=\"cardList clearfix\">\n						<li class=\"bank-online-methods \">\n							<label for=\"vcb_ck_on\">\n								Visa:\n								<input type=\"radio\" value=\"VISA\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"vnbc_ck_on\">\n								Master:<input type=\"radio\" value=\"MASTER\" name=\"bankcode\">\n						</label></li>\n				</ul>', 6, 1, '2018-02-06 10:10:08', '2018-02-08 03:01:34'),
(7, 'Thanh toán bằng thẻ Visa hoặc MasterCard trả trước', 'CREDIT_CARD_PREPAID', '<p><span style=\"color:#ff5a00;font-weight:bold;text-decoration:underline;\">Lưu ý</span>:Thanh toán bằng thẻ Visa hoặc MasterCard trả trước.</p>', 7, 1, '2018-02-06 10:10:45', '2018-02-06 11:02:11');

-- --------------------------------------------------------

--
-- Table structure for table `persistences`
--

DROP TABLE IF EXISTS `persistences`;
CREATE TABLE `persistences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(6, 1, 'WphP2gHqBbRpGKp2WcZb6APTYCNo1onf', '2017-11-12 08:12:08', '2017-11-12 08:12:08'),
(12, 1, 'HMMWMPpBDgdUbv54tKOldPvWyvcaeDCp', '2017-11-12 08:20:55', '2017-11-12 08:20:55'),
(20, 1, 'F4bWDfEvllT0fTv4EzWDp3NWpLxGo4n5', '2017-11-12 08:44:06', '2017-11-12 08:44:06'),
(27, 1, 'f7VCzyYASPW5vTVgTfv3Ji50sxy2ckIt', '2017-11-12 10:14:09', '2017-11-12 10:14:09'),
(35, 1, 'Zlbi5ja6c9Z7no06i5MvPsa8kZI3oLEZ', '2017-11-12 10:41:59', '2017-11-12 10:41:59'),
(43, 3, 'ZsvbfzLh4A4k34VMpmZCqIO2KIDk9pzP', '2017-11-12 10:51:37', '2017-11-12 10:51:37'),
(45, 3, '61CQHzrI8v42ppzJ35HclGUgzulYNwKD', '2017-11-12 10:51:57', '2017-11-12 10:51:57'),
(48, 4, 'M1VbjAgWRrVuXhVCqqvWAQHP287e5fuk', '2017-11-12 11:00:38', '2017-11-12 11:00:38'),
(52, 4, 'zWj9obfujhk7L1DEKOcSOMTi49HvkeVo', '2017-11-12 11:04:17', '2017-11-12 11:04:17'),
(64, 4, 'sGcmm3lmMPLTUyFeagebRe9YiPjWxHn0', '2017-11-12 11:20:36', '2017-11-12 11:20:36'),
(68, 4, 'DsgzaC5yhMG3miJpNrQFeWCpBwqfsMuO', '2017-11-12 11:21:48', '2017-11-12 11:21:48'),
(71, 4, 'aFa63uj6gzLcV0mZtU0nYvVinHZnvyAi', '2017-11-12 11:22:33', '2017-11-12 11:22:33'),
(73, 4, 'P672dGDcBqxGazfRAzJtUxPwSjTq9N4K', '2017-11-12 11:22:59', '2017-11-12 11:22:59'),
(74, 4, 'm0D8Z9mVczUYgqkSJXAwGQi8S9EaqrSg', '2017-11-12 11:23:03', '2017-11-12 11:23:03'),
(94, 1, 'W1uglu6PzKaOfwxa766IOJ33NDdulIri', '2017-11-12 13:01:17', '2017-11-12 13:01:17'),
(105, 4, 'lpP9axx2fJB8SUi7t2NlNMHasH10fl9N', '2017-11-12 19:31:42', '2017-11-12 19:31:42'),
(106, 4, '1PNxpqM3E2RYNr5CT1NzPzCOlNu4xILB', '2017-11-12 19:31:45', '2017-11-12 19:31:45'),
(107, 4, 'IJleJPrQEduTCpRbolCVqNbD3vzzhqXH', '2017-11-12 19:31:51', '2017-11-12 19:31:51'),
(110, 4, 'RyU6rnrEVVwusqJpB1boWgpODKNKthib', '2017-11-12 19:32:50', '2017-11-12 19:32:50'),
(113, 4, '2iWGSejY4rkJdkY2iK65Na0UV05uJEZ3', '2017-11-12 19:34:34', '2017-11-12 19:34:34'),
(115, 1, 'WQkHX9pd7HnW6Fwd58b6FNwURcoRYyK6', '2017-11-12 19:36:57', '2017-11-12 19:36:57'),
(119, 4, 'FGLu6nkqZkVigimI5Chx4mNmXgdi22qe', '2017-11-12 19:44:50', '2017-11-12 19:44:50'),
(124, 1, '1kZXCQqSfCEwmILvBACrUaHl5MpzQWXX', '2017-11-12 20:47:34', '2017-11-12 20:47:34'),
(125, 1, 'XJfqJ7pZakt8xtLNkULZUElD7jHOCtKt', '2017-11-13 17:44:28', '2017-11-13 17:44:28'),
(129, 1, 'JtMzzU4e61U2GRbOedwzutyNWAHHRHKp', '2017-11-13 23:43:59', '2017-11-13 23:43:59'),
(134, 1, 'zTVEKL7zcc4kvYk80AuKHQkn17d1TX0d', '2017-11-14 07:10:53', '2017-11-14 07:10:53'),
(135, 1, 'ZxzpfDpxrMTx7dRhvd1IQs0KoAyp8beZ', '2017-11-14 10:00:40', '2017-11-14 10:00:40'),
(138, 1, 'M9zXqXyMOTprNqZQI4LEpKqNogmDZiCE', '2017-11-14 20:35:29', '2017-11-14 20:35:29'),
(139, 1, 'CDF73h1lqr864dh5T5BQdTRf0hcrS45y', '2017-11-15 01:20:36', '2017-11-15 01:20:36'),
(143, 1, '50Hrxr02Q6CqKUF4p0G0bpP6PhcrLaNG', '2017-11-15 10:34:05', '2017-11-15 10:34:05'),
(145, 1, 'LRlBDrPFH3sF0WLHAUBGdJuLn5beDkqb', '2017-11-15 10:45:25', '2017-11-15 10:45:25'),
(149, 1, 'zV2fdfnD6X5jTDrXbKtgm2BQ4I4CN0vP', '2017-11-15 21:20:42', '2017-11-15 21:20:42'),
(154, 1, 'VbajMvJtRtkXTmUREmO1x8SnojOzoNy4', '2017-11-16 12:09:09', '2017-11-16 12:09:09'),
(155, 1, 'EN255XIbrvzjbXm2TdeuHOJnjAHBKhm0', '2017-11-16 19:00:45', '2017-11-16 19:00:45'),
(156, 1, 'a2STqoxCKAdKjJBxt5RxyBo23j196SqS', '2017-11-17 01:55:13', '2017-11-17 01:55:13'),
(157, 1, 'bWYcBrGX0pTubrxZ2Gz8mOrpfZh4d3R5', '2017-11-17 03:54:15', '2017-11-17 03:54:15'),
(158, 1, 'rOqRgZyRXdpE2wPQxm60VZEi4MVsaHwd', '2017-11-17 09:26:45', '2017-11-17 09:26:45'),
(159, 1, 'MUi9tluQQy8AhsadOL4sMuRSRaMPY2Vi', '2017-11-17 21:05:41', '2017-11-17 21:05:41'),
(162, 1, '0fsBWGHy3uFkICDp4rgusPKisYenbUr5', '2017-11-18 08:03:50', '2017-11-18 08:03:50'),
(163, 1, 'z2MidVz3A5SfcQtc9CjF83lbB9Ncxw4c', '2017-11-19 05:53:59', '2017-11-19 05:53:59'),
(164, 1, 'C3NrRRgDRZQLTrZraBO9IGEl2wXobUup', '2017-11-20 05:47:41', '2017-11-20 05:47:41'),
(165, 1, 'wgjWLdlRLP6Cireh1mZswQnOOTXG8z8O', '2017-11-21 03:33:18', '2017-11-21 03:33:18'),
(166, 1, 'OHI8P6DtqZVW9K4VlZ1mw5gI0IuJYPH1', '2017-11-21 04:17:05', '2017-11-21 04:17:05'),
(167, 1, 'qNdOfppeTTO8yQemqSZtz0s9qjIu8bSY', '2017-11-21 17:39:32', '2017-11-21 17:39:32'),
(168, 1, 'UJbhn9QwAcZUUXnVDtSStqNCq5akR4Lw', '2017-11-21 23:49:19', '2017-11-21 23:49:19'),
(169, 1, 'eo5eQNRwtkvZlv0DmXfze6JymlS0wylC', '2017-11-22 18:21:12', '2017-11-22 18:21:12'),
(173, 1, 'IulV4jEfAVovdnn5YGOTprw3kkvFe8NP', '2017-11-23 05:15:58', '2017-11-23 05:15:58'),
(174, 1, 'Awg5gkMADLkjPbiVitjCzS9ad5sCN9eF', '2017-11-23 18:51:55', '2017-11-23 18:51:55'),
(175, 1, 'STmoiFXISPPMkYZ46mHVd1FgZleRFPma', '2017-11-24 01:23:33', '2017-11-24 01:23:33'),
(176, 1, 'DS9Yw83Zm2blL1F2azbyCcQ4v2ktYX5H', '2017-11-24 02:11:20', '2017-11-24 02:11:20'),
(177, 1, 'e1ZyuWKHR7HQaQSkQEv4J6YMwpFFLXeC', '2017-11-24 06:39:38', '2017-11-24 06:39:38'),
(178, 1, '6KeLIVlJyL7P6FMEGpgxpNljzsQxI20T', '2017-11-25 05:02:32', '2017-11-25 05:02:32'),
(179, 1, 'tKhufJfgecAKrGEAT2EBaEPLaf517QVS', '2017-11-25 09:08:54', '2017-11-25 09:08:54'),
(180, 1, 't3XDlldaLWhVaxrPuwM6dT02mMflr87j', '2017-11-25 19:53:59', '2017-11-25 19:53:59'),
(182, 1, 'fM0W9o41fDgCiycVxhvQeJ02Opj3tULU', '2017-11-25 21:10:55', '2017-11-25 21:10:55'),
(184, 1, 'EMmXbaWTDFtG4QX9UfVNcK7eUBsy7nmJ', '2017-11-25 21:32:34', '2017-11-25 21:32:34'),
(185, 1, 'r6cxynGaM90IU8uZA7aJFjox941jTivP', '2017-11-26 05:12:26', '2017-11-26 05:12:26'),
(198, 1, 'qNJI9OXlvBnQT9IZvLyhcvnjFBHI3dZz', '2017-11-26 10:37:48', '2017-11-26 10:37:48'),
(199, 1, 'C9FPmC5NtedAPoygDQN2oqpB4EZN8azX', '2017-11-26 11:20:11', '2017-11-26 11:20:11'),
(202, 1, 'qCWvTU0oJSjAyobzeHt21656Rl1eWuvq', '2017-11-26 20:07:36', '2017-11-26 20:07:36'),
(203, 1, 'I0m5QArlodAFsFQj0cfoSiIaJ2ZGgbyg', '2017-11-26 23:06:11', '2017-11-26 23:06:11'),
(204, 1, '6tDVgt6sfCGnbfPYISYbMzCQKpXm8QKc', '2017-11-27 00:00:05', '2017-11-27 00:00:05'),
(205, 1, 'R0MhkpKtLCI5fIe1wwCeicZa0ftDQPwx', '2017-11-27 02:16:57', '2017-11-27 02:16:57'),
(206, 1, 'E69AlB0p8xLhxxNVrs46xwrP0a5wm3KX', '2017-11-27 07:58:05', '2017-11-27 07:58:05'),
(207, 1, 'qFJkZtCoPK72qECK96tX226VuMubIMBv', '2017-11-27 19:23:06', '2017-11-27 19:23:06'),
(208, 1, 'yTiyEBo8xE3PfzxTL1GFRVnqqi4ChmIZ', '2017-11-27 20:15:53', '2017-11-27 20:15:53'),
(209, 1, 'YN8x4updqv0OrIsWStBz2c7ZxI7VO5ug', '2017-11-27 20:17:20', '2017-11-27 20:17:20'),
(210, 1, 'UpPwfQYjNbyRmztTDCfl16md4weLyjG3', '2017-11-30 08:03:21', '2017-11-30 08:03:21'),
(211, 1, 'ArOxlkVdyW3lu3SJqot209bFrPZUAPgD', '2017-12-01 10:48:28', '2017-12-01 10:48:28'),
(212, 1, 'xoOGCB3x8fVFoBznts5EU1k13GmZiO11', '2017-12-02 19:53:50', '2017-12-02 19:53:50'),
(214, 1, 'Jqk5DXGugxgRtsZy4pBEFn7brMvOjghm', '2017-12-03 11:57:16', '2017-12-03 11:57:16'),
(216, 1, 'nYe5QuFSOr8eu7GG8atx6EbvbM1XUMlY', '2017-12-03 17:58:34', '2017-12-03 17:58:34'),
(217, 1, 'P5Q1q3gYWSt4k7c0BLPth6QEpGmYVG5T', '2017-12-04 11:12:33', '2017-12-04 11:12:33'),
(218, 1, '0aNMDBXR8Xzt5DTF9HcK4OBSaZyohSzF', '2017-12-05 09:04:17', '2017-12-05 09:04:17'),
(219, 1, '8J8vasVhkLwqagOIRNKwiIU94QoexH4O', '2017-12-05 18:41:41', '2017-12-05 18:41:41'),
(220, 1, 'JChXlObze9eklsMJrTNLH6ekOw47H5mz', '2017-12-06 00:14:21', '2017-12-06 00:14:21'),
(221, 1, 'z18eXjqdkmbBbwJcvBAIt2o5DxA51xjw', '2017-12-06 08:20:51', '2017-12-06 08:20:51'),
(222, 1, 'F40EmMwa02fVssVHs66z0XASzB3S5sqM', '2017-12-08 11:51:41', '2017-12-08 11:51:41'),
(223, 1, 'Ee5i5S8MD2HQVPa7TKeEK3HekFbSCLcO', '2017-12-10 19:42:21', '2017-12-10 19:42:21'),
(224, 1, 'JebpNZTP11ct8IzcxmbYePuG978Jpumq', '2017-12-10 20:05:44', '2017-12-10 20:05:44'),
(226, 1, 'qPVObxjq9k29qoRVkiAV89K6Ds8MnpRz', '2017-12-10 21:48:03', '2017-12-10 21:48:03'),
(227, 1, 'Q0mGHYM1KOmlyLqq9Kw2lH5F1e2t8nIE', '2017-12-11 09:24:23', '2017-12-11 09:24:23'),
(228, 1, 'PKvAShIoy3rHzKX98qFrlcxx9q0weXbE', '2017-12-11 20:07:50', '2017-12-11 20:07:50'),
(229, 1, 'D3EIc9je8gVdFHzEluwGYSxLvcYWfISa', '2017-12-12 10:23:23', '2017-12-12 10:23:23'),
(230, 1, 'LlCfFTdhZIG7Fqb0249N2hlssIbwgswv', '2017-12-12 19:38:58', '2017-12-12 19:38:58'),
(231, 1, '5P3ys652WPCFCcMEtYp9K6YFz8KClLdt', '2017-12-12 20:37:12', '2017-12-12 20:37:12'),
(232, 1, 'AuLUtUUmPWZaLWJxm2RtyHkflWsMlIvb', '2017-12-12 20:48:06', '2017-12-12 20:48:06'),
(233, 1, 'OoMvRAracnoqhoXECrlxDTA8S4M7pGEC', '2017-12-12 21:39:03', '2017-12-12 21:39:03'),
(234, 1, 'LspxbedO8o6CbiofYR0uqLfOwunUpfCT', '2017-12-12 22:11:41', '2017-12-12 22:11:41'),
(235, 1, 'TaJdE7jjBDOwYE4eqf955JoMQh2MGnga', '2017-12-12 23:42:01', '2017-12-12 23:42:01'),
(236, 1, '9ldSOnqDOOdFI4SuMFTE5sOXeKeDaFMK', '2017-12-13 01:24:31', '2017-12-13 01:24:31'),
(237, 1, 'Omqc5SMLNnckeyPe5h70EHA0yUqZ1yAr', '2017-12-13 01:26:17', '2017-12-13 01:26:17'),
(238, 1, 'N57JQIUmXSgVZUN25mI9zA6QB3krnDJa', '2017-12-13 01:27:02', '2017-12-13 01:27:02'),
(239, 1, 'tKi6yXfXoogbGH6Ui12Pps4xBnKQQ1Y6', '2017-12-13 02:42:24', '2017-12-13 02:42:24'),
(241, 1, 'fdAX0oX5HE6HEOuPnpQOCPJPQHOTJazL', '2017-12-13 11:11:26', '2017-12-13 11:11:26'),
(243, 1, '5F15aKMYAKbpu8xARjjk4Z3b4ZLLaiHN', '2017-12-13 19:46:28', '2017-12-13 19:46:28'),
(244, 1, 'bmx6cC4QULNMW3CCh933DzA3kvhDM0ai', '2017-12-13 20:18:26', '2017-12-13 20:18:26'),
(245, 1, 'p89msT6X0idRVFgnJegC63D5VXzGzQZs', '2017-12-13 20:46:43', '2017-12-13 20:46:43'),
(247, 1, 'pS5xSImoYKACiZzQYCbCN9WYfAyE17BJ', '2017-12-13 23:44:24', '2017-12-13 23:44:24'),
(248, 1, 'Ei3UzlkB8E8L2EwvJ6uf7RqWbSiEXWqw', '2017-12-14 02:24:40', '2017-12-14 02:24:40'),
(249, 1, 'XDhhxpNpsyR8JqU9QF9ciEtMAUxzQb70', '2017-12-14 05:39:40', '2017-12-14 05:39:40'),
(251, 1, 'gYei12wI1Xx9L458waGZcXrpzfJSLrEw', '2017-12-14 05:40:20', '2017-12-14 05:40:20'),
(253, 1, 'o0i98RskGVcDO68h58WHtVILX3X7GyZZ', '2017-12-14 08:30:08', '2017-12-14 08:30:08'),
(254, 1, 'rYXzVG9bTG0q8AAikn8E1gKFDUln4zZT', '2017-12-14 17:36:03', '2017-12-14 17:36:03'),
(255, 1, 'yaZ3Gkr2fhEHy46HJzcTlIMgLZjtVE0P', '2017-12-14 18:39:23', '2017-12-14 18:39:23'),
(256, 1, 'YmZvD9xhUam8WQjZebIu5UA5fa79Vmpw', '2017-12-14 19:13:37', '2017-12-14 19:13:37'),
(257, 1, 'GHd02IbsGjboWps4UOuoRMKEHhdAeM4Q', '2017-12-14 19:20:29', '2017-12-14 19:20:29'),
(258, 1, 'bEwsrdAAVsEols37gzepZRofpjQ5CpkS', '2017-12-14 19:46:00', '2017-12-14 19:46:00'),
(259, 1, 'Op5b8y1v9a1Z1AasgU1buuI9PXTpXq14', '2017-12-14 20:36:43', '2017-12-14 20:36:43'),
(260, 1, 'H491pNtELCOBnhzmGJJG5pVQqCQqQ6y9', '2017-12-15 07:13:52', '2017-12-15 07:13:52'),
(265, 1, 'x7SZJyE8pqvN1UmSOiLMvTIDgPU8Op1v', '2017-12-15 23:56:34', '2017-12-15 23:56:34'),
(269, 1, 'bCLJ9ILMZeWaTyO9PK1h4WZ3yG712Q3h', '2017-12-16 00:27:26', '2017-12-16 00:27:26'),
(270, 1, 'VTVKHrHmyn9Ree3oENKNiqLQ8PEllFBP', '2017-12-16 00:40:12', '2017-12-16 00:40:12'),
(271, 1, 'tE71PsmEixwJk0QCDYeIEPpZ6XfzfmQL', '2017-12-16 02:57:23', '2017-12-16 02:57:23'),
(272, 1, '5aHeCSmiZ5bKLIYyaV3gGw8msN1aA63K', '2017-12-16 08:08:53', '2017-12-16 08:08:53'),
(282, 1, 'EUtWgeynbqabsviLDajTiXg6az4xEx4S', '2017-12-16 11:25:51', '2017-12-16 11:25:51'),
(283, 1, 'xKZoSmxNW0WGyljs2cdzeQI7OoHOEYbj', '2017-12-16 20:33:48', '2017-12-16 20:33:48'),
(284, 1, '958RICNQ5SWqdtnNopOEAQEGjy71OLrP', '2017-12-17 07:52:39', '2017-12-17 07:52:39'),
(286, 1, '5wQF5syYD14KXWyo2G0TdOpFgPvDwWML', '2017-12-17 19:52:04', '2017-12-17 19:52:04'),
(287, 1, '57cBU7Ds9QMsjwn0klqjotmHkWuIFlp7', '2017-12-25 19:27:36', '2017-12-25 19:27:36'),
(288, 1, 'pSNdXiePmuervyNG25HffYLqSY4CqCNV', '2017-12-25 21:29:41', '2017-12-25 21:29:41'),
(289, 1, 'HrHLtRQPfVz6XIzSP9YMkHOswmru4q9A', '2017-12-25 21:47:02', '2017-12-25 21:47:02'),
(290, 1, 'loABizfP1dl9zchCj2681qVIsF3OKrJ3', '2017-12-27 10:38:20', '2017-12-27 10:38:20'),
(291, 1, '6oNxIkIquNcQIOEPZnb9gd69OiMONpDD', '2017-12-27 10:45:14', '2017-12-27 10:45:14'),
(292, 1, '1tEcrFgJDbeU1aUB6H5mnmO7zua63PuQ', '2017-12-27 19:13:01', '2017-12-27 19:13:01'),
(293, 1, 'MUkVIspzdlXbtHyCGhcCsnvK7SeCkOVu', '2017-12-27 19:25:12', '2017-12-27 19:25:12'),
(294, 1, 'PSyuKpYZcZ9Ji2eZ5j5rfSh0u6yWDxDS', '2017-12-27 22:32:12', '2017-12-27 22:32:12'),
(295, 1, '5QXQdR5dMiMQF4MSYyuVsYzj5N51Tzux', '2017-12-28 01:38:51', '2017-12-28 01:38:51'),
(296, 1, '6oyeQrWmS58vLjNBe4iMxPX7mUl4gJ8g', '2017-12-29 02:09:33', '2017-12-29 02:09:33'),
(297, 1, 'myq1k4YmAJV6HmELv3CY4Fme7QllpMyV', '2017-12-29 05:40:48', '2017-12-29 05:40:48'),
(298, 1, 'KqG7rQKRTxtJ5owuAVvKCpgDd9ylxyuB', '2018-01-01 19:20:46', '2018-01-01 19:20:46'),
(299, 1, 'gGIbwURi3h2p30EwdzpVSN7s89oJbs1o', '2018-01-01 19:42:39', '2018-01-01 19:42:39'),
(300, 1, 'TMAKb6m8MTahrN1lFJTIoni9vymizoPX', '2018-01-01 22:34:23', '2018-01-01 22:34:23'),
(301, 1, 'fZ3RQ9jvj6UvF2UOcrWIC5tnFpmqrmJr', '2018-01-02 00:59:34', '2018-01-02 00:59:34'),
(302, 1, 'mP3Z9KVER7893IYjcGERZFXKDhm7biAm', '2018-01-02 18:30:12', '2018-01-02 18:30:12'),
(303, 1, 'tsyksujmywH7Hoz3hxqML9Th24Zcv3Dy', '2018-01-03 00:41:50', '2018-01-03 00:41:50'),
(304, 1, 'dMRpWGk7Uvdn3lza8LXBsbteeUnWMOSW', '2018-01-03 05:04:01', '2018-01-03 05:04:01'),
(305, 1, 'F8pNbJFdCdNEIwRCgulVQ1rb5oYmT267', '2018-01-03 09:50:30', '2018-01-03 09:50:30'),
(308, 1, 'mmgyGjX6FKaZrTA1Sy46Xk5afFSPTiLz', '2018-01-03 10:32:13', '2018-01-03 10:32:13'),
(309, 1, 'WkZAETYgs1qll9a5SzLJ5emRNEM2jQcC', '2018-01-03 19:35:54', '2018-01-03 19:35:54'),
(310, 1, 'i3u3Fev9GhSTSKw8zqKOtDxyBukTswNF', '2018-01-04 00:00:04', '2018-01-04 00:00:04'),
(311, 1, 'wIgyuIWSRPW3SoRC3SCDlIdvMSN1ntwp', '2018-01-04 07:50:26', '2018-01-04 07:50:26'),
(312, 1, 'lhTwGs8hINh78Dsjm9VZpOqyGh4ubnFD', '2018-01-04 18:27:00', '2018-01-04 18:27:00'),
(313, 1, 'XZqSKTU7fCn9dhY7pDGf6ny090eeqe8H', '2018-01-05 05:03:20', '2018-01-05 05:03:20'),
(314, 1, 'xPlA9MCUQ1DqNmZwgnVqmexRptuA4bju', '2018-01-05 07:13:15', '2018-01-05 07:13:15'),
(315, 1, 'tIKVZUBkeaj76cE4QGvO5rqFgawgYMNP', '2018-01-06 03:08:10', '2018-01-06 03:08:10'),
(316, 1, 'ntMLkIGaGhDneocoWJFOZTyl6MhuzZan', '2018-01-06 12:28:22', '2018-01-06 12:28:22'),
(317, 1, 'QU8qluCPQ7F4XdP5njtjcRWqzlXX9S8h', '2018-01-06 22:56:38', '2018-01-06 22:56:38'),
(318, 1, 'Us4ZHvY5DHcwpQVf9XysqakskdvsAzFV', '2018-01-07 04:20:27', '2018-01-07 04:20:27'),
(319, 1, 'AsTUE50pKXOtm27NbymiqbnpVrlhzWQ4', '2018-01-07 07:12:26', '2018-01-07 07:12:26'),
(320, 1, 'TSocJysjRMp42L96vEg02rwZBiEUKyyN', '2018-01-07 09:18:55', '2018-01-07 09:18:55'),
(321, 1, 'KQ0cszOBSWH87hnzA7wcYJLSbNcVQgpg', '2018-01-07 19:37:24', '2018-01-07 19:37:24'),
(322, 1, 'H8BxgWKyBTe4U5lwpdbYG43owssAnk1y', '2018-01-08 02:28:24', '2018-01-08 02:28:24'),
(323, 1, '8CEZcoGrealxWIzhXRxoDIGmPieyZkGP', '2018-01-08 04:07:45', '2018-01-08 04:07:45'),
(324, 1, '9wJ8Z8j1bqUBFAPGBkUytzbUmZqKV3HL', '2018-01-08 08:56:34', '2018-01-08 08:56:34'),
(325, 1, 'XKZh1syWLfcamMSbLhsL9SJVPf2Mfv67', '2018-01-08 10:14:35', '2018-01-08 10:14:35'),
(327, 1, 'loNG0asl3Sj6zCitYw1n692cZ5AWL72j', '2018-01-08 23:13:14', '2018-01-08 23:13:14'),
(328, 1, 'kFqFfFmhk2m2hy3Bj3Kuhn8YkI6WyGP1', '2018-01-08 23:20:42', '2018-01-08 23:20:42'),
(329, 1, 'U7t1BBwwPaAhglF8LUPBuWCzHANUDsKh', '2018-01-09 01:22:36', '2018-01-09 01:22:36'),
(330, 1, 'kryBmI5jqwrndEJvS7r4QFl5aKOUn4Rl', '2018-01-09 11:51:15', '2018-01-09 11:51:15'),
(331, 1, 'Yll3QjOrDTaxUkqpcbg62fOqmFlHLhgp', '2018-01-09 20:29:19', '2018-01-09 20:29:19'),
(332, 1, 'AYnzFsKBk3DG8o1HFCkbUaRcTs92YbM3', '2018-01-09 21:30:21', '2018-01-09 21:30:21'),
(333, 1, 'rNBV0y0Wan6Qpj65pQmiJOQ52qtkQ0sL', '2018-01-10 00:31:26', '2018-01-10 00:31:26'),
(334, 1, 'jKTPdBjo4Ev0seh3qIoU8CMVvIE0TTkE', '2018-01-10 02:52:39', '2018-01-10 02:52:39'),
(335, 1, 'E8NFXc9C2nsm8W6FWfgrrGsobWiPRnCT', '2018-01-10 08:34:20', '2018-01-10 08:34:20'),
(336, 1, 'vQMwlhh0SMMXZiQ7fQX1UweaJtNwM2Bv', '2018-01-10 19:06:53', '2018-01-10 19:06:53'),
(337, 1, 'ws5Lv88o5eWYYKzeiqwIHXmhwb5ItcOf', '2018-01-11 07:38:41', '2018-01-11 07:38:41'),
(338, 1, 'ouWCgfhI5q9H3k4h6w2tttsiJV8y3Qzp', '2018-01-11 10:31:12', '2018-01-11 10:31:12'),
(339, 1, 'elx9rwAfOXrPGOmTcsxZ9gsI5i9B9FAJ', '2018-01-11 10:32:25', '2018-01-11 10:32:25'),
(340, 1, 'utdXQIFty8RcOHFm8tpglAx8ANG7irml', '2018-01-11 18:57:38', '2018-01-11 18:57:38'),
(341, 1, 'XigZe34t3cWVnSlrmtPwHHvUHXNHmyPT', '2018-01-11 19:10:44', '2018-01-11 19:10:44'),
(342, 1, 'wwJoo2CBoB1bdZp6C56TPlo1lQ7mLSUa', '2018-01-11 23:57:32', '2018-01-11 23:57:32'),
(343, 1, 'D4OaTt5Z6zu1q6cPPJdne029l1QSAIJz', '2018-01-12 00:55:46', '2018-01-12 00:55:46'),
(344, 1, 'pvdA7qp7hS1G0FazeLwNIJkHXK7hQXzs', '2018-01-12 01:56:45', '2018-01-12 01:56:45'),
(345, 1, 'TcFmUyoJEeyOuCos5ePBdYugNanUjxVd', '2018-01-12 02:06:12', '2018-01-12 02:06:12'),
(346, 1, 'gKRIy92eSDkDLPtDEzZxHPvTO7vmNoaA', '2018-01-13 12:11:00', '2018-01-13 12:11:00'),
(347, 1, 'RHDxUSWbh2csZRCETQ3hXJuTLr4FyzzU', '2018-01-13 13:09:15', '2018-01-13 13:09:15'),
(348, 1, 'pTRVtKlFP6VnVnh61v9ZDhDBtutgZcta', '2018-01-13 13:12:05', '2018-01-13 13:12:05'),
(349, 1, '6k8RmyBaDmXZTwXKws2BaqjnebRDA46s', '2018-01-13 22:32:59', '2018-01-13 22:32:59'),
(350, 1, '29aWBcPaThOZhTUJ3TCMTr06inrXXpPc', '2018-01-14 05:18:27', '2018-01-14 05:18:27'),
(351, 1, 'l1FodYbVYnF5qllJXQn47jURkjbYQIah', '2018-01-14 09:12:20', '2018-01-14 09:12:20'),
(352, 1, 'C7CLHzromxCwETZPNWuFB5KQ1lLgJktO', '2018-01-14 09:39:44', '2018-01-14 09:39:44'),
(353, 1, 'Y7i1AwV61KINlely1225s2t3KYEoTeCl', '2018-01-14 09:54:05', '2018-01-14 09:54:05'),
(354, 1, 'yEepEQljz0lQ9veGResUYlNzZmZVSzYY', '2018-01-14 21:21:16', '2018-01-14 21:21:16'),
(355, 1, 'MoHMY2GAVZ06IfQ8lOrjvKHgSpRlt3sf', '2018-01-14 21:43:17', '2018-01-14 21:43:17'),
(356, 1, 'gJFjqXGL718vBEDWtiWFqrXd7wzQ3PJu', '2018-01-15 11:12:16', '2018-01-15 11:12:16'),
(357, 1, 'lAT4nQL5p2NV6Av36QLpsaS9oTck2miN', '2018-01-15 18:30:37', '2018-01-15 18:30:37'),
(358, 1, '7YzpEdozcjd8zxPMQBoLKz4wKQNvPvmk', '2018-01-15 18:55:34', '2018-01-15 18:55:34'),
(359, 1, 'CDE7azpfNeLEJOz3qA6iixYxURaNY7eL', '2018-01-16 02:56:25', '2018-01-16 02:56:25'),
(360, 1, 'MeVL2sSlFRzhrG0xaJ6ZqRoDCyyrfqpw', '2018-01-16 10:27:54', '2018-01-16 10:27:54'),
(362, 1, '7YWkgnr0fcthbBrZtZxI5VYfq9GkeIrH', '2018-01-16 20:15:12', '2018-01-16 20:15:12'),
(363, 1, 'C7HQZp1uoHWuUddbCURbC67F8WRFPbhz', '2018-01-16 20:57:30', '2018-01-16 20:57:30'),
(364, 1, 'An1hk9DM1kFNeHQDbXs26BUas2QhrMQM', '2018-01-17 00:28:12', '2018-01-17 00:28:12'),
(366, 1, '1wUTqWD2BFEEIS98lz1DmfP6K2QhdeMT', '2018-01-17 00:47:17', '2018-01-17 00:47:17'),
(368, 1, 'qsZQcTzpevnkZoiyIpQbaR4qu3r4g3GV', '2018-01-17 04:18:35', '2018-01-17 04:18:35'),
(372, 1, 'WjL3wP64VMbVgVUFVl99MdM5kcIdpQCy', '2018-01-17 08:29:47', '2018-01-17 08:29:47'),
(373, 1, 'ttUIgNCKBMBEkjLsKH9WuRDAEG4TPjzU', '2018-01-17 20:14:51', '2018-01-17 20:14:51'),
(374, 1, 'noRUog2Feq5ZNAGHfze9DBaubeDzabca', '2018-01-17 20:57:02', '2018-01-17 20:57:02'),
(375, 1, 'zkZ51ymxpywKCyuXmR3HqwHymINrQMfz', '2018-01-18 00:10:25', '2018-01-18 00:10:25'),
(376, 1, 'lzNZOymz8HgNudpRO5sMyTKipm0tpDGF', '2018-01-18 00:16:14', '2018-01-18 00:16:14'),
(377, 1, '2yCG7tSmilLxN8pzJjS2eMkCbplTTJ0h', '2018-01-18 03:52:31', '2018-01-18 03:52:31'),
(378, 1, 'RMWiH4kf71KduXOMGFtgTa3VDI7RA25R', '2018-01-18 09:25:22', '2018-01-18 09:25:22'),
(379, 1, 'jXAi4A9SVVlzEzUs51gWW6AFaJRNKgkG', '2018-01-18 11:20:09', '2018-01-18 11:20:09'),
(380, 1, 'WxxLLaypmZiGOfHWBQbzPUjt0bams3gx', '2018-01-18 11:57:31', '2018-01-18 11:57:31'),
(381, 1, 'KkJ6EvsSh1GkOXBYtfLzTeTE4H2mLzTT', '2018-01-18 19:23:30', '2018-01-18 19:23:30'),
(382, 1, 'xF88UwOSd9p1tmkrmBOEgAjIomkJB0Hx', '2018-01-19 00:25:51', '2018-01-19 00:25:51'),
(383, 1, 'A32q6kvPJplJ4WAIYSrx60zCSSnxpaDG', '2018-01-19 01:20:22', '2018-01-19 01:20:22'),
(384, 1, 'lPLxh0KbKNSsXA2BILeBXobgaGj68OKR', '2018-01-19 02:03:13', '2018-01-19 02:03:13'),
(385, 1, '5HCVqG0BkfTwNNXMnON1OkvmplY5VtPh', '2018-01-19 09:04:44', '2018-01-19 09:04:44'),
(386, 1, 'taFneiiXaSPaXyiEJwFR60oA690Cb2X8', '2018-01-19 20:43:49', '2018-01-19 20:43:49'),
(387, 1, 't23Yq0Wf57G9dDYIZ2lHzkBEnq6ICQAK', '2018-01-20 11:58:10', '2018-01-20 11:58:10'),
(388, 1, 'XmFShMJFqbARwYvuwfNLSOdWLrZmr32z', '2018-01-20 21:08:01', '2018-01-20 21:08:01'),
(389, 1, 'MBWjdSM0CwnQcdFbo5ea8EyDH1YC5ST0', '2018-01-21 05:40:50', '2018-01-21 05:40:50'),
(390, 1, 'evDd4G82kjgac50TOKv1DZrobHzWEZr8', '2018-01-21 08:05:52', '2018-01-21 08:05:52'),
(391, 1, '4dPKUN7BFQPOuGvA8Xt8Oh8azZQQ9pkx', '2018-01-21 10:51:12', '2018-01-21 10:51:12'),
(392, 1, 'iOi6rBobAw6B2Khg9CLDbPizVJYKGW94', '2018-01-21 18:51:39', '2018-01-21 18:51:39'),
(393, 1, 'CY5tmN8UCUMqmSVoRFOipfHKUpoT0j4f', '2018-01-22 00:07:03', '2018-01-22 00:07:03'),
(394, 1, 'aGzNsWOhDrVlT9HIVVFwCpsue1r7D5YA', '2018-01-22 00:44:48', '2018-01-22 00:44:48'),
(395, 1, 'VS5iiETNULvHItpuUmHQUH81sChbbY1l', '2018-01-22 19:02:07', '2018-01-22 19:02:07'),
(399, 1, 'NWnj4UvnZqwWOTX3CeusZ6v8Fhf2c6ub', '2018-01-24 19:02:36', '2018-01-24 19:02:36'),
(400, 1, 'VLSxXPLlSKCtughyjzMut9ug3flrhyi1', '2018-01-24 19:27:36', '2018-01-24 19:27:36'),
(401, 1, 'SnMonFyxu1katYF7DoIioInfgbQIbY6Z', '2018-01-24 23:56:14', '2018-01-24 23:56:14'),
(402, 1, 'u8RnIhbv4c9eCZZaMSjHrsM9hfTRb3r5', '2018-01-25 00:09:18', '2018-01-25 00:09:18'),
(403, 1, 'kb7yBdeIHuIl4kIa9Jt7nDFpllfRVRhx', '2018-01-25 02:08:12', '2018-01-25 02:08:12'),
(404, 1, 'gVw8xTL0zeKZYrqEGP4CcC85esbG8ypE', '2018-01-25 18:18:17', '2018-01-25 18:18:17'),
(406, 4, 'A4FLGiVU9LvfsVEp5mrRl5TZl6nb3ksW', '2018-01-26 01:05:01', '2018-01-26 01:05:01'),
(408, 4, 'aiVheclIV8RMZL6ZMbi0Dg04vjfucSZP', '2018-01-26 01:05:31', '2018-01-26 01:05:31'),
(409, 1, 'gUdW9qbl64egCPRWtavTK9wnexEo3keM', '2018-01-26 01:08:27', '2018-01-26 01:08:27'),
(410, 4, '3HSzUQI78C96yV5DRt6jGX33bdYCK9fb', '2018-01-26 01:43:11', '2018-01-26 01:43:11'),
(411, 4, 'tOlFF3JRWPtyXMuVCeaaMiHjBd2elRJF', '2018-01-26 01:44:07', '2018-01-26 01:44:07'),
(412, 4, 'NscMqRLmkV3IOWMf6RhfVuJbkL8xgsDC', '2018-01-26 01:46:45', '2018-01-26 01:46:45'),
(414, 6, 'wgJCXkC4Mn1V5f0YC9lp8bPKDt85kGtq', '2018-01-26 02:25:04', '2018-01-26 02:25:04'),
(416, 6, 'zSKba5kTj8Qr4ojFsxLqGI7xLuD4q0WR', '2018-01-26 02:30:32', '2018-01-26 02:30:32'),
(417, 6, 'rzG8JBGeT8fiapZ9DtD2uip0lQJwh5q2', '2018-01-26 02:37:18', '2018-01-26 02:37:18'),
(419, 1, 'Sw9M1Lswoukl6vcgMxoFzXvaAtMQCxAA', '2018-01-26 02:57:09', '2018-01-26 02:57:09'),
(420, 1, 'uUOUyXWyeFziFHkxz8h4bDzxhywQ37Si', '2018-01-26 02:57:48', '2018-01-26 02:57:48'),
(421, 1, 'MbKhVbGfhtxwZPPVgtHxdstVXuLeAaiU', '2018-01-26 02:58:29', '2018-01-26 02:58:29'),
(422, 1, 'wJ73tjH6p3w5MYYe7n21fOiCeA3QZfKb', '2018-01-26 02:58:29', '2018-01-26 02:58:29'),
(423, 1, 'VnxOGigvNVkdiHwI3uvstUftvZRW8oBI', '2018-01-26 02:58:36', '2018-01-26 02:58:36'),
(425, 6, 'J0ifpUcLW0NOdbzz7ewLRHG9BpBcOrRA', '2018-01-26 03:17:02', '2018-01-26 03:17:02'),
(427, 6, 'balWgkJAiveVZzQfMycjeIUYgqNmLW3y', '2018-01-26 03:35:38', '2018-01-26 03:35:38'),
(429, 6, 'UyB9F0vWGHpwS1r9avhYxJizwU4HVIwM', '2018-01-26 03:39:37', '2018-01-26 03:39:37'),
(431, 6, 'qfkVlp3dp4QXymKAkS2PfMQCdIeFHQOx', '2018-01-26 04:32:49', '2018-01-26 04:32:49'),
(433, 1, 'A3z4mzsQPa7TSS1rthS9qcXBXGZRHvME', '2018-01-28 09:36:02', '2018-01-28 09:36:02'),
(434, 1, 'fAPFbxNuoTiKlDhdRh4hZPCArPfnVG4h', '2018-01-28 09:36:02', '2018-01-28 09:36:02'),
(439, 1, '0KG2CDdHiNeVtq5WaMwsrvsHxWeLiY9E', '2018-01-28 09:59:33', '2018-01-28 09:59:33'),
(441, 1, 'coUpXV4oip1EFQd6L1wHB22aEgmD85MB', '2018-01-28 10:02:44', '2018-01-28 10:02:44'),
(442, 1, 'qxtyJQgQjE7IdV5pnazmZdm0VB1dGvJn', '2018-01-28 10:02:44', '2018-01-28 10:02:44'),
(443, 1, 'eBajDKsoIEBHqQFXz0BKLjJ9nJHtELsK', '2018-01-28 18:19:52', '2018-01-28 18:19:52'),
(444, 1, 'l9baDmYe0AnLN5Gle9ep2sE7cHEVOnr5', '2018-01-28 18:19:52', '2018-01-28 18:19:52'),
(447, 8, 'GmZMlufC8X5lo3RzA5gsyz2kXYwWvwQF', '2018-01-28 20:45:36', '2018-01-28 20:45:36'),
(448, 8, 'PPGJaXq6NaHLG1dnSP9FOkjzFSdKqvvI', '2018-01-28 21:38:01', '2018-01-28 21:38:01'),
(449, 1, 'vBzzq1RtNsCmGiczUJLFsHSyNzTTubXg', '2018-01-28 21:38:13', '2018-01-28 21:38:13'),
(451, 1, 'B3WzQ8UpMARDoY28vEkB7erfEEpHmLT1', '2018-01-28 21:38:37', '2018-01-28 21:38:37'),
(454, 8, 'tn7HvCBoyGphTHqjxPl0d3fJ3TWVRmTi', '2018-01-29 00:39:35', '2018-01-29 00:39:35'),
(457, 1, 'oo71n7ghA1RolYX2RzzeXwiTJ4KcV6zr', '2018-01-29 18:33:51', '2018-01-29 18:33:51'),
(458, 8, 'jfRtZvsf76QuiNUNY0sgWSA0SbX0YmBR', '2018-01-30 01:41:20', '2018-01-30 01:41:20'),
(460, 1, 'V2vGTjxoDwMXXVvXTCCsodx2oqNRBswK', '2018-01-31 00:07:51', '2018-01-31 00:07:51'),
(461, 1, 'WXfdX3IbIO2N4pHvxeElybt2HWjDzpsZ', '2018-01-31 00:07:51', '2018-01-31 00:07:51'),
(462, 1, 'zWSf8uHGNVGZn8HsVpCc4iowpPHSBqvU', '2018-01-31 09:19:53', '2018-01-31 09:19:53'),
(464, 8, 'ajfSvynTDfObqdqWFVTaN52EkMP1AUNJ', '2018-01-31 10:29:33', '2018-01-31 10:29:33'),
(465, 8, 'ag2Euhwpe5LXZvoQ1FsRXSH2yo0EHwsm', '2018-01-31 10:35:49', '2018-01-31 10:35:49'),
(467, 8, 'yR8tHjT4HKlrVJLADJ5LykJbP27czCKC', '2018-01-31 10:38:45', '2018-01-31 10:38:45'),
(468, 1, 'gJnB66CrVq6a8Mo6GhtYiOtLZhZ1LTMd', '2018-01-31 10:50:07', '2018-01-31 10:50:07'),
(475, 1, 'L7DcvNPiOQIUjCUATn61Y2sh3g3R2k49', '2018-01-31 19:35:25', '2018-01-31 19:35:25'),
(476, 1, 'QK86h3fyZTBFMRUhuP0ZKm1Wq4kzxPbS', '2018-01-31 19:35:25', '2018-01-31 19:35:25'),
(478, 1, 'VqoYkwd6LBv1rVWPEtIMR05InmYOuszG', '2018-01-31 19:55:02', '2018-01-31 19:55:02'),
(479, 1, 'JztvQ0vdnItZtqSiZD0Fi6NEK6c5PjZc', '2018-01-31 19:55:02', '2018-01-31 19:55:02'),
(481, 8, 'zX2GBFJB6Jpcz8jaXScc8XmWSgARW6y1', '2018-02-01 01:42:35', '2018-02-01 01:42:35'),
(482, 8, 'JWqpm7p61IXddy2YyuMkzHTdg7OWwVdL', '2018-02-01 01:50:31', '2018-02-01 01:50:31'),
(483, 1, 'Ck89j1QoAOeoNZvhYi5wPRW4nTm0C1dq', '2018-02-01 02:29:04', '2018-02-01 02:29:04'),
(486, 1, 'AKrOzoCvVttxLIVRMnTD6GPbj2iWGwvK', '2018-02-01 02:56:37', '2018-02-01 02:56:37'),
(487, 1, 'BaciCQSFrRR68rCmWlXSBTzmdHd27uiN', '2018-02-01 02:56:37', '2018-02-01 02:56:37'),
(488, 1, 'KGY6WVGRXBb3UJWz8YnDSw8hXGgzgkA6', '2018-02-01 11:35:24', '2018-02-01 11:35:24'),
(489, 1, '6WdgCEIxtViQrSWjU3UK9HL7wyZ34TUX', '2018-02-01 11:35:24', '2018-02-01 11:35:24'),
(490, 1, 'SfQrjxzVWC8XrSnz8yWht0t3Q8UQdOQr', '2018-02-01 18:27:36', '2018-02-01 18:27:36'),
(494, 1, 'RjNhUlg5noCoWG1eUNo1StHO874EkDvu', '2018-02-01 19:03:40', '2018-02-01 19:03:40'),
(497, 1, 'cESLyplJNgtAmPpMwURnw68ZWEV39PK2', '2018-02-01 19:42:32', '2018-02-01 19:42:32'),
(499, 8, 'NtMOofbv1v5rH5JB3OUHnsrFrF271Tzi', '2018-02-01 20:49:06', '2018-02-01 20:49:06'),
(500, 1, 'wcFo02JafGaHPsM64DKM6t3jA5wTrYjF', '2018-02-01 20:56:50', '2018-02-01 20:56:50'),
(502, 1, 'fGUtMqDBI2ZARFPFBhlaxnCkzrm7UodL', '2018-02-01 20:57:08', '2018-02-01 20:57:08'),
(504, 8, 'KfXSL3FN1hK8b6QT9LdmouyS37T0qqHB', '2018-02-01 20:57:36', '2018-02-01 20:57:36'),
(505, 1, '8Iv9LY8GOJZd1WTl1I5Wz01lx1KzdZWT', '2018-02-01 20:58:09', '2018-02-01 20:58:09'),
(507, 1, 'w9M0kSWQtdQD7zD6stbK63JUbTj1u058', '2018-02-01 20:58:17', '2018-02-01 20:58:17'),
(510, 8, 'NJ76oLl9RoWbXTJShfkd00cpuQZK5zr5', '2018-02-01 21:37:57', '2018-02-01 21:37:57'),
(511, 1, 'jgz8uBUFbY3MSxPOXp7bqA0knGoU5zi7', '2018-02-01 21:37:59', '2018-02-01 21:37:59'),
(514, 8, 'JsQzqbxIGhNuS6SeJ4y8eCnhSDJaeL3s', '2018-02-01 23:56:53', '2018-02-01 23:56:53'),
(515, 1, 'r3gBMpKSI53eQpXqydREPc6oSjC06OUB', '2018-02-01 23:56:56', '2018-02-01 23:56:56'),
(518, 1, 'QoyBvVRHUwmgnGPnOcyUXU4YqPRqMZVe', '2018-02-02 00:01:51', '2018-02-02 00:01:51'),
(521, 1, '0SWAzz5NkBMas3g7T6GC34L38vm83epY', '2018-02-02 00:19:04', '2018-02-02 00:19:04'),
(524, 1, 'MQuKcCFJhtuKynkQkFHxyZBLIy8Ivd3r', '2018-02-02 00:24:05', '2018-02-02 00:24:05'),
(526, 1, '3DniRRSZFO1aYX6cCNqgyiL0OJqpfEVf', '2018-02-02 01:06:18', '2018-02-02 01:06:18'),
(528, 1, 'OfRdoNYhFL3afKEYmg9oWZjtuhANsBfv', '2018-02-02 01:44:35', '2018-02-02 01:44:35'),
(529, 1, 'MlR5175cwkutGCxMpXuVrhgCzUgFIt9A', '2018-02-02 01:44:35', '2018-02-02 01:44:35'),
(530, 8, 'ipiaaYYS8qIo8iSdqnZ6VdkRKq1iyooC', '2018-02-02 09:02:53', '2018-02-02 09:02:53'),
(531, 1, 'wSD7DupM92LgniN8nQQvue0JvXYrEUwC', '2018-02-02 10:18:45', '2018-02-02 10:18:45'),
(532, 1, 'X2NpDhYEcKGWnyoBxRkMG0nasltzUZq4', '2018-02-02 10:18:45', '2018-02-02 10:18:45'),
(533, 1, 'HdLRvWB8aWY9gaFouz9JVIZii2eGcpPp', '2018-02-02 19:05:37', '2018-02-02 19:05:37'),
(535, 1, 'ot4ul9MDUpNjh3avRZwfDQhckk7zNpNC', '2018-02-02 19:07:26', '2018-02-02 19:07:26'),
(536, 1, 'QMzisn3xBXMMAegjFxwbyYlkU2opUFRz', '2018-02-02 19:07:26', '2018-02-02 19:07:26'),
(538, 8, 'ubMneyA1o1wIPK0UHx6I8WuhTRJlYHkP', '2018-02-02 21:16:54', '2018-02-02 21:16:54'),
(539, 8, 'qGTddyiGKSzM0wHVkenVijba0gtvLqOt', '2018-02-03 04:53:58', '2018-02-03 04:53:58'),
(541, 8, 'Nwn0yVO5SlhBd9eY4Z46SbZ1gEPi5IEr', '2018-02-03 09:41:10', '2018-02-03 09:41:10'),
(543, 8, '1aF9GIC1ZWN63Q3hyjgcI91MVJfM5syC', '2018-02-03 13:40:10', '2018-02-03 13:40:10'),
(544, 8, 'Ac5aAgvHGYcsowe9TvjwCmQ4Pp1qNc5P', '2018-02-03 22:01:23', '2018-02-03 22:01:23'),
(546, 1, '2DXLdK0k8pyyhkft4O1N31OHN3qVoZYv', '2018-02-04 06:13:43', '2018-02-04 06:13:43'),
(551, 1, '8Vt8s6xqOFyHpiqYk2QykhWXRenYyUJW', '2018-02-04 08:07:49', '2018-02-04 08:07:49'),
(557, 8, 'COuQ7uk7ZUXmIXoa9x5b5d0WhvRAniBn', '2018-02-04 12:33:20', '2018-02-04 12:33:20'),
(558, 8, 'qLTc2Kf6n28q8us3IMOWD4xzBoQMtVTk', '2018-02-04 18:52:19', '2018-02-04 18:52:19'),
(559, 1, 'OrzHOZ6ZZKJqxkZ0uuh7RKPL9XURJpXd', '2018-02-04 22:21:08', '2018-02-04 22:21:08'),
(561, 8, '1PJvdJesyc0mWbqOamG4hCblgkwH5qgI', '2018-02-04 22:47:36', '2018-02-04 22:47:36'),
(562, 8, 'tVXO1RdjrqL2sGvzHXidbAPJIamEnWxw', '2018-02-04 22:53:02', '2018-02-04 22:53:02'),
(563, 1, 'UdTjDEseGz6vBOmnq318N4Y4raiVQBrB', '2018-02-04 22:53:04', '2018-02-04 22:53:04'),
(565, 8, 'oT80knQNx6JAaH80HdUeHaCsf7HHsuwY', '2018-02-05 01:50:20', '2018-02-05 01:50:20'),
(566, 1, 'vaD9xZckMlXmH8R7l7TyJWgOZD5do7Uc', '2018-02-05 01:50:37', '2018-02-05 01:50:37'),
(568, 1, 'EOGfrIYfC9vcvYfvXURtTeVVrPmeOoXJ', '2018-02-05 01:52:32', '2018-02-05 01:52:32'),
(570, 8, 'peDpe1IKfhu56XA0DLJe8OSCk0zKJqvj', '2018-02-05 03:05:08', '2018-02-05 03:05:08'),
(571, 1, 'UINT91dzThurVugQu61SJytD5X3LmyZH', '2018-02-05 03:16:48', '2018-02-05 03:16:48'),
(572, 1, 'UM3IJ8WRYFkhphJOrwfErOH0523YDVuS', '2018-02-05 19:49:28', '2018-02-05 19:49:28'),
(574, 8, 'uaRVCHac02KAjEWxDiFmDPas2xYNUqAX', '2018-02-05 20:04:45', '2018-02-05 20:04:45'),
(579, 1, 'tnf6HppP4rV0x45qbHoz4BGfoD47gWbI', '2018-02-06 01:01:51', '2018-02-06 01:01:51'),
(580, 1, 'FZe4gTDXRLFyUZ3A17o0qnX95A1OSwer', '2018-02-06 01:01:51', '2018-02-06 01:01:51'),
(583, 8, 'tqm9bi8D3RLI8zOnKZsKAn7a7cJKmj3Y', '2018-02-06 03:00:07', '2018-02-06 03:00:07'),
(584, 1, '8IZWzK4wl0Xk01HPV8Vh1koOFhdBwZWF', '2018-02-06 19:27:14', '2018-02-06 19:27:14'),
(586, 1, '15ABJfq0cryamDZ5TV6HD9Mba3p0Uyff', '2018-02-06 20:03:27', '2018-02-06 20:03:27'),
(588, 1, '13y4QjFvSXPvYHHfN5YrsJA7kQYlqL9B', '2018-02-06 21:31:19', '2018-02-06 21:31:19'),
(589, 8, '6Lk66es0aaoHBjnWLOiXoEC09UixmRoL', '2018-02-06 22:14:33', '2018-02-06 22:14:33'),
(594, 1, 'LqfDWDEwEXDSaXGuQRMwWzjq77ji3Nly', '2018-02-07 19:10:05', '2018-02-07 19:10:05'),
(595, 1, 'mBU8rnnsiGvHbXSOV09fHj7sT1d1FloX', '2018-02-07 19:10:05', '2018-02-07 19:10:05'),
(603, 1, 'bTaiIxtbyDm1fGgESgMMIRMJB1ARzzfN', '2018-02-08 00:31:00', '2018-02-08 00:31:00'),
(605, 8, 'wxlw1jLv1NJPSyyCrjEihVsS8AkSeKdB', '2018-02-08 01:22:05', '2018-02-08 01:22:05'),
(607, 1, 'OVz8xnhOU8CPRYocJu7VZFnUKbs4F7pU', '2018-02-08 02:00:31', '2018-02-08 02:00:31'),
(608, 1, 'WvVjNtgeRP2EOW2R9aydHr7a0rqYQf8s', '2018-02-08 02:00:31', '2018-02-08 02:00:31'),
(609, 1, 'z3FGmuAL19mXNfrDX7HExsCkTbm8LYb7', '2018-02-20 18:38:21', '2018-02-20 18:38:21'),
(610, 1, '8iIAmLFC5uspsDTI1zQ9gSu25mvwHYXA', '2018-02-20 18:38:21', '2018-02-20 18:38:21'),
(611, 1, 'MFXMdjdHYLiWQo0o1aJfn28uaSrS1GDo', '2018-02-20 23:00:58', '2018-02-20 23:00:58'),
(612, 1, 'a1OKXCZYs0EMwGgaHaW2qJSZaGtsal13', '2018-02-20 23:00:58', '2018-02-20 23:00:58'),
(613, 1, 'q0j01G5VhXCVFUZ0IZ6VsCpEJfRHAWez', '2018-02-21 18:32:21', '2018-02-21 18:32:21'),
(614, 1, 'EY4TszKzR6ghCh9MaMwHAQfr8QepXbBa', '2018-02-21 18:32:21', '2018-02-21 18:32:21'),
(615, 1, '8ZTCNSIt1J9qlpQDK4PH1V0ctML0IMJr', '2018-02-22 00:51:27', '2018-02-22 00:51:27'),
(616, 1, 'nbTuhxZ0PxDipT1kSUpgDZUmFsUkwPsx', '2018-02-22 09:03:38', '2018-02-22 09:03:38'),
(618, 1, 'uKNI6Mvu1ExO7rK09MNvAovaWYHLhTs1', '2018-02-23 01:15:17', '2018-02-23 01:15:17'),
(619, 1, 'FspQxFJhmh85knlMInT4WZDQRixJz71d', '2018-02-23 18:38:12', '2018-02-23 18:38:12'),
(620, 1, 'tjOZJFQR1oDB5LaKTE8Ms8vxLUUKbbBF', '2018-02-23 18:38:12', '2018-02-23 18:38:12'),
(621, 1, 'K3NNN4k9OKUSnvmsj5kK14rq8l39pFmT', '2018-02-23 22:37:19', '2018-02-23 22:37:19'),
(622, 1, '5VdOj9t1SMTOOkxlX3SGJb8qVQ9WoHgM', '2018-02-23 22:37:19', '2018-02-23 22:37:19'),
(623, 1, 'Ul8BpMVjUeWF98UrKmTgSPUtkv9Xic9A', '2018-02-23 22:37:41', '2018-02-23 22:37:41'),
(624, 1, 'qKGsmyQqNwNTYgTG5O9sEJrmibWsYdVD', '2018-02-23 22:37:41', '2018-02-23 22:37:41'),
(625, 1, 'C7VKdFfGrpXWoomUQCmBXO02hcu8fGCO', '2018-02-23 22:39:35', '2018-02-23 22:39:35'),
(626, 1, '220mzZp1oL38PQ2d8VhliYoNo7UxHm67', '2018-02-23 22:39:35', '2018-02-23 22:39:35'),
(627, 1, 'al5sb4g355hIHLH0BIP0ejesi0XPo5Di', '2018-02-25 05:09:49', '2018-02-25 05:09:49'),
(628, 1, 'ZJXzKSM1VX1qqAWf6unOvBqLY9a6Hb6P', '2018-02-25 05:09:49', '2018-02-25 05:09:49'),
(629, 1, 'LhH0SVTSzMCqaqPf4QX0aotZP9v3taog', '2018-02-26 00:25:42', '2018-02-26 00:25:42'),
(630, 1, 'hjLZjKjEArW8ZQelh5p7QqG0vhApKwAo', '2018-02-26 00:25:42', '2018-02-26 00:25:42'),
(631, 1, 'jaftrpAl7wTji0W4Vyb16pkxzoapWsfy', '2018-02-26 01:00:44', '2018-02-26 01:00:44'),
(632, 1, '4XZRRoTxUao1PGjjCxGWXllfR5ruKWfi', '2018-02-26 01:00:44', '2018-02-26 01:00:44'),
(633, 1, 'z20ZCP6ZoaRUfjoiYXYl0VfUDtJpkV7I', '2018-02-26 18:21:19', '2018-02-26 18:21:19'),
(634, 1, 'fYkysaSFydtYce4V0Kqu66HMH98mhsZA', '2018-02-26 18:21:19', '2018-02-26 18:21:19'),
(635, 1, 'NVO6Qedfm9ioOmGBaG0UsueQmLLaMVAC', '2018-02-26 18:26:11', '2018-02-26 18:26:11'),
(636, 1, '3EHuVytNqQxcUc5Xuq08CC1n51YzNSiD', '2018-02-26 18:26:11', '2018-02-26 18:26:11'),
(637, 1, 'c4iIxDaA2K6OiJr0XAW6Tu47VBukfcQf', '2018-02-26 20:13:38', '2018-02-26 20:13:38'),
(638, 1, 'vqXjvCqJe3X1op4zgUqUCudbHjpy28gg', '2018-02-26 20:13:38', '2018-02-26 20:13:38'),
(639, 1, 'NpDrfo1E8XvDjE0mShe5FB97WcO94rn4', '2018-02-27 10:23:41', '2018-02-27 10:23:41'),
(640, 1, 'j587qEvVqx0IehstgvOJTJjUoA8k6N8X', '2018-02-27 10:23:41', '2018-02-27 10:23:41'),
(641, 1, 'PfZXqgOR1v7gA6WrxyxpyWzyrPlgvS0a', '2018-02-27 17:47:18', '2018-02-27 17:47:18'),
(642, 1, 'L5CmFhHsSk6eCz6Cozc8uR4Dpn7umBqd', '2018-02-27 17:47:18', '2018-02-27 17:47:18'),
(643, 1, 'KXjsLxOPGtNy5fY68ahfuMo4OPnNXitK', '2018-02-27 23:48:15', '2018-02-27 23:48:15'),
(644, 1, '7XxjQd4pk2DClfqq1IXry2iSKr6LmLAo', '2018-02-27 23:48:15', '2018-02-27 23:48:15'),
(645, 1, 'JHpWzQbEXMpcG0mQnTEDJw5rlUJITahI', '2018-02-28 01:50:26', '2018-02-28 01:50:26'),
(646, 1, 'HRAVYZBLZl4R5biLhwuavdWyVb43UOUj', '2018-02-28 01:50:26', '2018-02-28 01:50:26'),
(647, 1, 'uH3X4pzxKl9fV4wDwVJ1XZbpt3STpyRm', '2018-02-28 03:37:47', '2018-02-28 03:37:47'),
(648, 1, 'E13QWrFrZqr5PLSyEeYHgsAB25STeClg', '2018-02-28 03:37:47', '2018-02-28 03:37:47'),
(649, 1, 'dRkAQr52wD2puNKCRKvxA3IBwyv1C9NN', '2018-02-28 09:52:00', '2018-02-28 09:52:00'),
(650, 1, 'U4hRYTbezKc2z52vHILaLIlYizMtow8i', '2018-02-28 09:52:00', '2018-02-28 09:52:00'),
(651, 1, 'byhwFx5G9AOvJN6SyMRcv4lbyTeqtST2', '2018-02-28 19:44:49', '2018-02-28 19:44:49'),
(652, 1, '0THJSAseoUTuZ4cCGCbSOIHXTp1Q9YdI', '2018-02-28 19:44:49', '2018-02-28 19:44:49'),
(653, 1, 'GZIPErT4Bapcw5CNBQuRCr374lM8BSHm', '2018-02-28 22:07:57', '2018-02-28 22:07:57'),
(654, 1, 'CZhMa7iBCpFSEOxJpRSfLcl9qYbZ7WDN', '2018-02-28 22:07:57', '2018-02-28 22:07:57'),
(655, 1, 'srwsy5CAnIAzexTEEnYNnsBhZhfUBC6j', '2018-02-28 23:53:56', '2018-02-28 23:53:56'),
(657, 1, 'NrZQdcOBNuOR3iW97MgzDVVYdR4hWrts', '2018-02-28 23:54:01', '2018-02-28 23:54:01'),
(658, 1, 'Th102BYfA2BEu65BdXRqqucrfkKHIjTu', '2018-02-28 23:54:01', '2018-02-28 23:54:01'),
(659, 1, 'epmwUt2eEbBAlPUsRvLYye9UXrDbWRsY', '2018-03-01 20:36:24', '2018-03-01 20:36:24'),
(660, 1, 'IBPtMs86N9ZxYAokjAo5IZVsifLYULe0', '2018-03-01 20:36:24', '2018-03-01 20:36:24'),
(661, 1, 'ah6aFi5zxKdz1F8cxjJ1pZnBnHyNZKOc', '2018-03-01 21:05:27', '2018-03-01 21:05:27'),
(662, 1, '6XwoqEwOBL1VASKFFs38FyUX5qgQpyQD', '2018-03-01 21:05:27', '2018-03-01 21:05:27'),
(663, 1, 'fYpXZppwD1leYB1S9D3O2DKE0rZqMVil', '2018-03-02 03:27:22', '2018-03-02 03:27:22'),
(664, 1, 'C5bfu1teMTdMwuwKXc9DsSSr65V4prxu', '2018-03-02 03:27:22', '2018-03-02 03:27:22'),
(665, 1, '18FtXw4eCoEk9aYC4KKeSujj3Skeeg1j', '2018-03-02 07:41:14', '2018-03-02 07:41:14'),
(666, 1, 'gd6maf8zgzzu2O0mHXqHBn9IY1Ovvl0F', '2018-03-02 07:41:14', '2018-03-02 07:41:14'),
(667, 1, 'K3emBbgwwtLt5ojXcvk8Q0tP3VqLefsd', '2018-03-02 11:23:06', '2018-03-02 11:23:06'),
(668, 1, 'P6tdNZSePBmSorun8ODixsb0VDybzRdU', '2018-03-02 11:23:06', '2018-03-02 11:23:06'),
(669, 1, 'dsnZFyjdEunjpPlzdUWupZUThhoLRUhj', '2018-03-02 18:49:24', '2018-03-02 18:49:24'),
(670, 1, 'R1KiyE1oFR7SaY9COquFyViCysmD7GeT', '2018-03-02 18:49:24', '2018-03-02 18:49:24'),
(671, 1, 'iJo0kENKMWSbmbhpqurfsGt1fxhOq8rb', '2018-03-02 20:42:13', '2018-03-02 20:42:13'),
(672, 1, 'ciIiJWF6jOPdWQvcRU0AkOugGLYgOMvC', '2018-03-02 20:42:13', '2018-03-02 20:42:13'),
(673, 1, 'HLvUMZxuVNmkyFrisdoWuDDA801m5sm3', '2018-03-04 05:44:09', '2018-03-04 05:44:09'),
(674, 1, 'HeTLfvd9zkuaeXwksD615gyq72TLtHNs', '2018-03-04 05:44:09', '2018-03-04 05:44:09'),
(675, 1, 'sbC8E1Kk4ot47cgDWJbeSvkF9s0Qqp2g', '2018-03-05 00:00:13', '2018-03-05 00:00:13'),
(676, 1, 'i25E6x2AMWgQaPCYtX56nUNDScxRKV6t', '2018-03-05 00:00:13', '2018-03-05 00:00:13'),
(677, 1, 'xn87wi5uUQDn2uSTmRsJxs0CXzEjAVv4', '2018-03-07 02:54:18', '2018-03-07 02:54:18'),
(678, 1, 'KSUT34nlKI6L8PGyv0cTrbv4I3DYrEi7', '2018-03-07 02:54:18', '2018-03-07 02:54:18'),
(679, 1, 'B8XzrZooV8fU2utG3I3HVqIsJGb8BMsg', '2018-03-07 05:25:09', '2018-03-07 05:25:09'),
(680, 1, 'zWZ5YGezeMIbSJYc0UBVW3DQW6FpmFUV', '2018-03-07 05:25:09', '2018-03-07 05:25:09'),
(681, 1, 'xtqAAbkXcYwpA4BRcU6egvPXRW7NG0L1', '2018-03-07 10:46:09', '2018-03-07 10:46:09'),
(682, 1, 'TxbrsGteK8j72P79MFrD3Z44I4T192Hk', '2018-03-07 10:46:09', '2018-03-07 10:46:09'),
(683, 1, 'mRHjqjwRSX3p7AqLPzILk4zi31W8gI2O', '2018-03-07 13:38:35', '2018-03-07 13:38:35'),
(684, 1, 'xGBGJTbe1e0umQQZjLbpAxVZmKvLubGB', '2018-03-07 13:38:35', '2018-03-07 13:38:35'),
(685, 1, '0gO2pf6VOD5s8pbNYWTpN12mupJboZPU', '2018-03-07 13:56:58', '2018-03-07 13:56:58'),
(686, 1, 'l0V6YuGv4QSMkyFYh5u4smIxHp9bKMfD', '2018-03-07 13:56:58', '2018-03-07 13:56:58'),
(687, 1, 'DdH0YXntFHnDzdAcYtTHLXNOSrD9Nayi', '2018-03-08 00:35:08', '2018-03-08 00:35:08'),
(688, 1, 'WVP0SgXfTfRXMtDKn5yCzhniy6ITsYXn', '2018-03-08 00:35:08', '2018-03-08 00:35:08'),
(689, 1, 'dtPekV4MsbO8mfegEY5HQXncXvVAAicq', '2018-03-08 02:55:06', '2018-03-08 02:55:06'),
(690, 1, '44nWxEUwwTD8CGzOzjoutv1Yyt34Xi42', '2018-03-08 02:55:06', '2018-03-08 02:55:06'),
(691, 1, 'zW258naq0j0KTXkI9f9n0iJDB5UMviZa', '2018-03-09 01:31:57', '2018-03-09 01:31:57'),
(692, 1, 'c7937k8NYcXK3j1Hr96LJQhDxaK00XwP', '2018-03-09 01:31:57', '2018-03-09 01:31:57'),
(693, 1, '5R8A7OodILq54RYQ0TC5tKrhigfTfHFP', '2018-03-09 23:03:00', '2018-03-09 23:03:00'),
(695, 1, 'bLqkWAb61eAbB2GzWSzacoZKF7JVcqmx', '2018-03-10 00:21:45', '2018-03-10 00:21:45'),
(696, 1, 'CmDgjN9sv1zEHPMha1xbZqrNvxr1u6fU', '2018-03-10 00:21:45', '2018-03-10 00:21:45'),
(697, 1, '70LhgQmbM3ePDyhUk0m8clPUuOfeVlax', '2018-03-12 01:26:52', '2018-03-12 01:26:52'),
(698, 1, 'uXA1S7f3Fv218HhK0KYpx6ohND0LVaBG', '2018-03-12 01:26:52', '2018-03-12 01:26:52'),
(699, 1, 'Z5UGllqTBbuZdy2FGBpB7AxVlnPycCxk', '2018-03-12 04:25:56', '2018-03-12 04:25:56'),
(700, 1, 'uLr0gFAcWegAkejxnIg572CNftPlQEfj', '2018-03-12 04:25:56', '2018-03-12 04:25:56'),
(701, 1, 'o6eHDvnHWdn1MqyMLZeQ0s4qSbyH5YCh', '2018-03-12 05:14:27', '2018-03-12 05:14:27'),
(702, 1, 'iwckNXMkOnCVQdj1PNngM1edLxTuMKNK', '2018-03-12 05:14:27', '2018-03-12 05:14:27'),
(703, 1, 'z3CFbndaFo63KgiQjPuV6jwh6OMMmUNr', '2018-03-12 18:56:01', '2018-03-12 18:56:01'),
(704, 1, 'yp1HVdtxNYSITndkMjIMOcj61cIWS3uK', '2018-03-12 18:56:01', '2018-03-12 18:56:01'),
(705, 1, '0o5TH3GwFbGw4I0IUH6zxj05N5YFezWb', '2018-03-12 19:37:48', '2018-03-12 19:37:48'),
(706, 1, 'NhrIwDeXhvPxfvcTYHwSdKe0Nmc2Orv2', '2018-03-12 19:37:48', '2018-03-12 19:37:48'),
(707, 1, 'vUwqO2s9eU92ka8XBcjzgOyrntdNvecG', '2018-03-12 19:50:39', '2018-03-12 19:50:39'),
(708, 1, 'S626mJT9dxa71O7kPIzcyY6MEk1P4K2O', '2018-03-12 19:50:39', '2018-03-12 19:50:39'),
(709, 1, 'mcQtwdrvHWpOxVzTrPExUs9cUBDh4etX', '2018-03-12 20:48:08', '2018-03-12 20:48:08'),
(710, 1, '4jJWxP2m43APqDQAvJGELgjb3tihWGVj', '2018-03-12 20:48:08', '2018-03-12 20:48:08'),
(711, 1, 'IKNd6lpDgpH58dzdf48yUPjT7NNNFuDn', '2018-03-12 20:49:36', '2018-03-12 20:49:36'),
(712, 1, 'VRMuqJzbghv7aLQLD2Ynx6oPimNZ9sdk', '2018-03-12 20:49:36', '2018-03-12 20:49:36'),
(713, 1, 'OCKS44CPwpsLS0qNsJeaHp3uxztND167', '2018-03-12 21:34:29', '2018-03-12 21:34:29'),
(714, 1, '9LNeEsiwSNIRsxAAZGkXrG21eywNwBcE', '2018-03-12 21:34:29', '2018-03-12 21:34:29'),
(715, 1, 'paKxxM0eS68pn4rVkrUi18tfut58edsf', '2018-03-12 22:14:56', '2018-03-12 22:14:56'),
(716, 1, 'SF352JEZsAstv41mIlJlzpfAibtVd4tf', '2018-03-12 22:14:56', '2018-03-12 22:14:56'),
(717, 1, '4JdD49wrb0V4sHtNxEAK0gfAI8iiUDNV', '2018-03-13 00:46:58', '2018-03-13 00:46:58'),
(718, 1, '7fkvj5IctcBAjpLNB7oW5rQLXd0uac3t', '2018-03-13 00:46:58', '2018-03-13 00:46:58'),
(719, 1, 'XP510DrDG5PD6bREHiswReySnl4djsIN', '2018-03-13 01:14:42', '2018-03-13 01:14:42'),
(720, 1, 'PjGZkgvejGQMipZZ1BI0Udfqe0akmhQi', '2018-03-13 01:14:42', '2018-03-13 01:14:42'),
(721, 1, 'WhjyxT93LFWPKOG8x4bSwnrwleuIRHNk', '2018-03-13 04:06:37', '2018-03-13 04:06:37'),
(722, 1, 'AUeHtgYnHpX9VPVAQIc61g8c4OCPf65g', '2018-03-13 04:06:37', '2018-03-13 04:06:37'),
(723, 1, '4AIThW03xeUzORzL1RagV6I1OIQIri29', '2018-03-13 18:39:53', '2018-03-13 18:39:53'),
(724, 1, 'VfXIErsQMYW6hD2dQd3jkv7GJauG7OqQ', '2018-03-13 18:39:53', '2018-03-13 18:39:53'),
(725, 12, 'rBFCZxXwvmbkGO8jinaJglOpkT4wTNIg', '2018-03-13 18:44:05', '2018-03-13 18:44:05'),
(726, 12, 'pwnEsMxBLTWNOx7rPvJLHcac1SETvd4h', '2018-03-13 18:44:05', '2018-03-13 18:44:05'),
(727, 1, 'GDSnYc9pMm7sukbMmrXDAY2XH0l6gBGf', '2018-03-13 18:44:35', '2018-03-13 18:44:35'),
(728, 1, 'gnbnHXOAFuAZaIWJoKu8J8In6MoaiFfx', '2018-03-13 18:44:35', '2018-03-13 18:44:35'),
(729, 12, 'p7AQU0WYA5d5BP9GeBbxfGLqXgHg1VwU', '2018-03-13 18:44:58', '2018-03-13 18:44:58'),
(730, 12, 'Qws70qug0cXVd2BPBH6PYBxavmW5X382', '2018-03-13 18:44:58', '2018-03-13 18:44:58'),
(731, 1, 'LffILsb9qh7cY16GlPOxouaFevpzbm8G', '2018-03-13 19:07:03', '2018-03-13 19:07:03'),
(732, 1, 'rmOc6IM1qu4Fas56uNFunZBGKmtY73KU', '2018-03-13 19:07:04', '2018-03-13 19:07:04'),
(733, 1, 'OAernJS8fBlY8gIqiHqF1M3ya3wipNQx', '2018-03-13 19:07:12', '2018-03-13 19:07:12'),
(734, 1, 'BaZkrjj1WxCbzDoQuLiSugEZuCTklT7w', '2018-03-13 19:07:12', '2018-03-13 19:07:12'),
(735, 1, 'DNR0vm0lGETTtM8mKVnv40s2kvgXri3K', '2018-03-13 19:44:31', '2018-03-13 19:44:31'),
(736, 1, 'zgueCViTDBhjrWZRbAokY51R9Vw5CFRW', '2018-03-13 19:44:31', '2018-03-13 19:44:31'),
(737, 14, 'K6tw6t7Evn9GcXybQeDw6A3PswlvHr2r', '2018-03-13 19:46:20', '2018-03-13 19:46:20'),
(738, 14, 'sj8dKug5hlUjX1e5Wv8tOxyDycNNttzE', '2018-03-13 19:46:20', '2018-03-13 19:46:20'),
(739, 14, 'LcH5SlmiKC5pVEK1f3deU52nD0nhsbKc', '2018-03-13 19:48:14', '2018-03-13 19:48:14'),
(740, 14, 'bfAXcJBUpQPHK4WMqkg5WRzRgcyFDH6A', '2018-03-13 19:48:14', '2018-03-13 19:48:14'),
(741, 1, 'cNgo5DY7yg6fvZWfUiUR9Qdn0AJLcgon', '2018-03-13 19:48:46', '2018-03-13 19:48:46'),
(743, 15, 'kc4mJCfW8b1VgNukNXC3jMxSTjWiWeW3', '2018-03-13 19:51:13', '2018-03-13 19:51:13'),
(744, 15, 'liAHdi51M6DDNTpLF77kYkkGlw1jQAvO', '2018-03-13 19:51:13', '2018-03-13 19:51:13'),
(745, 14, '6LXqipS7esU82Dqek9w3sLj2j9uyeTss', '2018-03-13 19:52:48', '2018-03-13 19:52:48'),
(746, 14, 'rz95L28UCDVZSoxFZ5UmQ5Kzu0SRbrd4', '2018-03-13 19:52:48', '2018-03-13 19:52:48'),
(747, 14, 'fqMCgW9PbUfqEwMHXSi2iMNWSEqe5hDq', '2018-03-13 19:53:39', '2018-03-13 19:53:39'),
(749, 1, 'g653FIPyACmVjJ0n6ApAP0BCLZob6hli', '2018-03-13 19:57:02', '2018-03-13 19:57:02'),
(750, 1, '0gE3V33LpGkYUhKRsewm2Spe5fjJJzbq', '2018-03-13 19:57:02', '2018-03-13 19:57:02'),
(751, 14, 'sIL8bqixgLkVrSJoNHCrAmzuttCT1zfg', '2018-03-13 20:44:48', '2018-03-13 20:44:48'),
(752, 14, 'GBoIaul3HYHxi8dTA0j8Ggy0qKQylkIm', '2018-03-13 20:44:48', '2018-03-13 20:44:48'),
(753, 1, '0wF9kIYt2oObmX8tyPOackmkAoQfPXTL', '2018-03-13 20:49:04', '2018-03-13 20:49:04'),
(754, 1, '3O6zhLbgC05RgNMqp9qxG4fpIepK4Ij3', '2018-03-13 20:49:04', '2018-03-13 20:49:04'),
(755, 1, 'ZVh9hRNiVl3XiQR9xtoRdVnkLHbyl13n', '2018-03-13 21:36:05', '2018-03-13 21:36:05'),
(756, 1, 'PyGPsqXGrWJGhyU5S6oSI7wNvrcwv2CL', '2018-03-13 21:36:05', '2018-03-13 21:36:05'),
(757, 15, 'mdI2P0htiB1XTNy0jEXJ1BqMBqfBQyPJ', '2018-03-13 21:42:34', '2018-03-13 21:42:34'),
(759, 1, 'X91z4SAAJPqnPhQQWJucuktFl1d01rLq', '2018-03-13 21:43:06', '2018-03-13 21:43:06'),
(760, 1, 'zV1rYcBgsjx148qNaAEcBIX3kdvudS2A', '2018-03-13 21:43:06', '2018-03-13 21:43:06'),
(761, 1, 'nGjHiMvoCrcMWshE87TcyTISYiA7BpK8', '2018-03-15 00:56:28', '2018-03-15 00:56:28'),
(762, 1, '5WmAG8o7ME5dJorZvxAyaigcIZUZ4UYF', '2018-03-15 00:56:28', '2018-03-15 00:56:28'),
(763, 1, 'rZ0Vp4PWAauBqhb4C0S7vCfpMRsSvl6c', '2018-03-18 18:54:01', '2018-03-18 18:54:01'),
(764, 1, '1w3KzwIgJE8OLlx3xanGKsJxjdcmyXbM', '2018-03-18 18:54:01', '2018-03-18 18:54:01'),
(765, 1, 'VhVlDqMJubCHEPePi1n772dekLVbRn15', '2018-03-18 20:21:11', '2018-03-18 20:21:11'),
(766, 1, 'wxCSpkojictK2Hvbh5Y5KQkXDim7FpV6', '2018-03-18 20:21:11', '2018-03-18 20:21:11'),
(767, 1, 'dSzmO4oZqiaL4Etg7Ok1T2rXnKw2rg8A', '2018-03-18 20:39:50', '2018-03-18 20:39:50'),
(768, 1, 'bl0yxr9SZz4jOhL1e3h0mmf4Wx5YhSJW', '2018-03-18 20:39:50', '2018-03-18 20:39:50'),
(769, 16, '01f8wN2ZmkVKMBgP5BoRG2MV5x1CmW3K', '2018-03-19 00:20:56', '2018-03-19 00:20:56'),
(770, 16, 'aM9920ka8ubXxTqvTm4uNxiXhPrzWRWx', '2018-03-19 00:20:56', '2018-03-19 00:20:56'),
(771, 1, 'A8Up6kY4pvbozwSKehn1ddzOHefoIlrj', '2018-03-19 01:12:38', '2018-03-19 01:12:38'),
(772, 1, '361U4P9qpDzYle3zIniqiAtukIbuvSqx', '2018-03-19 01:12:38', '2018-03-19 01:12:38'),
(773, 1, 'zAXxpnoUcF08gAU4UeYLBgef9uYZptk2', '2018-03-19 01:28:39', '2018-03-19 01:28:39'),
(774, 1, 'pSnAoCsRyprvfzfmiLYY7XkNEJXvjVnM', '2018-03-19 01:28:39', '2018-03-19 01:28:39'),
(775, 16, 'MxVtDzSwdxDkDKfnPTqYCskdw7OUsblY', '2018-03-19 03:12:44', '2018-03-19 03:12:44'),
(776, 16, 'A6xfoHOxAbLOdcJr9Wn08Oq02cgZX2s6', '2018-03-19 03:12:44', '2018-03-19 03:12:44'),
(777, 16, 'qYLeHVz7RWmKpUM22gNuwp3wz1VwtiAS', '2018-03-19 03:12:45', '2018-03-19 03:12:45'),
(778, 16, 'lvnrZgBTdg6Zo3vpXxZF9GwriZ8L3NYa', '2018-03-19 03:12:45', '2018-03-19 03:12:45'),
(779, 1, 'GG35Q0kQ2Fe9i3sbofYDGteABiXLrX0c', '2018-03-19 03:28:32', '2018-03-19 03:28:32'),
(780, 1, 'gHRCovhTkV3b4MzL44DRQIowg58HnLld', '2018-03-19 03:28:32', '2018-03-19 03:28:32'),
(781, 1, 'zrQ1axb0kh2ghSUFpWWEswy5OU4s6G6R', '2018-03-19 03:34:32', '2018-03-19 03:34:32'),
(782, 1, 'AwkpqiKxm8X2wFxmt8xJuEzPycFiVYgm', '2018-03-19 03:34:32', '2018-03-19 03:34:32'),
(783, 16, 'noUhRYeuNtuRE76tcTk4TvWbLV5PVeue', '2018-03-19 03:53:17', '2018-03-19 03:53:17'),
(784, 1, 'ETIUZmJz0Oi7dau7HuudmvyHXPg3wXJ6', '2018-03-19 03:59:05', '2018-03-19 03:59:05'),
(785, 1, 'bSmht48OLuiB46dT6u0o4r4QYnc0lOG3', '2018-03-19 04:07:29', '2018-03-19 04:07:29'),
(786, 1, '8b3uuZqjagUdmxSe0hmdA2mrZ1Qbahcb', '2018-03-19 04:31:08', '2018-03-19 04:31:08'),
(787, 1, 'c11pXNbXi4ze83socfogJUwKzUkBnPVT', '2018-03-19 06:39:09', '2018-03-19 06:39:09'),
(788, 1, 'lMTysJKQXfO7IaEVC5h6J35WcVI4vguR', '2018-03-19 18:55:52', '2018-03-19 18:55:52'),
(789, 1, 'rrSlqgueLGrCcZmXTiC9Cw7jLHOLjWgI', '2018-03-19 20:21:22', '2018-03-19 20:21:22'),
(790, 1, '5fFvQihHLCJR9s1Clg2shCDQA2LdxbaO', '2018-03-19 21:18:56', '2018-03-19 21:18:56'),
(791, 1, 'rgIQTAh1y9Apxn1XeE74h4BXrTSJELka', '2018-03-19 21:43:10', '2018-03-19 21:43:10'),
(792, 1, 'mazlYOdL090B7OkcvPKOc5JDjPZTC3vu', '2018-03-19 22:09:02', '2018-03-19 22:09:02'),
(793, 1, 'nItdoT4bghRRTFkt6ekP6ELt6Q7iL4oj', '2018-03-20 02:19:26', '2018-03-20 02:19:26'),
(794, 1, 'WmA7cIHiFKHVF3HXbYfT6gf7Y58YCZ4w', '2018-03-20 03:46:05', '2018-03-20 03:46:05'),
(795, 1, 'h9IdtJUOoNRL0I97ZXfCKb5aF5rE5Wym', '2018-03-20 08:58:06', '2018-03-20 08:58:06'),
(796, 1, 'G9V6NahLvTy6LUaaDh62bSZT95kdMnaw', '2018-03-20 12:21:29', '2018-03-20 12:21:29'),
(797, 1, 'RMezE5QaASJR8afKG7cO9IyW5jO0tISz', '2018-03-20 13:30:50', '2018-03-20 13:30:50'),
(798, 1, 'XaR7hRK1EwC2Kf7nUFVhOuZy2zUf8ucg', '2018-03-20 18:52:28', '2018-03-20 18:52:28'),
(799, 1, 'Snqh8ivQX4bnFMuMl1yJhz0EA8MzA84V', '2018-03-20 20:02:13', '2018-03-20 20:02:13'),
(800, 1, '7L73nlW04VxorSHPgD2BSZ0gWoIIukji', '2018-03-20 20:13:23', '2018-03-20 20:13:23'),
(801, 1, 'PyXsZmiEkNsZ3AtBPZQYSkRSN9rqsdg7', '2018-03-20 20:34:59', '2018-03-20 20:34:59'),
(802, 1, 'lSmOXzPQu7B3Gsxz8Q6B0PU4nWZ10ety', '2018-03-20 20:35:46', '2018-03-20 20:35:46'),
(803, 1, 'fynhnpWCeQATdD2Qmf8RCyXH02QjCj7P', '2018-03-20 20:50:25', '2018-03-20 20:50:25'),
(804, 1, 'yCW4U2bHSfGFiDIl7z0HXoh1UFPUIeqE', '2018-03-20 20:55:43', '2018-03-20 20:55:43'),
(805, 1, 'JkF4p8tYUP4oN5der79jIWWgFefqU0fI', '2018-03-20 21:09:48', '2018-03-20 21:09:48'),
(806, 1, 'TpAbAiDvu5vRRA3RcuJcRUxArJ7yqdSe', '2018-03-20 21:35:40', '2018-03-20 21:35:40'),
(807, 1, 'Bm3L0cx6AgmmfwosMXedJSYkCrN6Hi5L', '2018-03-21 04:40:14', '2018-03-21 04:40:14'),
(808, 1, 'aMP5vFkW9K3Ohk6BkFn6EJHhqkGuIkvP', '2018-03-21 22:55:29', '2018-03-21 22:55:29'),
(809, 1, 'IsseRvXc2Yw1jjvzp7mxYIanXPO5rjEZ', '2018-03-21 22:59:19', '2018-03-21 22:59:19'),
(810, 1, 'QWM4SgxxWtrZBvoTJYLTjgkRTUCXRvVl', '2018-03-22 00:20:21', '2018-03-22 00:20:21'),
(811, 1, 'ucC1zcIYRHxEZ6jFZMn1piUNdCBndVrB', '2018-03-22 07:50:08', '2018-03-22 07:50:08'),
(812, 1, 'hBuAPCwJsXpImVFDczr07NUKD4maczgv', '2018-03-25 21:13:02', '2018-03-25 21:13:02'),
(813, 1, '7f44jonBZCaWhRG3fq6LnySxvpIWT3lF', '2018-03-26 00:37:16', '2018-03-26 00:37:16'),
(814, 1, '98iIPSZUtmkECi4CndD1fXPs7iz9VhDi', '2018-03-28 20:45:30', '2018-03-28 20:45:30'),
(815, 1, '4e817wTnlzwdR1gXdS9h9CJxgQ3s8WEA', '2018-03-28 21:51:08', '2018-03-28 21:51:08'),
(817, 1, 'NYMrWaQC7C0MXnZ3guIH3jcGodi03awk', '2018-03-29 02:21:44', '2018-03-29 02:21:44'),
(818, 1, 'gtACDQRc26hY8jEO0WCcOa9KYkXVuvKK', '2018-03-29 21:41:27', '2018-03-29 21:41:27'),
(819, 1, 'z1J0xvNwTwzWPsS6cIVoUQkDn62vuwVB', '2018-04-03 00:44:43', '2018-04-03 00:44:43'),
(820, 1, '6UxGtKre7I7IUz510inaeyD6z36eoXk4', '2018-04-03 00:49:26', '2018-04-03 00:49:26'),
(825, 1, 'MBWhGF2Q2khD81NtUssxrWmKjvy5h83L', '2018-04-18 02:04:02', '2018-04-18 02:04:02'),
(826, 1, '6uIz8wvbaHWGaDk5l2ygeoD3tPgWQGdq', '2018-04-18 03:34:15', '2018-04-18 03:34:15'),
(827, 1, 'zMowUXsOtQyEEoofUjTP6gOqGO9tp9sV', '2018-04-18 19:03:16', '2018-04-18 19:03:16'),
(828, 1, '3n7L4khB5NBwukFanjPLhog7mDlG0TJo', '2018-04-18 21:35:02', '2018-04-18 21:35:02'),
(829, 1, 'Foj95VxHOEDjWT4vgkvsrLqP1EoW8Zxl', '2018-04-19 20:28:39', '2018-04-19 20:28:39'),
(830, 1, 'BPEVxHCdwXX8QvqTQQ7rz2Bj8I5j1Ldz', '2018-04-19 20:56:33', '2018-04-19 20:56:33'),
(831, 1, 'bgqn4cv8ik417S68XTUFHPGyGE8aKXtQ', '2018-04-20 18:13:40', '2018-04-20 18:13:40'),
(832, 1, 'MTJoKlyX9bjToim4ePj04vp3cxkh0qta', '2018-04-20 18:37:33', '2018-04-20 18:37:33'),
(833, 1, 'GxZiZYXeFl2GLJ1YPq0tsCjUQnc6QZ1S', '2018-04-20 20:22:20', '2018-04-20 20:22:20'),
(834, 1, 'JpFvbrdWGOsCrBwTL5brqCdu0ALnZ1UV', '2018-04-20 22:29:03', '2018-04-20 22:29:03'),
(835, 1, '8KLfpSc2wb9i3gE9ZP6qTIbXN1g5bum2', '2018-04-27 03:23:17', '2018-04-27 03:23:17'),
(836, 1, 'n9k1u85JCISkpFVqQNwJseIg5mcTQySJ', '2018-05-01 18:16:03', '2018-05-01 18:16:03'),
(837, 1, 'DCj754X42jdApjyhhYSMVWQ5kunBzedj', '2018-05-01 22:06:59', '2018-05-01 22:06:59'),
(838, 1, 'ommRL74r2eKXg0jeEqhjWQjdPixNZ5cE', '2018-05-01 22:07:00', '2018-05-01 22:07:00'),
(839, 1, 'p4lcc4nrQbYgIxtxuP0Cl6mOZHRO6b7O', '2018-05-01 23:45:10', '2018-05-01 23:45:10'),
(840, 1, 'A1VHeEVkS7XMKByD0ritXK2rE4bB1EV5', '2018-05-10 12:31:20', '2018-05-10 12:31:20');
INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(841, 1, 'AONtVqDfwMfUl1txqHZN6FNFsoKl8WSF', '2018-05-11 02:08:37', '2018-05-11 02:08:37'),
(842, 1, 'Fi80Rr09d1kd0P2FhWg3cu0Cl5CljiKy', '2018-05-11 07:15:00', '2018-05-11 07:15:00'),
(843, 1, 'VMR2M4a9yDt33kH5wkGetolWR1OXcSWq', '2018-05-11 22:47:43', '2018-05-11 22:47:43'),
(844, 1, '8aRQyyn82JZQlp05dJhcLb15fyetRdFC', '2018-05-12 04:12:44', '2018-05-12 04:12:44'),
(845, 1, 'DrD809BiOVBrXBlb2KFB5kjXnFnpDyDt', '2018-05-21 19:19:44', '2018-05-21 19:19:44'),
(846, 1, 'n9KLi0PY8IhFQRzfCgD49tz8aQlvGcI9', '2018-05-21 19:36:44', '2018-05-21 19:36:44'),
(847, 1, 'FjHPaufG0ukq3OCDaEid5p43niSl1YmX', '2018-05-22 19:38:06', '2018-05-22 19:38:06'),
(848, 1, 'qyf5hwExmlM7LmNwB5G0UqPAdc8mUIeN', '2018-05-22 19:38:35', '2018-05-22 19:38:35'),
(849, 1, 'skE6TQUBs0VHhYnR1sbRuiky51yOMHGU', '2018-05-23 01:59:11', '2018-05-23 01:59:11'),
(850, 1, '5wHmI0fzptflr8EvK2LTQiILEC71CiTO', '2018-05-23 01:59:54', '2018-05-23 01:59:54'),
(851, 1, '5RT9x9kgRz7Rh9BDUSQwvAVtjClfOAtQ', '2018-05-25 19:25:55', '2018-05-25 19:25:55'),
(856, 1, 'XwtINNJojlnleLxh5fHOoFVb12kOVj5C', '2018-05-26 03:03:27', '2018-05-26 03:03:27'),
(857, 1, 'LhnPn4J8WLbSL0gNIKx7uGdAQTKTTfn4', '2018-05-27 19:09:51', '2018-05-27 19:09:51'),
(858, 1, 'ANLWZoEOmFPck2LdCggTzX8mGEQsl1WC', '2018-05-28 19:04:15', '2018-05-28 19:04:15'),
(859, 1, 'Ebs414G1vaNDgxIwqCdZQ72rtqqUrQGD', '2018-05-28 20:19:21', '2018-05-28 20:19:21'),
(860, 1, 'n94Sc2a9rs0l1kiwNZfOXin4giIseEh7', '2018-05-29 01:33:28', '2018-05-29 01:33:28'),
(862, 1, 'bQ7CMnKhryhB7sfjOWNXXa8lDZByB1wt', '2018-07-04 01:27:52', '2018-07-04 01:27:52');

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `id` int(11) NOT NULL,
  `album_id` int(11) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `post_param`
--

DROP TABLE IF EXISTS `post_param`;
CREATE TABLE `post_param` (
  `id` bigint(20) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `param_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post_param`
--

INSERT INTO `post_param` (`id`, `post_id`, `param_id`, `created_at`, `updated_at`) VALUES
(1, 1, 24, '2018-04-20 04:23:19', '2018-04-20 04:23:19'),
(6, 5, 24, '2018-04-20 04:37:30', '2018-04-20 04:37:30'),
(7, 6, 24, '2018-04-20 04:39:15', '2018-04-20 04:39:15');

-- --------------------------------------------------------

--
-- Table structure for table `privilege`
--

DROP TABLE IF EXISTS `privilege`;
CREATE TABLE `privilege` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `controller` varchar(45) NOT NULL,
  `action` varchar(45) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `privilege`
--

INSERT INTO `privilege` (`id`, `fullname`, `controller`, `action`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'category-article-list', 'category-article', 'list', 1, '2017-05-18 06:49:30', '2017-05-19 17:26:33'),
(2, 'category-article-form', 'category-article', 'form', 1, '2017-05-18 06:50:32', '2017-11-26 16:43:37'),
(3, 'category-article-trash', 'category-article', 'trash', 1, '2017-05-18 06:51:27', '2017-11-26 16:43:37'),
(4, 'article-list', 'article', 'list', 1, '2017-05-18 08:34:41', '2017-05-19 18:11:35'),
(5, 'article-form', 'article', 'form', 1, '2017-05-18 08:35:17', '2017-05-19 17:24:54'),
(16, 'category-article-status', 'category-article', 'status', 1, '2017-05-19 08:23:46', '2017-11-26 16:43:37'),
(17, 'category-article-delete', 'category-article', 'delete', 1, '2017-05-19 08:25:14', '2017-11-26 16:43:37'),
(18, 'privilege-list', 'privilege', 'list', 1, NULL, '2017-11-26 16:43:37'),
(19, 'privilege-form', 'privilege', 'form', 1, NULL, '2017-11-26 16:43:37'),
(24, 'group-member-list', 'group-member', 'list', 1, '2017-05-19 11:59:40', '2017-11-26 16:43:37'),
(25, 'group-member-form', 'group-member', 'form', 1, '2017-05-19 12:00:09', '2017-11-26 16:43:37'),
(33, 'category-article-ordering', 'category-article', 'ordering', 1, '2017-05-19 17:29:14', '2017-11-26 16:43:37'),
(43, 'user-list', 'user', 'list', 1, '2017-05-19 17:45:27', '2017-11-26 16:43:37'),
(44, 'user-form', 'user', 'form', 1, '2017-05-19 17:45:57', '2017-11-26 16:43:37'),
(49, 'menu-type-list', 'menu-type', 'list', 1, '2017-05-19 17:49:35', '2017-11-26 16:43:37'),
(50, 'menu-type-form', 'menu-type', 'form', 1, '2017-05-19 17:49:53', '2017-11-26 16:43:37'),
(55, 'menu-list', 'menu', 'list', 1, '2017-05-19 18:01:20', '2017-11-26 16:43:37'),
(56, 'menu-form', 'menu', 'form', 1, '2017-05-19 18:01:38', '2017-11-26 16:43:37'),
(57, 'menu-trash', 'menu', 'trash', 1, '2017-05-19 18:01:52', '2017-11-26 16:43:37'),
(58, 'menu-delete', 'menu', 'delete', 1, '2017-05-19 18:02:17', '2017-11-26 16:43:37'),
(59, 'menu-status', 'menu', 'status', 1, '2017-05-19 18:02:31', '2017-11-26 16:43:37'),
(60, 'menu-ordering', 'menu', 'ordering', 1, '2017-05-19 18:02:50', '2017-11-26 16:43:37'),
(61, 'media-list', 'media', 'list', 1, '2017-05-19 18:05:47', '2017-11-26 16:43:37'),
(62, 'media-form', 'media', 'form', 1, '2017-05-19 18:06:05', '2017-11-26 16:43:37'),
(63, 'media-trash', 'media', 'trash', 1, '2017-05-19 18:06:22', '2017-11-26 16:43:37'),
(67, 'product-list', 'product', 'list', 1, '2017-05-19 18:09:08', '2017-11-26 16:43:37'),
(68, 'product-form', 'product', 'form', 1, '2017-05-19 18:09:20', '2017-11-26 16:43:37'),
(79, 'invoice-list', 'invoice', 'list', 1, '2017-05-19 18:14:02', '2017-11-26 16:43:37'),
(80, 'invoice-form', 'invoice', 'form', 1, '2017-05-19 18:14:30', '2017-11-26 16:43:37'),
(85, 'customer-list', 'customer', 'list', 1, '2017-05-19 18:16:10', '2017-11-26 16:43:37'),
(86, 'customer-form', 'customer', 'form', 1, '2017-05-19 18:16:33', '2017-11-26 16:43:37'),
(103, 'category-product-list', 'category-product', 'list', 1, '2017-11-26 14:50:53', '2017-11-26 14:50:53'),
(104, 'category-product-form', 'category-product', 'form', 1, '2017-11-26 14:51:11', '2017-11-26 14:51:11'),
(105, 'payment-method-list', 'payment-method', 'list', 1, '2017-11-26 14:52:56', '2017-11-26 14:52:56'),
(106, 'payment-method-form', 'payment-method', 'form', 1, '2017-11-26 14:53:10', '2017-11-26 14:53:10'),
(107, 'module-item-list', 'module-item', 'list', 1, '2017-11-26 14:54:56', '2017-11-26 14:54:56'),
(108, 'module-item-form', 'module-item', 'form', 1, '2017-11-26 14:55:07', '2017-11-26 14:55:07'),
(109, 'setting-system-list', 'setting-system', 'list', 1, '2017-11-26 14:56:14', '2017-11-26 14:56:31'),
(110, 'setting-system-form', 'setting-system', 'form', 1, '2017-11-26 14:56:46', '2017-11-26 14:56:46'),
(111, 'category-product-trash', 'category-product', 'trash', 1, '2017-11-26 16:31:27', '2017-11-26 16:31:45'),
(112, 'category-product-status', 'category-product', 'status', 1, '2017-11-26 16:32:17', '2017-11-26 16:32:17'),
(113, 'category-product-delete', 'category-product', 'delete', 1, '2017-11-26 16:32:50', '2017-11-26 16:32:50'),
(114, 'category-product-ordering', 'category-product', 'ordering', 1, '2017-11-26 16:33:08', '2017-11-26 16:33:08'),
(115, 'category-banner-list', 'category-banner', 'list', 1, '2017-12-12 04:05:17', '2017-12-12 04:05:17'),
(116, 'category-banner-form', 'category-banner', 'form', 1, '2017-12-12 04:05:47', '2017-12-12 04:05:47'),
(117, 'category-banner-trash', 'category-banner', 'trash', 1, '2017-12-12 04:06:15', '2017-12-12 04:06:15'),
(118, 'category-banner-status', 'category-banner', 'status', 1, '2017-12-12 04:06:43', '2017-12-12 04:06:43'),
(119, 'category-banner-delete', 'category-banner', 'delete', 1, '2017-12-12 04:07:11', '2017-12-12 04:08:01'),
(120, 'category-banner-ordering', 'category-banner', 'ordering', 1, '2017-12-12 04:07:32', '2017-12-12 04:08:01'),
(121, 'banner-list', 'banner', 'list', 1, '2017-12-12 07:41:46', '2017-12-12 07:41:46'),
(122, 'banner-form', 'banner', 'form', 1, '2017-12-12 07:41:56', '2017-12-12 07:41:56'),
(123, 'page-list', 'page', 'list', 1, '2017-12-13 18:10:13', '2017-12-13 18:10:13'),
(124, 'page-form', 'page', 'form', 1, '2017-12-13 18:10:24', '2017-12-13 18:10:24'),
(125, 'project-list', 'project', 'list', 1, '2018-01-04 09:45:36', '2018-01-04 09:45:36'),
(126, 'project-form', 'project', 'form', 1, '2018-01-04 09:45:49', '2018-01-04 09:45:49'),
(127, 'project-article-list', 'project-article', 'list', 1, '2018-01-04 15:21:53', '2018-01-04 15:21:53'),
(128, 'project-article-form', 'project-article', 'form', 1, '2018-01-04 15:22:08', '2018-01-04 15:22:08'),
(129, 'supporter-list', 'supporter', 'list', 1, '2018-01-07 17:18:23', '2018-01-07 17:18:23'),
(130, 'supporter-form', 'supporter', 'form', 1, '2018-01-07 17:18:39', '2018-01-07 17:18:39'),
(131, 'organization-list', 'organization', 'list', 1, '2018-01-08 04:32:03', '2018-01-08 04:32:03'),
(132, 'organization-form', 'organization', 'form', 1, '2018-01-08 04:32:17', '2018-01-08 04:32:17'),
(133, 'album-list', 'album', 'list', 1, '2018-01-08 15:57:00', '2018-05-26 10:03:08'),
(134, 'album-form', 'album', 'form', 1, '2018-01-08 15:57:10', '2018-01-08 15:57:10'),
(135, 'photo-list', 'photo', 'list', 1, '2018-01-08 18:07:30', '2018-01-08 18:07:30'),
(136, 'photo-form', 'photo', 'form', 1, '2018-01-08 18:07:39', '2018-01-08 18:07:39'),
(137, 'category-video-list', 'category-video', 'list', 1, '2018-01-09 09:54:53', '2018-01-09 09:54:53'),
(138, 'category-video-form', 'category-video', 'form', 1, '2018-01-09 09:55:06', '2018-01-09 09:55:06'),
(139, 'video-list', 'video', 'list', 1, '2018-01-09 09:55:16', '2018-01-09 09:55:16'),
(140, 'video-form', 'video', 'form', 1, '2018-01-09 09:55:24', '2018-01-09 09:55:24'),
(141, 'province-list', 'province', 'list', 1, '2018-01-21 17:53:20', '2018-01-21 17:53:20'),
(142, 'province-form', 'province', 'form', 1, '2018-01-21 17:53:29', '2018-01-21 17:53:29'),
(143, 'district-list', 'district', 'list', 1, '2018-01-22 02:03:24', '2018-01-22 02:03:24'),
(144, 'district-form', 'district', 'form', 1, '2018-01-22 02:03:34', '2018-01-22 02:03:34'),
(145, 'category-param-list', 'category-param', 'list', 1, '2018-02-01 20:15:43', '2018-02-01 20:15:43'),
(146, 'category-param-form', 'category-param', 'form', 1, '2018-02-01 20:15:56', '2018-02-01 20:15:56'),
(147, 'category-param-trash', 'category-param', 'trash', 1, '2018-02-01 20:43:36', '2018-02-01 20:43:36'),
(148, 'category-param-delete', 'category-param', 'delete', 1, '2018-02-01 20:43:52', '2018-02-01 20:43:52'),
(149, 'category-param-status', 'category-param', 'status', 1, '2018-02-01 20:44:13', '2018-02-01 20:44:13'),
(150, 'category-param-ordering', 'category-param', 'ordering', 1, '2018-02-01 20:44:42', '2018-02-01 20:44:42');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `alias` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `alt_image` text COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `child_image` text CHARACTER SET utf8,
  `price` decimal(11,2) DEFAULT NULL,
  `sale_price` decimal(11,2) DEFAULT NULL,
  `intro` text COLLATE utf8_unicode_ci,
  `detail` text CHARACTER SET utf8,
  `count_view` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `code`, `fullname`, `meta_keyword`, `meta_description`, `alias`, `image`, `alt_image`, `status`, `child_image`, `price`, `sale_price`, `intro`, `detail`, `count_view`, `category_id`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, '913765842', 'Hương gà', 'metakeyword Hương gà', 'metadescription Hương gà', 'huong-ga', 'chem-30-icgtp7fbrynj.png', NULL, 1, '[\"chem-1-de026ruvy9lp.png\",\"chem-2-0mptfn7ka9v8.png\",\"chem-3-xnpco3tzs147.png\"]', '200000.00', '100000.00', 'Hương gà được tổng hợp dựa trên mùi vị cơ bản từ thịt gà. Với các phân tử nhỏ li ti sẽ khuếch tán đều trong sản phẩm và không khí, sản phẩm hương gà dạng lỏng sẽ giúp định hướng mùi hương của sản phẩm được ứng dụng rõ ràng, hấp dẫn hơn.', '<p><strong>- Ứng dụng:</strong> sản phẩm ph&ugrave; hợp sử dụng trong ng&agrave;nh sản xuất m&igrave; ăn liền, ch&aacute;o, đồ hộp, x&uacute;c x&iacute;ch, gia vị tẩm ướp... Đặc biệt sản phẩm rất th&iacute;ch hợp sử dụng trong thực phẩm chay.&nbsp;</p>', 8, 36, 1, '2018-04-20 04:23:18', '2018-06-24 06:41:33'),
(2, '327981654', 'Hương mực dạng lỏng', 'metakeyword Hương mực dạng lỏng', 'metadescription Hương mực dạng lỏng', 'huong-muc-dang-long', 'chem-9-obnq2lp7zu0r.png', NULL, 1, '[\"chem-5-vgrphy5infwo.png\",\"chem-6-vhgewi8qcnro.png\",\"chem-7-aywtenh923pq.png\"]', '300000.00', '0.00', 'Hương mực được tổng hợp dựa trên mùi vị cơ bản từ mực tươi hoặc mực khô. Với các phân tử nhỏ li ti sẽ khuếch tán đều trong sản phẩm và không khí, sản phẩm hương bò dạng lỏng sẽ giúp định hướng mùi hương của sản phẩm được ứng dụng rõ ràng, hấp dẫn hơn.', '<p><img src=\"/upload/art-3.png\" style=\"width: 100%;\" alt=\"chiếc xe màu nâu\" title=\"xe hơi màu nâu\">Sản phẩm phù hợp sử dụng trong ngành sản xuất mì ăn liền, cháo, đồ hộp, xúc xích, gia vị tẩm ướp... Đặc biệt sản phẩm rất thích hợp sử dụng trong thực phẩm chay.</p><p><br></p><p></p><p><br></p>', 8, 36, 2, '2018-04-20 04:30:32', '2018-05-31 17:24:58'),
(3, '789456312', 'Hương tôm dạng lỏng', 'metakeyword Hương tôm dạng lỏng', 'metadescription Hương tôm dạng lỏng', 'huong-tom-dang-long', 'chem-17-f37x9kwgls2t.png', NULL, 1, '[\"chem-8-l9ikn782wzqp.png\",\"chem-4-xov96ydmfqra.png\",\"chem-3-yus9wx2r6jin.png\"]', '400000.00', '0.00', 'Hương tôm được tổng hợp dựa trên mùi vị cơ bản từ thịt tôm. Với các phân tử nhỏ li ti sẽ khuếch tán đều trong sản phẩm và không khí, sản phẩm hương bò dạng lỏng sẽ giúp định hướng mùi hương của sản phẩm được ứng dụng rõ ràng, hấp dẫn hơn.', 'sản phẩm phù hợp sử dụng trong ngành sản xuất mì ăn liền, cháo, đồ hộp, xúc xích, gia vị tẩm ướp... Đặc biệt sản phẩm rất thích hợp sử dụng trong thực phẩm chay.', 8, 36, 3, '2018-04-20 04:32:28', '2018-05-31 19:56:33'),
(4, '924653718', 'Hương bò dạng bột', 'metakeyword Hương bò dạng bột', 'metadescription Hương bò dạng bột', 'huong-bo-dang-bot', 'chem-13-bx12cn68efyk.png', NULL, 1, '[\"chem-6-cl4tr35qof01.png\",\"chem-3-4ks8ubygea1t.png\",\"chem-12-zjqdxeyv49pr.png\"]', '100000.00', '0.00', 'Tên Sản phẩm: Hương bò dạng bột\r\nDùng bổ sung hương bò cho xúc xích bò, bò viên, phở bò, bột vị phở, chả bò. Lượng sử dụng: 0,1 – 0,3 % (1- 3g/ kg sản phẩm tuỳ theo yêu cầu của người sử dụng).\r\nXuất xứ : Singapore\r\nQuy cách : 1kg/gói- 25Kg/Thùng\r\nBảo quản nơi khô ráo thoáng mát, tránh ánh sáng trực tiếp chiếu vào', '<p>Ưu điểm:</p>\r\n\r\n<p>&ndash; Hương liệu c&oacute; nguồn gốc tự nhi&ecirc;n từ thịt b&ograve;.</p>\r\n\r\n<p>&ndash; Kh&ocirc;ng những gia tăng hương m&agrave; c&ograve;n bổ sung vị.</p>\r\n\r\n<p>&ndash; Hương liệu bền với nhiệt độ nấu &ndash; hấp cao. &ndash; Bảo quản dễ d&agrave;ng, sử dụng tiện lợi</p>', 20, 36, 4, '2018-04-20 04:35:55', '2018-07-01 00:55:31'),
(5, '154932786', 'Hương thịt heo', 'metakeyword Hương thịt heo', 'metadescription Hương thịt heo', 'huong-thit-heo', 'chem-8-iqtjl5b9ncow.png', NULL, 1, '[\"chem-6-vrk61iegswl4.png\",\"chem-17-gm95fza21p04.png\",\"chem-11-w9o2s43htbc7.png\"]', '300000.00', '0.00', 'Tên Sản phẩm: Hương thịt heo dạng bột\r\nDùng bổ sung hương bò cho xúc xích bò, bò viên, phở bò, bột vị phở, chả bò. Lượng sử dụng: 0,1 – 0,3 % (1- 3g/ kg sản phẩm tuỳ theo yêu cầu của người sử dụng).\r\nXuất xứ : Thái Lan\r\nQuy cách : 1kg/túi - 25Kg/Thùng\r\nBảo quản nơi khô ráo thoáng mát, tránh ánh sáng trực tiếp chiếu vào', '<p>Sản phẩm n&agrave;y c&oacute; gi&aacute; trị dinh dưỡng rất cao do được chiết xuất hầu hết dinh dưỡng từ nguy&ecirc;n liệu heo. Thịt heo c&oacute; tới hơn 20 loại acid amin cần thiết cho cơ thể m&agrave; kh&ocirc;ng thể thay thế được, c&aacute;c acid amin n&agrave;y c&ograve;n tham gia v&agrave;o qu&aacute; tr&igrave;nh tổng hợp, h&igrave;nh th&agrave;nh tế b&agrave;o mới, tạo enzym, hormone v&agrave; c&aacute;c thể miễn dịch cho cơ thể. Sản phẩm ph&ugrave; hợp sử dụng trong ng&agrave;nh sản xuất hạt n&ecirc;m, m&igrave; ăn liền, ch&aacute;o, đồ hộp, x&uacute;c x&iacute;ch, với lệ sử dụng 1-15% t&ugrave;y thuộc từng ứng dụng sản phẩm v&agrave; hiệu quả mong muốn của Qu&yacute; kh&aacute;ch.</p>', 20, 36, 5, '2018-04-20 04:37:29', '2018-06-27 06:17:19'),
(6, '578231496', 'Hương bò', 'metakeyword Hương bò', 'metadescription Hương bò', 'huong-bo', 'chem-24-kud0qifl8eg3.png', NULL, 1, '[\"chem-33-3k0x6ieptgs5.png\",\"chem-32-ao5qptcg2wmv.png\",\"chem-31-4doykz26a9ch.png\"]', '350000.00', '0.00', 'Tên Sản phẩm: Hương bò pass\r\nDùng bổ sung hương bò cho xúc xích bò, bò viên, phở bò, bột vị phở, chả bò. Lượng sử dụng: 0,1 – 0,3 % (1- 3g/ kg sản phẩm tuỳ theo yêu cầu của người sử dụng).\r\nXuất xứ : Singapore\r\nQuy cách : 1kg/Lon - 25Kg/Thùng\r\nBảo quản nơi khô ráo thoáng mát, tránh ánh sáng trực tiếp chiếu vào', '<p>Ưu điểm: &ndash; Hương liệu c&oacute; nguồn gốc tự nhi&ecirc;n từ thịt b&ograve;. &ndash; Kh&ocirc;ng những gia tăng hương m&agrave; c&ograve;n bổ sung vị. &ndash; Hương liệu bền với nhiệt độ nấu &ndash; hấp cao. &ndash; Bảo quản dễ d&agrave;ng, sử dụng tiện lợi</p>', 20, 36, 6, '2018-04-20 04:39:14', '2018-06-28 03:19:59'),
(7, '159842367', 'Hương trái cây dùng trong thực phẩm', 'metakeyword Hương trái cây dùng trong thực phẩm', 'metadescription Hương trái cây dùng trong thực phẩm', 'huong-trai-cay-dung-trong-thuc-pham', 'chem-1-tem6p8aijslz.png', NULL, 1, '[\"chem-31-4doykz26a9ch-lft1wkpz80o3.png\",\"d233-2-flbay3g9j5s2.jpg\",\"d234-1-ysajh3gk7rlo.jpg\"]', '150000.00', '0.00', 'Thành phần: Tổng hợp từ hương tự nhiên\r\nCông dụng: Tạo thêm hương vị tự nhiên và sản phẩm ngon hơn\r\nXuất xứ: Việt Nam, Hàn Quốc, châu Âu...\r\nĐóng gói: 1kg; 5kg;10kg;25kg; 50kg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 21, 37, 7, '2018-04-20 04:59:53', '2018-06-27 06:17:43'),
(8, '697342518', 'Màu tự nhiên Tumeric E 100', 'metakeyword Màu tự nhiên Tumeric E 100', 'metadescription Màu tự nhiên Tumeric E 100', 'mau-tu-nhien-tumeric-e-100', 'chem-2-yrjlqeb43ia8.png', NULL, 1, NULL, '250000.00', '0.00', 'Tên hàng hóa: Tumeric E100 (Màu Vàng)\r\nPhụ gia tạo màu thực phẩm\r\nXuất xứ : Ấn Độ- Thái Lan\r\nĐịnh lượng :1kg - 10kg - 25 kg/thùng', '<p>M&agrave;u V&agrave;ng tự nhi&ecirc;n Turmeric thực phẩm ,d&ugrave;ng tạo m&agrave;u cho c&aacute;c sản phẩm thực phẩm như b&aacute;nh, kẹo, nước uống ... sản phẩm được bộ y tế khuyến c&aacute;o sử dụng.Ngo&agrave;i ra, c&aacute;c sản phẩm mỹ phẩm cũng c&oacute; thể d&ugrave;ng m&agrave;u v&agrave;ng n&agrave;y Liều lượng sử dụng tr&ecirc;n từng sản phẩm xin xem kỹ th&ocirc;ng tin của bộ y tế</p>', 12, 19, 8, '2018-04-20 05:01:43', '2018-06-27 06:17:31'),
(9, '635928471', 'Màu Carotene (màu trứng gà) E 160a', 'metakeyword Màu Carotene (màu trứng gà) E 160a', 'metadescription Màu Carotene (màu trứng gà) E 160a', 'mau-carotene-mau-trung-ga-e-160a', 'chem-3-sbgpt37yramu.png', NULL, 1, NULL, '260000.00', '0.00', 'Bột màu thực phẩm màu vàng trứng dùng tạo màu cho các sản phẩm như : bánh ngọt, kẹo ngọt, nuôi, mì, nước uống, ngũ cốc ... do có màu vàng của trứng gà nên các sản phẩm sử dụng trứng làm nguyên liệu có thể dùng màu này để tăng vẻ đẹp cho sản phẩm. Ngoài ra, các sản phẩm mỹ phẩm và dược phẩm cũng có thể dùng màu vàng trứng này\r\nLiều lượng sử dụng theo quy định của bộ y tế, liều lượng khuyến cáo 0.01 -> 0.02% khối lượng sản phẩm cuối cùng', '<p>đang cập nhật ...</p>', 13, 19, 9, '2018-04-20 05:03:59', '2018-07-01 08:28:29'),
(10, '352618794', 'Màu tự nhiên paprika - màu ớt- E 160C', 'metakeyword Màu tự nhiên paprika - màu ớt- E 160C', 'metadescription Màu tự nhiên paprika - màu ớt- E 160C', 'mau-tu-nhien-paprika-mau-ot-e-160c', 'chem-5-vkh8y403wxoj.png', NULL, 1, NULL, '450000.00', '0.00', 'Tên hàng hóa: màu tự nhiên paprika - màu ớt\r\nPhụ gia tạo màu thực phẩm\r\nXuất xứ : Ấn Độ\r\nĐịnh lượng : 10 kg/thùng -25 kg/thùng\r\nCông dụng :\r\nPha trộn màu thực phẩm\r\nDùng trong dược phẩm\r\nTất cả các chế phẩm ăn được\r\nHướng dẫn sử dụng/bảo quản: Để nơi khô ráo, thoáng mát, tránh xa nguồn nhiệt và lửa.', '', 15, 19, 10, '2018-04-20 05:05:02', '2018-06-28 03:11:58'),
(11, '738645129', 'Màu đen gói bánh ít lá gai', 'metakeyword Màu đen gói bánh ít lá gai', 'metadescription Màu đen gói bánh ít lá gai', 'mau-den-goi-banh-it-la-gai', 'chem-6-kqr16y4ldsp0.png', NULL, 1, NULL, '210000.00', '0.00', 'màu thực phẩm màu đen (đen tuyền như màu than carbon) dùng tạo màu cho các sản phẩm thực phẩm như bánh, kẹo, nước uống ... Ngoài ra, các sản phẩm mỹ phẩm cũng có thể dùng màu đen này này\r\nLiều lượng sử dụng trên từng sản phẩm xin xem kỹ thông tin của bộ y tế', '<p>M&agrave;u đen thực phẩm ,d&ugrave;ng tạo m&agrave;u cho c&aacute;c sản phẩm thực phẩm như b&aacute;nh, kẹo, nước uống ... sản phẩm được bộ y tế khuyến c&aacute;o sử dụng.Ngo&agrave;i ra, c&aacute;c sản phẩm mỹ phẩm cũng c&oacute; thể d&ugrave;ng m&agrave;u v&agrave;ng n&agrave;y Liều lượng sử dụng tr&ecirc;n từng sản phẩm xin xem kỹ th&ocirc;ng tin của bộ y tế</p>', 19, 19, 11, '2018-04-20 05:06:04', '2018-07-03 10:14:46'),
(12, '768359142', 'Màu tím lá cẩm', 'metakeyword Màu tím lá cẩm', 'metadescription Màu tím lá cẩm', 'mau-tim-la-cam', 'chem-7-mjuie5os8taq.png', NULL, 1, NULL, '350000.00', '0.00', 'Tên sản phẩm :Tím lá cẩm\r\nNhà cung cấp Ấn Độ\r\nBao gói :1 Kg/hộp, 10 Kg/thùng, 25 Kg/thùng\r\nMô tả sản phẩm\r\nTan trong nước và tan trong dầu', '<p>C&ocirc;ng dụng : Pha trộn m&agrave;u thực phẩm D&ugrave;ng trong dược phẩm Tất cả c&aacute;c chế phẩm ăn được Hướng d&acirc;̃n sử dụng/bảo quản: Đ&ecirc;̉ nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh xa ngu&ocirc;̀n nhi&ecirc;̣t v&agrave; lửa.</p>', 14, 19, 12, '2018-04-20 05:07:01', '2018-07-02 02:34:28'),
(13, '791654283', 'Màu tự nhiên Riboflavin E101 thay thế tartrazineE 102', 'metakeyword Màu tự nhiên Riboflavin E101 thay thế tartrazineE 102', 'metadescription Màu tự nhiên Riboflavin E101 thay thế tartrazineE 102', 'mau-tu-nhien-riboflavin-e101-thay-the-tartrazinee-102', 'chem-9-4ms0dof78nty.png', NULL, 1, NULL, '340000.00', '0.00', 'Tên hàng hóa: Riboflavin E101 (Màu Vàng)\r\nPhụ gia tạo màu thực phẩm\r\nXuất xứ : Ấn Độ\r\nĐịnh lượng :1kg - 10kg - 25 kg/thùng', 'Màu Vàng tự nhiên Riboflavin thực phẩm ,dùng tạo màu cho các sản phẩm thực phẩm như bánh, kẹo, nước uống ... sản phẩm được bộ y tế khuyến cáo sử dụng.Ngoài ra, các sản phẩm mỹ phẩm cũng có thể dùng màu vàng  này\r\nLiều lượng sử dụng trên từng sản phẩm xin xem kỹ thông tin của bộ y tế', 13, 19, 13, '2018-04-20 05:08:05', '2018-06-27 06:17:42'),
(14, '768192435', 'Màu Vàng hột gà (Egg Yellow)', 'metakeyword Màu Vàng hột gà (Egg Yellow)', 'metadescription Màu Vàng hột gà (Egg Yellow)', 'mau-vang-hot-ga-egg-yellow', 'chem-11-r62tvewmp01i.png', NULL, 1, NULL, '550000.00', '0.00', 'Bột màu thực phẩm màu vàng trứng dùng tạo màu cho các sản phẩm như : bánh ngọt, kẹo ngọt, nuôi, mì, nước uống, ngũ cốc ... do có màu vàng của trứng gà nên các sản phẩm sử dụng trứng làm nguyên liệu có thể dùng màu này để tăng vẻ đẹp cho sản phẩm. Ngoài ra, các sản phẩm mỹ phẩm và dược phẩm cũng có thể dùng màu vàng trứng này\r\nLiều lượng sử dụng theo quy định của bộ y tế, liều lượng khuyến cáo 0.01 -> 0.02% khối lượng sản phẩm cuối cùng', '<p>đang cập nhật</p>', 21, 19, 14, '2018-04-20 05:09:12', '2018-07-02 15:48:05'),
(15, '843671592', 'Màu Vàng Quinoline Yellow thực phẩm , thú y', 'metakeyword Màu Vàng Quinoline Yellow thực phẩm , thú y', 'metadescription Màu Vàng Quinoline Yellow thực phẩm , thú y', 'mau-vang-quinoline-yellow-thuc-pham-thu-y', 'chem-12-d4y0hm27tqkz.png', NULL, 1, NULL, '670000.00', '0.00', 'Bột màu Vàng Quinoline Yellow thực phẩm , thú ydùng tạo màu cho các sản phẩm thực phẩm như bánh, kẹo, nước uống ... Ngoài ra, các sản phẩm mỹ phẩm cũng có thể dùng màu đen này này\r\nLiều lượng sử dụng trên từng sản phẩm xin xem kỹ thông tin của bộ y tế', '<p>đang cập nhật</p>', 38, 19, 15, '2018-04-20 05:13:29', '2018-06-27 18:39:48'),
(16, '514932687', 'Màu Đen Than (Black) dùng trong thực phẩm', 'metakeyword Màu Đen Than (Black) dùng trong thực phẩm', 'metadescription Màu Đen Than (Black) dùng trong thực phẩm', 'mau-den-than-black-dung-trong-thuc-pham', 'chem-14-xli2jn697b8t.png', NULL, 1, NULL, '450000.00', '0.00', 'Bột màu thực phẩm màu đen (đen tuyền như màu than carbon) dùng tạo màu cho các sản phẩm thực phẩm như bánh, kẹo, nước uống ... Ngoài ra, các sản phẩm mỹ phẩm cũng có thể dùng màu đen này này\r\nLiều lượng sử dụng trên từng sản phẩm xin xem kỹ thông tin của bộ y tế', '<p>đang cập nhật</p>', 28, 19, 16, '2018-04-20 05:14:39', '2018-06-28 09:01:20'),
(17, '972135486', 'Màu Hồng Sen Erythrosine Red', 'metakeyword Màu Hồng Sen Erythrosine Red', 'metadescription Màu Hồng Sen Erythrosine Red', 'mau-hong-sen-erythrosine-red', 'chem-15-iogsb5jzrqw7.png', NULL, 1, NULL, '250000.00', '0.00', 'Màu hồng Erythrosine có 2 hệ : dầu và nước\r\nĐối với các sản phẩm bánh, kẹo, đồ ăn khi cần màu hồng tươi & sáng, quý khách có thể dùng màu hồng erythrosine hòa tan được trong nước. Đối với các sản phẩm như (son môi, kem dầu ...) quý khách có thể dùng màu hồng erythrosine hệ dầu. Đặc biệt, erythrosine có màu sắc tươi sáng, nổi bật rất khác biệt so với các gốc màu khác', '<p>đang cập nhật</p>', 27, 19, 17, '2018-04-20 05:16:31', '2018-06-28 06:35:50'),
(18, '425638917', 'Hương Cầy', 'hương thịt, hương cầy', 'hương dùng trong nấu nướng, chế biến thịt cầy tại quán, nhà hàng.', 'huong-cay', 'img20170415105357-pm1bg6rvyaje.jpg', NULL, 1, '[\"img20170626113432-l3phmvys0168.jpg\",\"img20170626113437-nwd7qxmsp84a.jpg\",\"img20170603130331-cxenop2jrkhm.jpg\"]', '500000.00', '480000.00', 'hương dùng trong nấu nướng, chế biến thịt cầy tại quán, nhà hàng. Tỉ lệ dùng 0,015 sản phẩm.', '<p>hương dùng trong nấu nướng, chế biến thịt cầy tại quán, nhà hàng. Tỉ lệ dùng 0,015 sản phẩm. Liên hệ già bq tu vấn.<img src=\"/upload/img20170415105345.jpg\" style=\"width: 100%;\"><br></p>', 27, 38, 4, '2018-05-26 08:35:10', '2018-07-02 15:51:59');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` bigint(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count_view` int(11) DEFAULT NULL,
  `total_cost` int(11) DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` text COLLATE utf8_unicode_ci,
  `overview` text COLLATE utf8_unicode_ci,
  `equipment` text COLLATE utf8_unicode_ci,
  `price_list` text COLLATE utf8_unicode_ci,
  `googlemap_url` text COLLATE utf8_unicode_ci,
  `province_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `street` text COLLATE utf8_unicode_ci,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_article`
--

DROP TABLE IF EXISTS `project_article`;
CREATE TABLE `project_article` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `count_view` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_member`
--

DROP TABLE IF EXISTS `project_member`;
CREATE TABLE `project_member` (
  `id` bigint(20) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_member`
--

INSERT INTO `project_member` (`id`, `project_id`, `member_id`, `created_at`, `updated_at`) VALUES
(1, 10, 4, '2018-01-07 14:09:20', '2018-01-07 14:09:20');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `fullname`, `alias`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Việt Nam', 'viet-nam', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:18:21'),
(2, 'An Giang', 'an-giang', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:16:34'),
(3, 'Bà Rịa Vũng Tàu', 'ba-ria-vung-tau', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:16:28'),
(4, 'Bình Dương', 'binh-duong', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:16:21'),
(5, 'Bình Phước', 'binh-phuoc', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:16:16'),
(6, 'Bình Thuận', 'binh-thuan', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:16:09'),
(7, 'Bình Định', 'binh-dinh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:16:02'),
(8, 'Bắc Giang', 'bac-giang', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:15:55'),
(9, 'Bắc Kạn', 'bac-kan', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:15:49'),
(10, 'Bắc Ninh', 'bac-ninh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:15:43'),
(11, 'Bến Tre', 'ben-tre', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:15:37'),
(12, 'Cao Bằng', 'cao-bang', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:15:28'),
(13, 'Cà Mau', 'ca-mau', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:15:22'),
(14, 'Cần Thơ', 'can-tho', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:15:15'),
(15, 'Gia Lai', 'gia-lai', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:16:40'),
(16, 'Hà Giang', 'ha-giang', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:16:47'),
(17, 'Hà Nam', 'ha-nam', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:16:54'),
(18, 'Hà Nội', 'ha-noi', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:18:14'),
(19, 'Hà Tĩnh', 'ha-tinh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:18:08'),
(20, 'Hòa Bình', 'hoa-binh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:18:02'),
(21, 'Hưng Yên', 'hung-yen', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:17:55'),
(22, 'Hải Dương', 'hai-duong', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:17:50'),
(23, 'Hải Phòng', 'hai-phong', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:17:43'),
(24, 'Hồ Chí Minh', 'ho-chi-minh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:17:38'),
(25, 'Khánh Hòa', 'khanh-hoa', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:17:32'),
(26, 'Kiên Giang', 'kien-giang', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:17:26'),
(27, 'Kon Tum', 'kon-tum', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:17:21'),
(28, 'Lai Châu', 'lai-chau', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:17:14'),
(29, 'Long An', 'long-an', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:17:08'),
(30, 'Lào Cai', 'lao-cai', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:17:01'),
(31, 'Lâm Đồng', 'lam-dong', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:15:08'),
(32, 'Lạng Sơn', 'lang-son', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:15:01'),
(33, 'Nam Định', 'nam-dinh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:14:54'),
(34, 'Nghệ An', 'nghe-an', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:12:41'),
(35, 'Ninh Bình', 'ninh-binh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:12:33'),
(36, 'Ninh Thuận', 'ninh-thuan', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:12:27'),
(37, 'Phú Thọ', 'phu-tho', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:12:20'),
(38, 'Phú Yên', 'phu-yen', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:12:14'),
(39, 'Quảng Nam', 'quang-nam', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:12:09'),
(40, 'Quảng Ngãi', 'quang-ngai', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:12:03'),
(41, 'Quảng Ninh', 'quang-ninh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:11:57'),
(42, 'Quảng Trị', 'quang-tri', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:11:52'),
(43, 'Sơn La', 'son-la', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:11:45'),
(44, 'Thanh Hóa', 'thanh-hoa', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:11:39'),
(45, 'Thái Bình', 'thai-binh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:11:33'),
(46, 'Thái Nguyên', 'thai-nguyen', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:11:28'),
(47, 'Thừa Thiên Huế', 'thua-thien-hue', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:12:47'),
(48, 'Tiền Giang', 'tien-giang', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:12:52'),
(49, 'Trà Vinh', 'tra-vinh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:12:58'),
(50, 'Tuyên Quang', 'tuyen-quang', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:14:49'),
(51, 'Tây Ninh', 'tay-ninh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:14:34'),
(52, 'Vĩnh Long', 'vinh-long', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:14:25'),
(53, 'Vĩnh Phúc', 'vinh-phuc', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:14:20'),
(54, 'Yên Bái', 'yen-bai', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:14:11'),
(55, 'Đà Nẵng', 'da-nang', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:13:58'),
(56, 'Đắk Lắk', 'dak-lak', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:13:52'),
(57, 'Đồng Nai', 'dong-nai', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:13:46'),
(58, 'Đồng Tháp', 'dong-thap', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:13:40'),
(59, 'Bạc Liêu', 'bac-lieu', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:13:33'),
(60, 'Sóc Trăng', 'soc-trang', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:13:19'),
(61, 'Hậu Giang', 'hau-giang', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:13:11'),
(62, 'Đắk Nông', 'dak-nong', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:13:05'),
(63, 'Điện Biên', 'dien-bien', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:11:19');

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

DROP TABLE IF EXISTS `reminders`;
CREATE TABLE `reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting_system`
--

DROP TABLE IF EXISTS `setting_system`;
CREATE TABLE `setting_system` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `title` text,
  `meta_keyword` text,
  `meta_description` text,
  `author` varchar(255) DEFAULT NULL,
  `copyright` text,
  `google_site_verification` text,
  `google_analytics` text,
  `logo_frontend` text,
  `alt_logo` text,
  `favicon` varchar(255) DEFAULT NULL,
  `setting` text,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting_system`
--

INSERT INTO `setting_system` (`id`, `fullname`, `alias`, `title`, `meta_keyword`, `meta_description`, `author`, `copyright`, `google_site_verification`, `google_analytics`, `logo_frontend`, `alt_logo`, `favicon`, `setting`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'settingsystem', 'setting-system', 'CÔNG TY TNHH XNK CÔNG NGHỆ THP', 'CÔNG TY TNHH XNK CÔNG NGHỆ THP', 'CÔNG TY TNHH XNK CÔNG NGHỆ THP', '', '', 'nchybi3cCm3Vm8DT8D6wuq37_eRN6ra0KV-ZodhS2_k', 'UA-115473299-1', 'logo-raecgxbm0zq1.png', NULL, 'logo-raecgxbm0zq1-hfoaje190dcz.png', '[{\"field_name\":\"Số bài viết trên 1 trang\",\"field_code\":\"article_perpage\",\"field_value\":\"10\"},{\"field_name\":\"Độ rộng hình bài viết\",\"field_code\":\"article_width\",\"field_value\":\"400\"},{\"field_name\":\"Độ cao hình bài viết\",\"field_code\":\"article_height\",\"field_value\":\"250\"},{\"field_name\":\"Số sản phẩm trên 1 trang\",\"field_code\":\"product_perpage\",\"field_value\":\"32\"},{\"field_name\":\"Độ rộng hình sản phẩm\",\"field_code\":\"product_width\",\"field_value\":\"400\"},{\"field_name\":\"Độ cao hình sản phẩm\",\"field_code\":\"product_height\",\"field_value\":\"400\"},{\"field_name\":\"Đơn vị tiền tệ\",\"field_code\":\"currency_unit\",\"field_value\":\"vi_VN\"},{\"field_name\":\"MERCHANT_ID\",\"field_code\":\"merchant_id\",\"field_value\":\"36680\"},{\"field_name\":\"MERCHANT_PASS\",\"field_code\":\"merchant_pass\",\"field_value\":\"matkhauketnoi\"},{\"field_name\":\"RECEIVER\",\"field_code\":\"receiver\",\"field_value\":\"demo@nganluong.vn\"},{\"field_name\":\"Smtp host\",\"field_code\":\"smtp_host\",\"field_value\":\"smtp.gmail.com\"},{\"field_name\":\"Smtp port\",\"field_code\":\"smtp_port\",\"field_value\":\"465\"},{\"field_name\":\"Smtp authication\",\"field_code\":\"authentication\",\"field_value\":\"1\"},{\"field_name\":\"Encription\",\"field_code\":\"encription\",\"field_value\":\"ssl\"},{\"field_name\":\"Smtp username\",\"field_code\":\"smtp_username\",\"field_value\":\"dien.toannang@gmail.com\"},{\"field_name\":\"Smtp password\",\"field_code\":\"smtp_password\",\"field_value\":\"bjsdgetadsutdono\"},{\"field_name\":\"Email to\",\"field_code\":\"email_to\",\"field_value\":\"votrantoantk@gmail.com\"},{\"field_name\":\"Contact person\",\"field_code\":\"contacted_person\",\"field_value\":\"Huỳnh Thúc Vinh\"},{\"field_name\":\"Trụ sở\",\"field_code\":\"address\",\"field_value\":\"Số 166/ 26 Lê Trung Đình, P.Sơn Kỳ, Q.Tân Phú, TP.HCM\"},{\"field_name\":\"Hotline\",\"field_code\":\"telephone\",\"field_value\":\"0911.460.639\"},{\"field_name\":\"Facebook\",\"field_code\":\"facebook_url\",\"field_value\":\"https://www.facebook.com/Phụ-Gia-Thực-Phẩm-THP-629396864080442\"},{\"field_name\":\"Twitter\",\"field_code\":\"twitter_url\",\"field_value\":\"https://twitter.com/\"},{\"field_name\":\"Google Plus\",\"field_code\":\"google_plus\",\"field_value\":\"https://plus.google.com/u/0/?hl=vi\"},{\"field_name\":\"Youtube\",\"field_code\":\"youtube_url\",\"field_value\":\"https://www.youtube.com/watch?v=kAcV7S3sySU\"},{\"field_name\":\"Instagram\",\"field_code\":\"instagram_url\",\"field_value\":\"http://flickr.com\"},{\"field_name\":\"Pinterest\",\"field_code\":\"pinterest_url\",\"field_value\":\"http://daidung.vn/\"},{\"field_name\":\"Map\",\"field_code\":\"map_url\",\"field_value\":\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.0967371779593!2d106.62852021480114!3d10.803902592302904!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317529578b7a7555%3A0x8f34e383804dd221!2zxJDGsOG7nW5nIEzDqiBUcnVuZyDEkMOsbmgsIFTDom4gUGjDuiwgSOG7kyBDaMOtIE1pbmg!5e0!3m2!1sen!2s!4v1526955248611\"},{\"field_name\":\"Giờ giao dịch\",\"field_code\":\"opened_time\",\"field_value\":\"7:00 - 22:30\"},{\"field_name\":\"Skype NVKD 1\",\"field_code\":\"skype_nvkd_1\",\"field_value\":\"votruongtoantk\"},{\"field_name\":\"Email NVKD 1\",\"field_code\":\"email_nvkd_1\",\"field_value\":\"votrantoantk@gmail.com\"},{\"field_name\":\"Tel NVKD 1\",\"field_code\":\"tel_nvkd_1\",\"field_value\":\"0911.460.628\"},{\"field_name\":\"NVKD1\",\"field_code\":\"name_nvkd_1\",\"field_value\":\"Toàn Robin 2\"}]', 1, 1, '2017-12-03 07:45:35', '2018-05-29 03:19:58');

-- --------------------------------------------------------

--
-- Table structure for table `supporter`
--

DROP TABLE IF EXISTS `supporter`;
CREATE TABLE `supporter` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_money` decimal(11,0) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `supporter`
--

INSERT INTO `supporter` (`id`, `fullname`, `number_money`, `payment_method_id`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Nguyễn Thị Thu Hằng', '1000000', 1, 1, 1, '2018-01-07 17:32:50', '2018-01-07 17:47:21'),
(7, 'Trần Gia Lạc', '2000000', 2, 2, 1, '2018-01-07 18:02:15', '2018-01-08 07:19:18'),
(8, 'Lê Văn Đại', '2000000', 1, 3, 1, '2018-01-08 02:38:56', '2018-01-08 09:29:07'),
(9, 'Nguyễn Mạnh Hùng', '3000000', 2, 4, 1, '2018-01-08 02:39:19', '2018-01-08 02:39:19'),
(10, 'Trần Tiến Dư', '3000000', 2, 5, 1, '2018-01-08 02:39:35', '2018-01-08 02:39:35');

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

DROP TABLE IF EXISTS `throttle`;
CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(1, NULL, 'global', NULL, '2017-11-12 07:00:10', '2017-11-12 07:00:10'),
(2, NULL, 'ip', '127.0.0.1', '2017-11-12 07:00:10', '2017-11-12 07:00:10'),
(3, NULL, 'global', NULL, '2017-11-12 07:00:22', '2017-11-12 07:00:22'),
(4, NULL, 'ip', '127.0.0.1', '2017-11-12 07:00:22', '2017-11-12 07:00:22'),
(5, NULL, 'global', NULL, '2017-11-12 07:00:36', '2017-11-12 07:00:36'),
(6, NULL, 'ip', '127.0.0.1', '2017-11-12 07:00:36', '2017-11-12 07:00:36'),
(7, NULL, 'global', NULL, '2017-11-12 07:05:02', '2017-11-12 07:05:02'),
(8, NULL, 'ip', '127.0.0.1', '2017-11-12 07:05:02', '2017-11-12 07:05:02'),
(9, NULL, 'global', NULL, '2017-11-12 07:30:11', '2017-11-12 07:30:11'),
(10, NULL, 'ip', '127.0.0.1', '2017-11-12 07:30:11', '2017-11-12 07:30:11'),
(11, NULL, 'global', NULL, '2017-11-12 07:32:49', '2017-11-12 07:32:49'),
(12, NULL, 'ip', '127.0.0.1', '2017-11-12 07:32:49', '2017-11-12 07:32:49'),
(13, NULL, 'global', NULL, '2017-11-12 07:39:23', '2017-11-12 07:39:23'),
(14, NULL, 'ip', '127.0.0.1', '2017-11-12 07:39:23', '2017-11-12 07:39:23'),
(15, NULL, 'global', NULL, '2017-11-12 07:55:42', '2017-11-12 07:55:42'),
(16, NULL, 'ip', '127.0.0.1', '2017-11-12 07:55:42', '2017-11-12 07:55:42'),
(17, NULL, 'global', NULL, '2017-11-12 07:59:33', '2017-11-12 07:59:33'),
(18, NULL, 'ip', '127.0.0.1', '2017-11-12 07:59:33', '2017-11-12 07:59:33'),
(19, NULL, 'global', NULL, '2017-11-12 08:01:13', '2017-11-12 08:01:13'),
(20, NULL, 'ip', '127.0.0.1', '2017-11-12 08:01:13', '2017-11-12 08:01:13'),
(21, NULL, 'global', NULL, '2017-11-12 08:01:34', '2017-11-12 08:01:34'),
(22, NULL, 'ip', '127.0.0.1', '2017-11-12 08:01:34', '2017-11-12 08:01:34'),
(23, NULL, 'global', NULL, '2017-11-12 08:01:41', '2017-11-12 08:01:41'),
(24, NULL, 'ip', '127.0.0.1', '2017-11-12 08:01:41', '2017-11-12 08:01:41'),
(25, NULL, 'global', NULL, '2017-11-12 08:02:05', '2017-11-12 08:02:05'),
(26, NULL, 'ip', '127.0.0.1', '2017-11-12 08:02:05', '2017-11-12 08:02:05'),
(27, NULL, 'global', NULL, '2017-11-12 08:12:23', '2017-11-12 08:12:23'),
(28, NULL, 'ip', '127.0.0.1', '2017-11-12 08:12:23', '2017-11-12 08:12:23'),
(29, NULL, 'global', NULL, '2017-11-12 08:18:51', '2017-11-12 08:18:51'),
(30, NULL, 'ip', '127.0.0.1', '2017-11-12 08:18:51', '2017-11-12 08:18:51'),
(31, NULL, 'global', NULL, '2017-11-12 08:19:22', '2017-11-12 08:19:22'),
(32, NULL, 'ip', '127.0.0.1', '2017-11-12 08:19:22', '2017-11-12 08:19:22'),
(33, NULL, 'global', NULL, '2017-11-12 08:34:38', '2017-11-12 08:34:38'),
(34, NULL, 'ip', '127.0.0.1', '2017-11-12 08:34:38', '2017-11-12 08:34:38'),
(35, NULL, 'global', NULL, '2017-11-12 10:21:38', '2017-11-12 10:21:38'),
(36, NULL, 'ip', '127.0.0.1', '2017-11-12 10:21:38', '2017-11-12 10:21:38'),
(37, NULL, 'global', NULL, '2017-11-12 10:38:16', '2017-11-12 10:38:16'),
(38, NULL, 'ip', '127.0.0.1', '2017-11-12 10:38:16', '2017-11-12 10:38:16'),
(39, 1, 'user', NULL, '2017-11-12 10:38:16', '2017-11-12 10:38:16'),
(40, NULL, 'global', NULL, '2017-11-12 10:39:37', '2017-11-12 10:39:37'),
(41, NULL, 'ip', '127.0.0.1', '2017-11-12 10:39:37', '2017-11-12 10:39:37'),
(42, 1, 'user', NULL, '2017-11-12 10:39:37', '2017-11-12 10:39:37'),
(43, NULL, 'global', NULL, '2017-11-12 10:58:13', '2017-11-12 10:58:13'),
(44, NULL, 'ip', '127.0.0.1', '2017-11-12 10:58:13', '2017-11-12 10:58:13'),
(45, NULL, 'global', NULL, '2017-11-12 10:59:19', '2017-11-12 10:59:19'),
(46, NULL, 'ip', '127.0.0.1', '2017-11-12 10:59:19', '2017-11-12 10:59:19'),
(47, 4, 'user', NULL, '2017-11-12 10:59:19', '2017-11-12 10:59:19'),
(48, NULL, 'global', NULL, '2017-11-12 11:00:10', '2017-11-12 11:00:10'),
(49, NULL, 'ip', '127.0.0.1', '2017-11-12 11:00:10', '2017-11-12 11:00:10'),
(50, 4, 'user', NULL, '2017-11-12 11:00:10', '2017-11-12 11:00:10'),
(51, NULL, 'global', NULL, '2017-11-12 11:04:27', '2017-11-12 11:04:27'),
(52, NULL, 'ip', '127.0.0.1', '2017-11-12 11:04:27', '2017-11-12 11:04:27'),
(53, 4, 'user', NULL, '2017-11-12 11:04:27', '2017-11-12 11:04:27'),
(54, NULL, 'global', NULL, '2017-11-12 11:05:04', '2017-11-12 11:05:04'),
(55, NULL, 'ip', '127.0.0.1', '2017-11-12 11:05:04', '2017-11-12 11:05:04'),
(56, 1, 'user', NULL, '2017-11-12 11:05:04', '2017-11-12 11:05:04'),
(57, NULL, 'global', NULL, '2017-11-12 11:08:43', '2017-11-12 11:08:43'),
(58, NULL, 'ip', '127.0.0.1', '2017-11-12 11:08:43', '2017-11-12 11:08:43'),
(59, 1, 'user', NULL, '2017-11-12 11:08:43', '2017-11-12 11:08:43'),
(60, NULL, 'global', NULL, '2017-11-12 11:14:37', '2017-11-12 11:14:37'),
(61, NULL, 'ip', '127.0.0.1', '2017-11-12 11:14:37', '2017-11-12 11:14:37'),
(62, 1, 'user', NULL, '2017-11-12 11:14:37', '2017-11-12 11:14:37'),
(63, NULL, 'global', NULL, '2017-11-12 11:18:13', '2017-11-12 11:18:13'),
(64, NULL, 'ip', '127.0.0.1', '2017-11-12 11:18:13', '2017-11-12 11:18:13'),
(65, 4, 'user', NULL, '2017-11-12 11:18:13', '2017-11-12 11:18:13'),
(66, NULL, 'global', NULL, '2017-11-12 11:19:22', '2017-11-12 11:19:22'),
(67, NULL, 'ip', '127.0.0.1', '2017-11-12 11:19:22', '2017-11-12 11:19:22'),
(68, 4, 'user', NULL, '2017-11-12 11:19:22', '2017-11-12 11:19:22'),
(69, NULL, 'global', NULL, '2017-11-12 12:21:15', '2017-11-12 12:21:15'),
(70, NULL, 'ip', '127.0.0.1', '2017-11-12 12:21:15', '2017-11-12 12:21:15'),
(71, 1, 'user', NULL, '2017-11-12 12:21:15', '2017-11-12 12:21:15'),
(72, NULL, 'global', NULL, '2017-11-12 12:30:54', '2017-11-12 12:30:54'),
(73, NULL, 'ip', '127.0.0.1', '2017-11-12 12:30:54', '2017-11-12 12:30:54'),
(74, 1, 'user', NULL, '2017-11-12 12:30:54', '2017-11-12 12:30:54'),
(75, NULL, 'global', NULL, '2017-11-12 12:31:09', '2017-11-12 12:31:09'),
(76, NULL, 'ip', '127.0.0.1', '2017-11-12 12:31:09', '2017-11-12 12:31:09'),
(77, 1, 'user', NULL, '2017-11-12 12:31:09', '2017-11-12 12:31:09'),
(78, NULL, 'global', NULL, '2017-11-12 19:20:51', '2017-11-12 19:20:51'),
(79, NULL, 'ip', '127.0.0.1', '2017-11-12 19:20:51', '2017-11-12 19:20:51'),
(80, NULL, 'global', NULL, '2017-11-12 19:20:51', '2017-11-12 19:20:51'),
(81, NULL, 'ip', '127.0.0.1', '2017-11-12 19:20:51', '2017-11-12 19:20:51'),
(82, NULL, 'global', NULL, '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(83, NULL, 'ip', '127.0.0.1', '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(84, NULL, 'global', NULL, '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(85, NULL, 'ip', '127.0.0.1', '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(86, NULL, 'global', NULL, '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(87, NULL, 'ip', '127.0.0.1', '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(88, NULL, 'global', NULL, '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(89, NULL, 'ip', '127.0.0.1', '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(90, NULL, 'global', NULL, '2017-11-12 19:24:30', '2017-11-12 19:24:30'),
(91, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:30', '2017-11-12 19:24:30'),
(92, NULL, 'global', NULL, '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(93, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(94, NULL, 'global', NULL, '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(95, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(96, NULL, 'global', NULL, '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(97, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(98, NULL, 'global', NULL, '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(99, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(100, NULL, 'global', NULL, '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(101, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(102, NULL, 'global', NULL, '2017-11-12 19:24:32', '2017-11-12 19:24:32'),
(103, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:32', '2017-11-12 19:24:32'),
(104, NULL, 'global', NULL, '2017-11-12 19:24:32', '2017-11-12 19:24:32'),
(105, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:32', '2017-11-12 19:24:32'),
(106, NULL, 'global', NULL, '2017-11-12 19:24:32', '2017-11-12 19:24:32'),
(107, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:32', '2017-11-12 19:24:32'),
(108, NULL, 'global', NULL, '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(109, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(110, NULL, 'global', NULL, '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(111, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(112, NULL, 'global', NULL, '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(113, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(114, NULL, 'global', NULL, '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(115, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(116, NULL, 'global', NULL, '2017-11-12 19:24:34', '2017-11-12 19:24:34'),
(117, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:34', '2017-11-12 19:24:34'),
(118, NULL, 'global', NULL, '2017-11-12 19:24:34', '2017-11-12 19:24:34'),
(119, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:34', '2017-11-12 19:24:34'),
(120, NULL, 'global', NULL, '2017-11-12 19:24:34', '2017-11-12 19:24:34'),
(121, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:34', '2017-11-12 19:24:34'),
(122, NULL, 'global', NULL, '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(123, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(124, NULL, 'global', NULL, '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(125, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(126, NULL, 'global', NULL, '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(127, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(128, NULL, 'global', NULL, '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(129, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(130, NULL, 'global', NULL, '2017-11-12 19:24:39', '2017-11-12 19:24:39'),
(131, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:39', '2017-11-12 19:24:39'),
(132, NULL, 'global', NULL, '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(133, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(134, NULL, 'global', NULL, '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(135, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(136, NULL, 'global', NULL, '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(137, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(138, NULL, 'global', NULL, '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(139, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(140, NULL, 'global', NULL, '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(141, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(142, NULL, 'global', NULL, '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(143, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(144, NULL, 'global', NULL, '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(145, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(146, NULL, 'global', NULL, '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(147, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(148, NULL, 'global', NULL, '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(149, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(150, NULL, 'global', NULL, '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(151, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(152, NULL, 'global', NULL, '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(153, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(154, NULL, 'global', NULL, '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(155, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(156, NULL, 'global', NULL, '2017-11-12 19:24:43', '2017-11-12 19:24:43'),
(157, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:43', '2017-11-12 19:24:43'),
(158, NULL, 'global', NULL, '2017-11-12 19:24:43', '2017-11-12 19:24:43'),
(159, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:43', '2017-11-12 19:24:43'),
(160, NULL, 'global', NULL, '2017-11-12 19:24:43', '2017-11-12 19:24:43'),
(161, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:43', '2017-11-12 19:24:43'),
(162, NULL, 'global', NULL, '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(163, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(164, NULL, 'global', NULL, '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(165, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(166, NULL, 'global', NULL, '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(167, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(168, NULL, 'global', NULL, '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(169, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(170, NULL, 'global', NULL, '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(171, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(172, NULL, 'global', NULL, '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(173, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(174, NULL, 'global', NULL, '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(175, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(176, NULL, 'global', NULL, '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(177, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(178, NULL, 'global', NULL, '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(179, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(180, NULL, 'global', NULL, '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(181, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(182, NULL, 'global', NULL, '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(183, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(184, NULL, 'global', NULL, '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(185, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(186, NULL, 'global', NULL, '2017-11-12 19:24:47', '2017-11-12 19:24:47'),
(187, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:47', '2017-11-12 19:24:47'),
(188, NULL, 'global', NULL, '2017-11-12 19:24:47', '2017-11-12 19:24:47'),
(189, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:47', '2017-11-12 19:24:47'),
(190, NULL, 'global', NULL, '2017-11-12 19:24:47', '2017-11-12 19:24:47'),
(191, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:47', '2017-11-12 19:24:47'),
(192, NULL, 'global', NULL, '2017-11-12 19:24:48', '2017-11-12 19:24:48'),
(193, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:48', '2017-11-12 19:24:48'),
(194, NULL, 'global', NULL, '2017-11-12 19:24:48', '2017-11-12 19:24:48'),
(195, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:48', '2017-11-12 19:24:48'),
(196, NULL, 'global', NULL, '2017-11-12 19:24:48', '2017-11-12 19:24:48'),
(197, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:48', '2017-11-12 19:24:48'),
(198, NULL, 'global', NULL, '2017-11-12 19:24:49', '2017-11-12 19:24:49'),
(199, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:49', '2017-11-12 19:24:49'),
(200, NULL, 'global', NULL, '2017-11-12 19:24:49', '2017-11-12 19:24:49'),
(201, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:49', '2017-11-12 19:24:49'),
(202, NULL, 'global', NULL, '2017-11-12 19:24:49', '2017-11-12 19:24:49'),
(203, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:49', '2017-11-12 19:24:49'),
(204, NULL, 'global', NULL, '2017-11-12 19:24:50', '2017-11-12 19:24:50'),
(205, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:50', '2017-11-12 19:24:50'),
(206, NULL, 'global', NULL, '2017-11-12 19:24:50', '2017-11-12 19:24:50'),
(207, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:50', '2017-11-12 19:24:50'),
(208, NULL, 'global', NULL, '2017-11-12 19:24:50', '2017-11-12 19:24:50'),
(209, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:50', '2017-11-12 19:24:50'),
(210, NULL, 'global', NULL, '2017-11-12 19:24:51', '2017-11-12 19:24:51'),
(211, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:51', '2017-11-12 19:24:51'),
(212, NULL, 'global', NULL, '2017-11-12 19:24:51', '2017-11-12 19:24:51'),
(213, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:51', '2017-11-12 19:24:51'),
(214, NULL, 'global', NULL, '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(215, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(216, NULL, 'global', NULL, '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(217, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(218, NULL, 'global', NULL, '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(219, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(220, NULL, 'global', NULL, '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(221, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(222, NULL, 'global', NULL, '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(223, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(224, NULL, 'global', NULL, '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(225, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(226, NULL, 'global', NULL, '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(227, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(228, NULL, 'global', NULL, '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(229, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(230, NULL, 'global', NULL, '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(231, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(232, NULL, 'global', NULL, '2017-11-12 19:24:59', '2017-11-12 19:24:59'),
(233, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:59', '2017-11-12 19:24:59'),
(234, NULL, 'global', NULL, '2017-11-12 19:24:59', '2017-11-12 19:24:59'),
(235, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:59', '2017-11-12 19:24:59'),
(236, NULL, 'global', NULL, '2017-11-12 19:24:59', '2017-11-12 19:24:59'),
(237, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:59', '2017-11-12 19:24:59'),
(238, NULL, 'global', NULL, '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(239, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(240, NULL, 'global', NULL, '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(241, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(242, NULL, 'global', NULL, '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(243, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(244, NULL, 'global', NULL, '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(245, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(246, NULL, 'global', NULL, '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(247, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(248, NULL, 'global', NULL, '2017-11-12 19:25:01', '2017-11-12 19:25:01'),
(249, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:01', '2017-11-12 19:25:01'),
(250, NULL, 'global', NULL, '2017-11-12 19:25:01', '2017-11-12 19:25:01'),
(251, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:01', '2017-11-12 19:25:01'),
(252, NULL, 'global', NULL, '2017-11-12 19:25:01', '2017-11-12 19:25:01'),
(253, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:01', '2017-11-12 19:25:01'),
(254, NULL, 'global', NULL, '2017-11-12 19:25:02', '2017-11-12 19:25:02'),
(255, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:02', '2017-11-12 19:25:02'),
(256, NULL, 'global', NULL, '2017-11-12 19:25:32', '2017-11-12 19:25:32'),
(257, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:32', '2017-11-12 19:25:32'),
(258, NULL, 'global', NULL, '2017-11-12 19:25:32', '2017-11-12 19:25:32'),
(259, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:32', '2017-11-12 19:25:32'),
(260, NULL, 'global', NULL, '2017-11-12 19:25:32', '2017-11-12 19:25:32'),
(261, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:32', '2017-11-12 19:25:32'),
(262, NULL, 'global', NULL, '2017-11-12 19:25:33', '2017-11-12 19:25:33'),
(263, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:33', '2017-11-12 19:25:33'),
(264, NULL, 'global', NULL, '2017-11-12 19:25:33', '2017-11-12 19:25:33'),
(265, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:33', '2017-11-12 19:25:33'),
(266, NULL, 'global', NULL, '2017-11-12 19:25:33', '2017-11-12 19:25:33'),
(267, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:33', '2017-11-12 19:25:33'),
(268, NULL, 'global', NULL, '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(269, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(270, NULL, 'global', NULL, '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(271, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(272, NULL, 'global', NULL, '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(273, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(274, NULL, 'global', NULL, '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(275, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(276, NULL, 'global', NULL, '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(277, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(278, NULL, 'global', NULL, '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(279, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(280, NULL, 'global', NULL, '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(281, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(282, NULL, 'global', NULL, '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(283, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(284, NULL, 'global', NULL, '2017-11-12 19:25:36', '2017-11-12 19:25:36'),
(285, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:36', '2017-11-12 19:25:36'),
(286, NULL, 'global', NULL, '2017-11-12 19:25:36', '2017-11-12 19:25:36'),
(287, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:36', '2017-11-12 19:25:36'),
(288, NULL, 'global', NULL, '2017-11-12 19:25:36', '2017-11-12 19:25:36'),
(289, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:36', '2017-11-12 19:25:36'),
(290, NULL, 'global', NULL, '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(291, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(292, NULL, 'global', NULL, '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(293, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(294, NULL, 'global', NULL, '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(295, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(296, NULL, 'global', NULL, '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(297, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(298, NULL, 'global', NULL, '2017-11-12 19:36:41', '2017-11-12 19:36:41'),
(299, NULL, 'ip', '127.0.0.1', '2017-11-12 19:36:41', '2017-11-12 19:36:41'),
(300, 4, 'user', NULL, '2017-11-12 19:36:41', '2017-11-12 19:36:41'),
(301, NULL, 'global', NULL, '2017-11-12 19:44:35', '2017-11-12 19:44:35'),
(302, NULL, 'ip', '127.0.0.1', '2017-11-12 19:44:35', '2017-11-12 19:44:35'),
(303, 1, 'user', NULL, '2017-11-12 19:44:35', '2017-11-12 19:44:35'),
(304, NULL, 'global', NULL, '2017-11-13 12:12:10', '2017-11-13 12:12:10'),
(305, NULL, 'ip', '127.0.0.1', '2017-11-13 12:12:10', '2017-11-13 12:12:10'),
(306, 1, 'user', NULL, '2017-11-13 12:12:10', '2017-11-13 12:12:10'),
(307, NULL, 'global', NULL, '2017-11-15 04:15:14', '2017-11-15 04:15:14'),
(308, NULL, 'ip', '127.0.0.1', '2017-11-15 04:15:14', '2017-11-15 04:15:14'),
(309, NULL, 'global', NULL, '2017-11-25 05:02:29', '2017-11-25 05:02:29'),
(310, NULL, 'ip', '127.0.0.1', '2017-11-25 05:02:29', '2017-11-25 05:02:29'),
(311, 1, 'user', NULL, '2017-11-25 05:02:29', '2017-11-25 05:02:29'),
(312, NULL, 'global', NULL, '2017-11-25 21:57:16', '2017-11-25 21:57:16'),
(313, NULL, 'ip', '127.0.0.1', '2017-11-25 21:57:16', '2017-11-25 21:57:16'),
(314, 6, 'user', NULL, '2017-11-25 21:57:16', '2017-11-25 21:57:16'),
(315, NULL, 'global', NULL, '2017-11-25 21:57:22', '2017-11-25 21:57:22'),
(316, NULL, 'ip', '127.0.0.1', '2017-11-25 21:57:22', '2017-11-25 21:57:22'),
(317, 6, 'user', NULL, '2017-11-25 21:57:22', '2017-11-25 21:57:22'),
(318, NULL, 'global', NULL, '2017-11-26 20:07:31', '2017-11-26 20:07:31'),
(319, NULL, 'ip', '127.0.0.1', '2017-11-26 20:07:31', '2017-11-26 20:07:31'),
(320, 1, 'user', NULL, '2017-11-26 20:07:31', '2017-11-26 20:07:31'),
(321, NULL, 'global', NULL, '2017-11-27 00:24:45', '2017-11-27 00:24:45'),
(322, NULL, 'ip', '127.0.0.1', '2017-11-27 00:24:45', '2017-11-27 00:24:45'),
(323, 1, 'user', NULL, '2017-11-27 00:24:45', '2017-11-27 00:24:45'),
(324, NULL, 'global', NULL, '2017-11-27 00:24:45', '2017-11-27 00:24:45'),
(325, NULL, 'ip', '127.0.0.1', '2017-11-27 00:24:45', '2017-11-27 00:24:45'),
(326, 1, 'user', NULL, '2017-11-27 00:24:45', '2017-11-27 00:24:45'),
(327, NULL, 'global', NULL, '2017-11-30 08:03:16', '2017-11-30 08:03:16'),
(328, NULL, 'ip', '127.0.0.1', '2017-11-30 08:03:16', '2017-11-30 08:03:16'),
(329, 1, 'user', NULL, '2017-11-30 08:03:16', '2017-11-30 08:03:16'),
(330, NULL, 'global', NULL, '2017-12-03 07:41:47', '2017-12-03 07:41:47'),
(331, NULL, 'ip', '127.0.0.1', '2017-12-03 07:41:47', '2017-12-03 07:41:47'),
(332, 1, 'user', NULL, '2017-12-03 07:41:47', '2017-12-03 07:41:47'),
(333, NULL, 'global', NULL, '2017-12-03 11:49:24', '2017-12-03 11:49:24'),
(334, NULL, 'ip', '127.0.0.1', '2017-12-03 11:49:24', '2017-12-03 11:49:24'),
(335, NULL, 'global', NULL, '2017-12-03 11:49:31', '2017-12-03 11:49:31'),
(336, NULL, 'ip', '127.0.0.1', '2017-12-03 11:49:31', '2017-12-03 11:49:31'),
(337, NULL, 'global', NULL, '2017-12-03 11:49:49', '2017-12-03 11:49:49'),
(338, NULL, 'ip', '127.0.0.1', '2017-12-03 11:49:49', '2017-12-03 11:49:49'),
(339, NULL, 'global', NULL, '2017-12-03 11:50:32', '2017-12-03 11:50:32'),
(340, NULL, 'ip', '127.0.0.1', '2017-12-03 11:50:32', '2017-12-03 11:50:32'),
(341, NULL, 'global', NULL, '2017-12-03 11:54:18', '2017-12-03 11:54:18'),
(342, NULL, 'ip', '127.0.0.1', '2017-12-03 11:54:18', '2017-12-03 11:54:18'),
(343, NULL, 'global', NULL, '2017-12-04 11:12:12', '2017-12-04 11:12:12'),
(344, NULL, 'ip', '127.0.0.1', '2017-12-04 11:12:12', '2017-12-04 11:12:12'),
(345, 1, 'user', NULL, '2017-12-04 11:12:12', '2017-12-04 11:12:12'),
(346, NULL, 'global', NULL, '2017-12-05 09:04:13', '2017-12-05 09:04:13'),
(347, NULL, 'ip', '127.0.0.1', '2017-12-05 09:04:13', '2017-12-05 09:04:13'),
(348, 1, 'user', NULL, '2017-12-05 09:04:13', '2017-12-05 09:04:13'),
(349, NULL, 'global', NULL, '2017-12-08 11:51:32', '2017-12-08 11:51:32'),
(350, NULL, 'ip', '127.0.0.1', '2017-12-08 11:51:32', '2017-12-08 11:51:32'),
(351, 1, 'user', NULL, '2017-12-08 11:51:32', '2017-12-08 11:51:32'),
(352, NULL, 'global', NULL, '2017-12-08 11:51:37', '2017-12-08 11:51:37'),
(353, NULL, 'ip', '127.0.0.1', '2017-12-08 11:51:37', '2017-12-08 11:51:37'),
(354, 1, 'user', NULL, '2017-12-08 11:51:37', '2017-12-08 11:51:37'),
(355, NULL, 'global', NULL, '2017-12-13 11:11:12', '2017-12-13 11:11:12'),
(356, NULL, 'ip', '127.0.0.1', '2017-12-13 11:11:12', '2017-12-13 11:11:12'),
(357, 1, 'user', NULL, '2017-12-13 11:11:12', '2017-12-13 11:11:12'),
(358, NULL, 'global', NULL, '2017-12-13 11:11:19', '2017-12-13 11:11:19'),
(359, NULL, 'ip', '127.0.0.1', '2017-12-13 11:11:19', '2017-12-13 11:11:19'),
(360, 1, 'user', NULL, '2017-12-13 11:11:19', '2017-12-13 11:11:19'),
(361, NULL, 'global', NULL, '2017-12-13 11:11:21', '2017-12-13 11:11:21'),
(362, NULL, 'ip', '127.0.0.1', '2017-12-13 11:11:21', '2017-12-13 11:11:21'),
(363, 1, 'user', NULL, '2017-12-13 11:11:21', '2017-12-13 11:11:21'),
(364, NULL, 'global', NULL, '2017-12-13 19:46:17', '2017-12-13 19:46:17'),
(365, NULL, 'ip', '127.0.0.1', '2017-12-13 19:46:17', '2017-12-13 19:46:17'),
(366, 1, 'user', NULL, '2017-12-13 19:46:17', '2017-12-13 19:46:17'),
(367, NULL, 'global', NULL, '2017-12-13 19:46:22', '2017-12-13 19:46:22'),
(368, NULL, 'ip', '127.0.0.1', '2017-12-13 19:46:22', '2017-12-13 19:46:22'),
(369, 1, 'user', NULL, '2017-12-13 19:46:22', '2017-12-13 19:46:22'),
(370, NULL, 'global', NULL, '2017-12-16 00:21:37', '2017-12-16 00:21:37'),
(371, NULL, 'ip', '127.0.0.1', '2017-12-16 00:21:37', '2017-12-16 00:21:37'),
(372, 1, 'user', NULL, '2017-12-16 00:21:37', '2017-12-16 00:21:37'),
(373, NULL, 'global', NULL, '2017-12-17 18:07:51', '2017-12-17 18:07:51'),
(374, NULL, 'ip', '127.0.0.1', '2017-12-17 18:07:51', '2017-12-17 18:07:51'),
(375, 1, 'user', NULL, '2017-12-17 18:07:51', '2017-12-17 18:07:51'),
(376, NULL, 'global', NULL, '2017-12-29 02:09:21', '2017-12-29 02:09:21'),
(377, NULL, 'ip', '127.0.0.1', '2017-12-29 02:09:21', '2017-12-29 02:09:21'),
(378, 1, 'user', NULL, '2017-12-29 02:09:21', '2017-12-29 02:09:21'),
(379, NULL, 'global', NULL, '2017-12-29 02:09:27', '2017-12-29 02:09:27'),
(380, NULL, 'ip', '127.0.0.1', '2017-12-29 02:09:27', '2017-12-29 02:09:27'),
(381, 1, 'user', NULL, '2017-12-29 02:09:27', '2017-12-29 02:09:27'),
(382, NULL, 'global', NULL, '2017-12-29 05:40:34', '2017-12-29 05:40:34'),
(383, NULL, 'ip', '127.0.0.1', '2017-12-29 05:40:34', '2017-12-29 05:40:34'),
(384, 1, 'user', NULL, '2017-12-29 05:40:34', '2017-12-29 05:40:34'),
(385, NULL, 'global', NULL, '2017-12-29 05:40:39', '2017-12-29 05:40:39'),
(386, NULL, 'ip', '127.0.0.1', '2017-12-29 05:40:39', '2017-12-29 05:40:39'),
(387, 1, 'user', NULL, '2017-12-29 05:40:39', '2017-12-29 05:40:39'),
(388, NULL, 'global', NULL, '2018-01-01 19:20:37', '2018-01-01 19:20:37'),
(389, NULL, 'ip', '127.0.0.1', '2018-01-01 19:20:37', '2018-01-01 19:20:37'),
(390, 1, 'user', NULL, '2018-01-01 19:20:37', '2018-01-01 19:20:37'),
(391, NULL, 'global', NULL, '2018-01-05 05:03:06', '2018-01-05 05:03:06'),
(392, NULL, 'ip', '127.0.0.1', '2018-01-05 05:03:06', '2018-01-05 05:03:06'),
(393, 1, 'user', NULL, '2018-01-05 05:03:06', '2018-01-05 05:03:06'),
(394, NULL, 'global', NULL, '2018-01-07 02:06:01', '2018-01-07 02:06:01'),
(395, NULL, 'ip', '127.0.0.1', '2018-01-07 02:06:01', '2018-01-07 02:06:01'),
(396, NULL, 'global', NULL, '2018-01-08 23:12:58', '2018-01-08 23:12:58'),
(397, NULL, 'ip', '127.0.0.1', '2018-01-08 23:12:58', '2018-01-08 23:12:58'),
(398, NULL, 'global', NULL, '2018-01-08 23:13:07', '2018-01-08 23:13:07'),
(399, NULL, 'ip', '127.0.0.1', '2018-01-08 23:13:07', '2018-01-08 23:13:07'),
(400, NULL, 'global', NULL, '2018-01-08 23:13:09', '2018-01-08 23:13:09'),
(401, NULL, 'ip', '127.0.0.1', '2018-01-08 23:13:09', '2018-01-08 23:13:09'),
(402, NULL, 'global', NULL, '2018-01-15 01:13:23', '2018-01-15 01:13:23'),
(403, NULL, 'ip', '127.0.0.1', '2018-01-15 01:13:23', '2018-01-15 01:13:23'),
(404, NULL, 'global', NULL, '2018-01-15 11:12:12', '2018-01-15 11:12:12'),
(405, NULL, 'ip', '127.0.0.1', '2018-01-15 11:12:12', '2018-01-15 11:12:12'),
(406, NULL, 'global', NULL, '2018-01-18 09:25:07', '2018-01-18 09:25:07'),
(407, NULL, 'ip', '127.0.0.1', '2018-01-18 09:25:07', '2018-01-18 09:25:07'),
(408, 1, 'user', NULL, '2018-01-18 09:25:07', '2018-01-18 09:25:07'),
(409, NULL, 'global', NULL, '2018-01-18 21:48:18', '2018-01-18 21:48:18'),
(410, NULL, 'ip', '127.0.0.1', '2018-01-18 21:48:18', '2018-01-18 21:48:18'),
(411, 1, 'user', NULL, '2018-01-18 21:48:18', '2018-01-18 21:48:18'),
(412, NULL, 'global', NULL, '2018-01-19 00:25:45', '2018-01-19 00:25:45'),
(413, NULL, 'ip', '127.0.0.1', '2018-01-19 00:25:45', '2018-01-19 00:25:45'),
(414, 1, 'user', NULL, '2018-01-19 00:25:45', '2018-01-19 00:25:45'),
(415, NULL, 'global', NULL, '2018-01-26 01:05:07', '2018-01-26 01:05:07'),
(416, NULL, 'ip', '127.0.0.1', '2018-01-26 01:05:07', '2018-01-26 01:05:07'),
(417, 1, 'user', NULL, '2018-01-26 01:05:07', '2018-01-26 01:05:07'),
(418, NULL, 'global', NULL, '2018-01-26 01:43:54', '2018-01-26 01:43:54'),
(419, NULL, 'ip', '127.0.0.1', '2018-01-26 01:43:54', '2018-01-26 01:43:54'),
(420, 4, 'user', NULL, '2018-01-26 01:43:54', '2018-01-26 01:43:54'),
(421, NULL, 'global', NULL, '2018-01-26 01:44:01', '2018-01-26 01:44:01'),
(422, NULL, 'ip', '127.0.0.1', '2018-01-26 01:44:01', '2018-01-26 01:44:01'),
(423, 4, 'user', NULL, '2018-01-26 01:44:01', '2018-01-26 01:44:01'),
(424, NULL, 'global', NULL, '2018-01-26 01:59:32', '2018-01-26 01:59:32'),
(425, NULL, 'ip', '127.0.0.1', '2018-01-26 01:59:32', '2018-01-26 01:59:32'),
(426, 6, 'user', NULL, '2018-01-26 01:59:32', '2018-01-26 01:59:32'),
(427, NULL, 'global', NULL, '2018-01-26 02:01:55', '2018-01-26 02:01:55'),
(428, NULL, 'ip', '127.0.0.1', '2018-01-26 02:01:55', '2018-01-26 02:01:55'),
(429, 6, 'user', NULL, '2018-01-26 02:01:55', '2018-01-26 02:01:55'),
(430, NULL, 'global', NULL, '2018-01-26 02:02:14', '2018-01-26 02:02:14'),
(431, NULL, 'ip', '127.0.0.1', '2018-01-26 02:02:14', '2018-01-26 02:02:14'),
(432, 6, 'user', NULL, '2018-01-26 02:02:14', '2018-01-26 02:02:14'),
(433, NULL, 'global', NULL, '2018-01-26 02:30:24', '2018-01-26 02:30:24'),
(434, NULL, 'ip', '127.0.0.1', '2018-01-26 02:30:24', '2018-01-26 02:30:24'),
(435, 6, 'user', NULL, '2018-01-26 02:30:24', '2018-01-26 02:30:24'),
(436, NULL, 'global', NULL, '2018-01-26 02:37:37', '2018-01-26 02:37:37'),
(437, NULL, 'ip', '127.0.0.1', '2018-01-26 02:37:37', '2018-01-26 02:37:37'),
(438, 6, 'user', NULL, '2018-01-26 02:37:37', '2018-01-26 02:37:37'),
(439, NULL, 'global', NULL, '2018-01-26 03:16:56', '2018-01-26 03:16:56'),
(440, NULL, 'ip', '127.0.0.1', '2018-01-26 03:16:56', '2018-01-26 03:16:56'),
(441, 6, 'user', NULL, '2018-01-26 03:16:56', '2018-01-26 03:16:56'),
(442, NULL, 'global', NULL, '2018-01-26 03:35:32', '2018-01-26 03:35:32'),
(443, NULL, 'ip', '127.0.0.1', '2018-01-26 03:35:32', '2018-01-26 03:35:32'),
(444, 6, 'user', NULL, '2018-01-26 03:35:32', '2018-01-26 03:35:32'),
(445, NULL, 'global', NULL, '2018-01-28 09:40:43', '2018-01-28 09:40:43'),
(446, NULL, 'ip', '127.0.0.1', '2018-01-28 09:40:43', '2018-01-28 09:40:43'),
(447, 7, 'user', NULL, '2018-01-28 09:40:43', '2018-01-28 09:40:43'),
(448, NULL, 'global', NULL, '2018-01-29 18:33:51', '2018-01-29 18:33:51'),
(449, NULL, 'ip', '127.0.0.1', '2018-01-29 18:33:51', '2018-01-29 18:33:51'),
(450, 1, 'user', NULL, '2018-01-29 18:33:51', '2018-01-29 18:33:51'),
(451, NULL, 'global', NULL, '2018-01-31 00:07:37', '2018-01-31 00:07:37'),
(452, NULL, 'ip', '127.0.0.1', '2018-01-31 00:07:37', '2018-01-31 00:07:37'),
(453, 1, 'user', NULL, '2018-01-31 00:07:37', '2018-01-31 00:07:37'),
(454, NULL, 'global', NULL, '2018-01-31 00:07:43', '2018-01-31 00:07:43'),
(455, NULL, 'ip', '127.0.0.1', '2018-01-31 00:07:44', '2018-01-31 00:07:44'),
(456, 1, 'user', NULL, '2018-01-31 00:07:44', '2018-01-31 00:07:44'),
(457, NULL, 'global', NULL, '2018-01-31 10:50:07', '2018-01-31 10:50:07'),
(458, NULL, 'ip', '127.0.0.1', '2018-01-31 10:50:07', '2018-01-31 10:50:07'),
(459, 1, 'user', NULL, '2018-01-31 10:50:07', '2018-01-31 10:50:07'),
(460, NULL, 'global', NULL, '2018-01-31 20:44:30', '2018-01-31 20:44:30'),
(461, NULL, 'ip', '127.0.0.1', '2018-01-31 20:44:30', '2018-01-31 20:44:30'),
(462, 1, 'user', NULL, '2018-01-31 20:44:30', '2018-01-31 20:44:30'),
(463, NULL, 'global', NULL, '2018-02-01 01:50:34', '2018-02-01 01:50:34'),
(464, NULL, 'ip', '127.0.0.1', '2018-02-01 01:50:34', '2018-02-01 01:50:34'),
(465, 1, 'user', NULL, '2018-02-01 01:50:34', '2018-02-01 01:50:34'),
(466, NULL, 'global', NULL, '2018-02-01 02:10:55', '2018-02-01 02:10:55'),
(467, NULL, 'ip', '127.0.0.1', '2018-02-01 02:10:55', '2018-02-01 02:10:55'),
(468, 1, 'user', NULL, '2018-02-01 02:10:55', '2018-02-01 02:10:55'),
(469, NULL, 'global', NULL, '2018-02-01 02:28:57', '2018-02-01 02:28:57'),
(470, NULL, 'ip', '127.0.0.1', '2018-02-01 02:28:57', '2018-02-01 02:28:57'),
(471, 1, 'user', NULL, '2018-02-01 02:28:57', '2018-02-01 02:28:57'),
(472, NULL, 'global', NULL, '2018-02-01 02:54:48', '2018-02-01 02:54:48'),
(473, NULL, 'ip', '127.0.0.1', '2018-02-01 02:54:48', '2018-02-01 02:54:48'),
(474, 1, 'user', NULL, '2018-02-01 02:54:48', '2018-02-01 02:54:48'),
(475, NULL, 'global', NULL, '2018-02-01 02:56:25', '2018-02-01 02:56:25'),
(476, NULL, 'ip', '127.0.0.1', '2018-02-01 02:56:25', '2018-02-01 02:56:25'),
(477, 1, 'user', NULL, '2018-02-01 02:56:25', '2018-02-01 02:56:25'),
(478, NULL, 'global', NULL, '2018-02-02 19:05:12', '2018-02-02 19:05:12'),
(479, NULL, 'ip', '127.0.0.1', '2018-02-02 19:05:12', '2018-02-02 19:05:12'),
(480, 1, 'user', NULL, '2018-02-02 19:05:12', '2018-02-02 19:05:12'),
(481, NULL, 'global', NULL, '2018-02-04 06:13:43', '2018-02-04 06:13:43'),
(482, NULL, 'ip', '127.0.0.1', '2018-02-04 06:13:43', '2018-02-04 06:13:43'),
(483, 1, 'user', NULL, '2018-02-04 06:13:43', '2018-02-04 06:13:43'),
(484, NULL, 'global', NULL, '2018-02-04 06:32:59', '2018-02-04 06:32:59'),
(485, NULL, 'ip', '127.0.0.1', '2018-02-04 06:32:59', '2018-02-04 06:32:59'),
(486, NULL, 'global', NULL, '2018-02-04 06:33:40', '2018-02-04 06:33:40'),
(487, NULL, 'ip', '127.0.0.1', '2018-02-04 06:33:40', '2018-02-04 06:33:40'),
(488, 9, 'user', NULL, '2018-02-04 06:33:40', '2018-02-04 06:33:40'),
(489, NULL, 'global', NULL, '2018-02-04 08:07:49', '2018-02-04 08:07:49'),
(490, NULL, 'ip', '127.0.0.1', '2018-02-04 08:07:49', '2018-02-04 08:07:49'),
(491, 1, 'user', NULL, '2018-02-04 08:07:49', '2018-02-04 08:07:49'),
(492, NULL, 'global', NULL, '2018-02-05 03:16:48', '2018-02-05 03:16:48'),
(493, NULL, 'ip', '127.0.0.1', '2018-02-05 03:16:48', '2018-02-05 03:16:48'),
(494, 1, 'user', NULL, '2018-02-05 03:16:48', '2018-02-05 03:16:48'),
(495, NULL, 'global', NULL, '2018-02-05 20:05:07', '2018-02-05 20:05:07'),
(496, NULL, 'ip', '127.0.0.1', '2018-02-05 20:05:07', '2018-02-05 20:05:07'),
(497, 1, 'user', NULL, '2018-02-05 20:05:07', '2018-02-05 20:05:07'),
(498, NULL, 'global', NULL, '2018-02-06 01:01:38', '2018-02-06 01:01:38'),
(499, NULL, 'ip', '127.0.0.1', '2018-02-06 01:01:38', '2018-02-06 01:01:38'),
(500, 1, 'user', NULL, '2018-02-06 01:01:38', '2018-02-06 01:01:38'),
(501, NULL, 'global', NULL, '2018-02-06 21:31:19', '2018-02-06 21:31:19'),
(502, NULL, 'ip', '127.0.0.1', '2018-02-06 21:31:19', '2018-02-06 21:31:19'),
(503, 1, 'user', NULL, '2018-02-06 21:31:19', '2018-02-06 21:31:19'),
(504, NULL, 'global', NULL, '2018-02-07 03:29:51', '2018-02-07 03:29:51'),
(505, NULL, 'ip', '127.0.0.1', '2018-02-07 03:29:51', '2018-02-07 03:29:51'),
(506, 8, 'user', NULL, '2018-02-07 03:29:51', '2018-02-07 03:29:51'),
(507, NULL, 'global', NULL, '2018-02-07 21:17:30', '2018-02-07 21:17:30'),
(508, NULL, 'ip', '127.0.0.1', '2018-02-07 21:17:30', '2018-02-07 21:17:30'),
(509, 11, 'user', NULL, '2018-02-07 21:17:30', '2018-02-07 21:17:30'),
(510, NULL, 'global', NULL, '2018-02-08 01:52:59', '2018-02-08 01:52:59'),
(511, NULL, 'ip', '127.0.0.1', '2018-02-08 01:52:59', '2018-02-08 01:52:59'),
(512, 1, 'user', NULL, '2018-02-08 01:52:59', '2018-02-08 01:52:59'),
(513, NULL, 'global', NULL, '2018-02-27 10:23:13', '2018-02-27 10:23:13'),
(514, NULL, 'ip', '127.0.0.1', '2018-02-27 10:23:13', '2018-02-27 10:23:13'),
(515, 1, 'user', NULL, '2018-02-27 10:23:13', '2018-02-27 10:23:13'),
(516, NULL, 'global', NULL, '2018-02-27 10:23:20', '2018-02-27 10:23:20'),
(517, NULL, 'ip', '127.0.0.1', '2018-02-27 10:23:20', '2018-02-27 10:23:20'),
(518, 1, 'user', NULL, '2018-02-27 10:23:20', '2018-02-27 10:23:20'),
(519, NULL, 'global', NULL, '2018-02-27 10:23:27', '2018-02-27 10:23:27'),
(520, NULL, 'ip', '127.0.0.1', '2018-02-27 10:23:27', '2018-02-27 10:23:27'),
(521, 1, 'user', NULL, '2018-02-27 10:23:27', '2018-02-27 10:23:27'),
(522, NULL, 'global', NULL, '2018-02-27 10:23:35', '2018-02-27 10:23:35'),
(523, NULL, 'ip', '127.0.0.1', '2018-02-27 10:23:35', '2018-02-27 10:23:35'),
(524, 1, 'user', NULL, '2018-02-27 10:23:35', '2018-02-27 10:23:35'),
(525, NULL, 'global', NULL, '2018-03-13 20:44:30', '2018-03-13 20:44:30'),
(526, NULL, 'ip', '27.77.246.244', '2018-03-13 20:44:30', '2018-03-13 20:44:30'),
(527, 14, 'user', NULL, '2018-03-13 20:44:30', '2018-03-13 20:44:30'),
(528, NULL, 'global', NULL, '2018-03-13 21:42:58', '2018-03-13 21:42:58'),
(529, NULL, 'ip', '27.77.246.244', '2018-03-13 21:42:58', '2018-03-13 21:42:58'),
(530, 1, 'user', NULL, '2018-03-13 21:42:58', '2018-03-13 21:42:58'),
(531, NULL, 'global', NULL, '2018-03-29 21:41:23', '2018-03-29 21:41:23'),
(532, NULL, 'ip', '171.232.110.35', '2018-03-29 21:41:23', '2018-03-29 21:41:23'),
(533, 1, 'user', NULL, '2018-03-29 21:41:23', '2018-03-29 21:41:23'),
(534, NULL, 'global', NULL, '2018-04-04 19:47:59', '2018-04-04 19:47:59'),
(535, NULL, 'ip', '171.232.86.209', '2018-04-04 19:47:59', '2018-04-04 19:47:59'),
(536, 1, 'user', NULL, '2018-04-04 19:47:59', '2018-04-04 19:47:59'),
(537, NULL, 'global', NULL, '2018-04-12 03:10:36', '2018-04-12 03:10:36'),
(538, NULL, 'ip', '171.232.86.209', '2018-04-12 03:10:36', '2018-04-12 03:10:36'),
(539, 1, 'user', NULL, '2018-04-12 03:10:36', '2018-04-12 03:10:36'),
(540, NULL, 'global', NULL, '2018-04-12 03:10:38', '2018-04-12 03:10:38'),
(541, NULL, 'ip', '171.232.86.209', '2018-04-12 03:10:38', '2018-04-12 03:10:38'),
(542, 1, 'user', NULL, '2018-04-12 03:10:38', '2018-04-12 03:10:38'),
(543, NULL, 'global', NULL, '2018-04-12 03:10:40', '2018-04-12 03:10:40'),
(544, NULL, 'ip', '171.232.86.209', '2018-04-12 03:10:40', '2018-04-12 03:10:40'),
(545, 1, 'user', NULL, '2018-04-12 03:10:40', '2018-04-12 03:10:40'),
(546, NULL, 'global', NULL, '2018-04-12 03:11:58', '2018-04-12 03:11:58'),
(547, NULL, 'ip', '171.232.86.209', '2018-04-12 03:11:58', '2018-04-12 03:11:58'),
(548, 1, 'user', NULL, '2018-04-12 03:11:58', '2018-04-12 03:11:58'),
(549, NULL, 'global', NULL, '2018-04-12 03:12:05', '2018-04-12 03:12:05'),
(550, NULL, 'ip', '171.232.86.209', '2018-04-12 03:12:05', '2018-04-12 03:12:05'),
(551, 1, 'user', NULL, '2018-04-12 03:12:05', '2018-04-12 03:12:05'),
(552, NULL, 'global', NULL, '2018-05-26 01:59:00', '2018-05-26 01:59:00'),
(553, NULL, 'ip', '115.78.14.28', '2018-05-26 01:59:00', '2018-05-26 01:59:00'),
(554, 17, 'user', NULL, '2018-05-26 01:59:00', '2018-05-26 01:59:00'),
(555, NULL, 'global', NULL, '2018-05-26 02:55:38', '2018-05-26 02:55:38'),
(556, NULL, 'ip', '27.64.29.252', '2018-05-26 02:55:38', '2018-05-26 02:55:38'),
(557, 1, 'user', NULL, '2018-05-26 02:55:38', '2018-05-26 02:55:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `permissions`, `last_login`, `fullname`, `address`, `phone`, `image`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'diennk@dienkim.com', '$2y$10$LfzKyopDkGLKWBxEcxKfY.BXcWJ0eViJmp1hghUb0z/pnVfGf.M5a', NULL, '2018-07-04 01:27:52', 'Nguyễn Kim Điền', NULL, '', 'logo-5-983456149.png', 6, 1, '2017-11-12 07:23:56', '2018-07-04 01:27:52'),
(8, 'tiennv', 'tiennv@dienkim.com', '$2y$10$9sq3u.mDu/Bk1vvpv4sU7.Ior67wjHR5n1slgsv/sz63zBQxAfZ4K', NULL, '2018-02-23 01:16:10', 'Nguyễn Văn Tiến', '14 Tân Canh', '0988152782', NULL, 5, 0, '2018-02-05 20:06:26', '2018-02-23 01:16:10'),
(9, 'vinhlt', 'vinhht@dienkim.com', '$2y$10$ib1fvlTyvQLoRQcVt.Qrt.VAZtN3lPSMWHwpoqYwx5OM/4/vSUE9q', NULL, '2018-02-04 11:57:07', 'Huỳnh Thúc Vinh', '23 Bùi Quang Là', '0988162722', NULL, 1, 0, '2018-02-04 05:35:55', '2018-02-04 11:57:07'),
(14, 'phamduy', 'truonghuychuong1994@gmail.com', '$2y$10$j4aFmIopHHaRVXUSwKFIiOm59nc80jQzqfzEN58zTe87wWcgZHfJa', NULL, '2018-03-13 20:44:48', 'Phạm duy', NULL, '', NULL, 1, 1, '2018-03-13 19:46:01', '2018-05-26 03:02:37'),
(15, 'lactg', 'lactg@dienkim.com', '$2y$10$RG5efsCgKSuPUF4aKS6mTe8n8A13xei6ZlJdxvRGyMG/KlwldnY5W', NULL, '2018-03-13 21:42:34', 'Trần Gia Lạc', NULL, NULL, NULL, 1, 1, '2018-03-13 19:50:57', '2018-03-13 21:42:34'),
(16, 'dinhphu', 'dinhphu.skv@gmail.com', '$2y$10$gCUWPvzdb49so54ihjXyPeHsPBMOb/eB3rHQ2b29T403.M8wAG.X.', NULL, '2018-03-19 03:53:17', 'Đình phú', NULL, NULL, NULL, 1, 1, '2018-03-18 18:55:37', '2018-03-19 03:53:17'),
(17, 'hungtq', 'nhadamaloka@gmail.com', '$2y$10$7Qb5e.wyoqqoMJROrdamGeHN6MxY/s/7mSPzzZDD.CdPZwh9OI.0m', NULL, NULL, 'Tăng Quốc Hưng', NULL, '0902391738', 'img20170331160530-xql45tvip1fy.jpg', 1, 1, '2018-05-26 01:55:25', '2018-05-26 01:57:50');

-- --------------------------------------------------------

--
-- Table structure for table `user_group_member`
--

DROP TABLE IF EXISTS `user_group_member`;
CREATE TABLE `user_group_member` (
  `id` bigint(20) NOT NULL,
  `group_member_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_group_member`
--

INSERT INTO `user_group_member` (`id`, `group_member_id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 1, 1, '2018-01-26 04:05:58', '2018-01-26 04:05:58'),
(25, 3, 8, '2018-01-29 02:40:24', '2018-01-29 02:40:24'),
(28, 3, 9, '2018-02-04 16:48:12', '2018-02-04 16:48:12'),
(31, 1, 15, '2018-03-14 02:50:57', '2018-03-14 02:50:57'),
(33, 1, 14, '2018-03-14 02:53:24', '2018-03-14 02:53:24'),
(34, 1, 16, '2018-03-19 01:55:37', '2018-03-19 01:55:37'),
(35, 1, 17, '2018-05-26 08:55:25', '2018-05-26 08:55:25');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `video_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `fullname`, `category_id`, `image`, `video_url`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Đi tham quan núi Bà Đen 2', 1, 'thuvienhinh-1.png', 'F5gQLpScOsI', 2, 1, '2018-01-09 11:01:55', '2018-01-09 11:49:30'),
(5, 'Đi tham quan núi Bà Đen', 1, 'thuvienhinh-2.png', 'BDBb1h-eLsY', 1, 1, '2018-01-09 11:04:06', '2018-01-09 11:49:08'),
(6, 'Đi tham quan núi Bà Đen 3', 1, 'thuvienhinh-3.png', 'rQt2EuoN6oo', 3, 1, '2018-01-09 11:04:29', '2018-01-09 11:49:42'),
(7, 'Đi tham quan núi Bà Đen 4', 1, 'thuvienhinh-4.png', 'jLzAqwCjPuU', 4, 1, '2018-01-09 11:04:54', '2018-01-09 11:49:49'),
(8, 'Đi tham quan núi Bà Đen 5', 1, 'thuvienhinh-5.png', 'koeu_AnZ0BQ', 5, 1, '2018-01-09 11:05:20', '2018-01-09 11:49:56'),
(9, 'Đi tham quan núi Bà Đen 6', 1, 'thuvienhinh-6.png', 'jM53ZU2MCzU', 6, 1, '2018-01-09 11:05:37', '2018-01-09 11:50:04'),
(10, 'Đi tham quan núi Bà Đen 7', 1, 'thuvienhinh-7.png', 'u7xIydku_Yw', 7, 1, '2018-01-09 11:05:53', '2018-01-09 11:50:11'),
(11, 'Đi tham quan núi Bà Đen 8', 1, 'thuvienhinh-8.png', 'yGvSEhQXu4g', 8, 1, '2018-01-09 11:06:08', '2018-01-09 11:50:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_category`
--
ALTER TABLE `article_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_article`
--
ALTER TABLE `category_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_banner`
--
ALTER TABLE `category_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_param`
--
ALTER TABLE `category_param`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_video`
--
ALTER TABLE `category_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_member`
--
ALTER TABLE `group_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_privilege`
--
ALTER TABLE `group_privilege`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_admin`
--
ALTER TABLE `menu_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_item`
--
ALTER TABLE `module_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_param`
--
ALTER TABLE `post_param`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privilege`
--
ALTER TABLE `privilege`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_article`
--
ALTER TABLE `project_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_member`
--
ALTER TABLE `project_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`);

--
-- Indexes for table `setting_system`
--
ALTER TABLE `setting_system`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supporter`
--
ALTER TABLE `supporter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_group_member`
--
ALTER TABLE `user_group_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `article_category`
--
ALTER TABLE `article_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `category_article`
--
ALTER TABLE `category_article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category_banner`
--
ALTER TABLE `category_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `category_param`
--
ALTER TABLE `category_param`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `category_video`
--
ALTER TABLE `category_video`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `group_member`
--
ALTER TABLE `group_member`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `group_privilege`
--
ALTER TABLE `group_privilege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3720;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=547;

--
-- AUTO_INCREMENT for table `menu_admin`
--
ALTER TABLE `menu_admin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `module_item`
--
ALTER TABLE `module_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=863;

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_param`
--
ALTER TABLE `post_param`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `privilege`
--
ALTER TABLE `privilege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_article`
--
ALTER TABLE `project_article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_member`
--
ALTER TABLE `project_member`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting_system`
--
ALTER TABLE `setting_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supporter`
--
ALTER TABLE `supporter`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=558;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_group_member`
--
ALTER TABLE `user_group_member`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
