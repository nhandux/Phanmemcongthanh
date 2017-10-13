-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2017 at 03:34 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `congthanh2`
--

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_calendar`
--

CREATE TABLE `olala3w_calendar` (
  `calendar_id` int(11) NOT NULL,
  `type` int(1) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `to_personal` text NOT NULL,
  `to_role` text NOT NULL,
  `to_agency` text NOT NULL,
  `to_matches` int(11) NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `supervisor` int(11) NOT NULL DEFAULT '0',
  `supervisor_matches` int(11) NOT NULL DEFAULT '0',
  `file` varchar(255) NOT NULL DEFAULT '-no-',
  `note` text NOT NULL,
  `report_result` varchar(255) NOT NULL,
  `report_time` int(11) NOT NULL DEFAULT '0',
  `report_file` varchar(255) NOT NULL DEFAULT '-no-',
  `report_note` text NOT NULL,
  `report_user` int(11) NOT NULL DEFAULT '0',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `status` int(1) NOT NULL DEFAULT '0',
  `disable` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_calendar_extend`
--

CREATE TABLE `olala3w_calendar_extend` (
  `calendar_extend_id` int(11) NOT NULL,
  `calendar` int(11) NOT NULL DEFAULT '0',
  `propose_time` int(11) NOT NULL DEFAULT '0',
  `file` varchar(255) NOT NULL DEFAULT '-no-',
  `note` text NOT NULL,
  `propose_user` int(11) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `extend_time` int(11) NOT NULL DEFAULT '0',
  `request` text NOT NULL,
  `matches` int(11) NOT NULL DEFAULT '0',
  `supervisor_matches` int(11) NOT NULL DEFAULT '0',
  `handlers_user` int(11) NOT NULL DEFAULT '0',
  `complete` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_calendar_user`
--

CREATE TABLE `olala3w_calendar_user` (
  `calendar_user_id` bigint(20) NOT NULL,
  `calendar` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_calendar_user`
--

INSERT INTO `olala3w_calendar_user` (`calendar_user_id`, `calendar`, `user_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_category`
--

CREATE TABLE `olala3w_category` (
  `category_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(30) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `comment` text NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `sort_hide` int(11) NOT NULL DEFAULT '1',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `icon` varchar(255) NOT NULL,
  `menu_main` int(1) NOT NULL DEFAULT '0',
  `menu_sm` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_category_type`
--

CREATE TABLE `olala3w_category_type` (
  `type_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(30) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_constant`
--

CREATE TABLE `olala3w_constant` (
  `constant_id` int(11) NOT NULL,
  `constant` varchar(50) NOT NULL,
  `value` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` int(2) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_constant`
--

INSERT INTO `olala3w_constant` (`constant_id`, `constant`, `value`, `name`, `type`, `sort`) VALUES
(1, 'date', 'd/m/Y', 'Kiểu hiển thị ngày tháng năm', 3, 1),
(2, 'time', 'H:i', 'Kiểu hiển thị giờ phút', 3, 2),
(3, 'timezone', 'Asia/Bangkok', 'Múi giờ', 3, 4),
(4, 'title', 'Công ty CP Đầu tư Phát triển Nhà Đà Nẵng', 'Meta title (home)', 0, 1),
(5, 'description', 'Công ty CP Đầu tư Phát triển Nhà Đà Nẵng', 'Meta description (home)', 0, 2),
(6, 'keywords', 'Công ty CP Đầu tư Phát triển Nhà Đà Nẵng', 'Meta keywords (home)', 0, 3),
(74, 'script_body', '', 'Script sau body', 4, 6),
(86, 'website', 'www.ndn.com.vn', 'Website', 0, 8),
(76, 'link_linkedin', 'https://www.linkedin.com/', 'LinkedIn', 5, 5),
(7, 'email_contact', 'info@ndn.com.vn', 'E-mail liên hệ', 0, 5),
(8, 'tell_contact', '05113 872.212', 'Điện thoại', 0, 7),
(9, 'fulldate', 'D, d/m/Y - H:i', 'Kiểu hiển ngày đầy đủ', 3, 3),
(10, 'SMTP_username', 'mail.danaweb@gmail.com', 'Tài khoản email', 1, 0),
(11, 'SMTP_password', '123456987abc', 'Mật khẩu email', 1, 0),
(12, 'error_page', '<p>Vì lý do kỹ&nbsp;thuật website tạm ngưng&nbsp;hoạt động. Thành thật xin lỗi các bạn&nbsp;vì sự bất tiện này!</p>\r\n', 'Thông báo ngừng hoạt động', 0, 19),
(13, 'file_logo', '/uploads/files/logo.png', 'Logo front-end', 0, 4),
(14, 'SMTP_secure', 'ssl', 'Sử dụng xác thực', 1, 0),
(15, 'SMTP_host', 'smtp.gmail.com', 'Máy chủ (SMTP) Thư gửi đi', 1, 0),
(16, 'SMTP_port', '465', 'Cổng gửi mail', 1, 0),
(17, 'backup_auto', '', 'Tự động sao lưu', 2, 0),
(18, 'backup_filetype', 'sql.gz', 'Định dạng lưu file CSDL', 2, 0),
(19, 'backup_filecount', '30', 'Số file CSDL lưu lại', 2, 0),
(20, 'backup_email', 'ng.quangphuc@gmail.com', 'Email nhận thông báo và file', 2, 0),
(21, 'SMTP_mailname', 'NDN', 'Tên tài khoản email', 1, 0),
(22, 'link_facebook', 'https://www.facebook.com/', 'Facebook', 5, 1),
(23, 'link_googleplus', 'https://plus.google.com/', 'Google+', 5, 2),
(24, 'link_twitter', 'https://twitter.com/', 'Twitter', 5, 3),
(25, 'address_contact', '38 Nguyễn Chí Thanh, P. Thạch Thang, Q. Hải Châu, Tp. Đà Nẵng', 'Địa chỉ', 0, 6),
(73, 'script_bottom', '', 'Script cuối trang', 4, 7),
(26, 'content_registertry', '', 'Email đăng ký học thử', 13, 17),
(27, 'author_google', '', 'ID profile Google+', 4, 1),
(28, 'google_analytics', '', 'Analytics', 4, 4),
(29, 'chat_online', '', 'Script Chat Online', 4, 5),
(30, 'english_test', '', 'Kiểm tra tiếng Anh của bạn', 13, 18),
(31, 'google_calendar', '', 'Google Calendar (Account)', 4, 3),
(32, 'help_address', '', 'Tư vấn - Địa chỉ', 13, 8),
(33, 'help_icon', '', 'Tư vấn - Icon', 13, 9),
(34, 'link_youtube', 'https://www.youtube.com/', 'Youtube', 5, 4),
(101, 'regulation', '<p>Đang cập nhật...</p>\r\n', 'Quy định chung', 7, 2),
(102, 'tutorial', '<p>Đang cập nhật...</p>\r\n', 'Hướng dẫn sử dụng', 7, 3),
(75, 'fb_app_id', '', 'Facebook App ID', 4, 2),
(77, 'upload_img_max_w', '1600', 'Kích thước ảnh tối đa', 6, 1),
(78, 'upload_max_size', '10485760', 'Dung lượng tối đa', 6, 2),
(79, 'upload_checking_mode', 'mild', 'Kiểu kiểm tra file tải lên', 6, 3),
(80, 'upload_type', '1,4,5,6,7,8,9,10,11', 'Loại files cho phép', 6, 4),
(81, 'upload_ext', '', 'Phần mở rộng bị cấm', 6, 5),
(82, 'upload_mime', '', 'Loại mime bị cấm', 6, 6),
(83, 'upload_img_max_h', '550', 'Kích thước ảnh tối đa', 6, 1),
(84, 'upload_auto_resize', '1', 'Tự động resize ảnh', 6, 1),
(85, 'article_author', '', 'Property = article:author', 4, 2),
(103, 'calendar_warning_time', '15', 'Báo cận giờ', 10, 1),
(104, 'calendar_warning_sms', '0', 'Cận giờ báo SMS', 10, 2),
(107, 'alias_information', '<p><strong>Công ty CP Đầu tư Phát triển Nhà Đà Nẵng</strong><br />\r\n<label><span class=\"uln\">Trụ sở:</span> 38 Nguyễn Chí Thanh</label>, <label>P. Thạch Thang</label>, <label>Q. Hải Châu</label>, <label>Tp. Đà Nẵng</label><br />\r\n<label><span class=\"uln\">Điện thoại:</span> (0511) 3872.213</label> - <label><span class=\"uln\">Hotline:</span> (0511) 2695555</label> - <label><span class=\"uln\">Fax:</span> (0511) 3872.213</label><br />\r\n<label><span class=\"uln\">Email:</span> info@ndn.com.vn</label></p>\r\n', 'Thông tin công ty', 7, 1),
(108, 'copyright', 'Copyright © 2016 NDN', 'Meta copyright', 0, 3),
(109, 'hosting_domain', '<p>Đang cập nhật...</p>\r\n', 'Hosting & Domain', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_core_privilege`
--

CREATE TABLE `olala3w_core_privilege` (
  `privilege_id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL,
  `privilege_slug` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_core_privilege`
--

INSERT INTO `olala3w_core_privilege` (`privilege_id`, `role_id`, `type`, `privilege_slug`) VALUES
(5557, 61, 'calendar', 'calendar_tracking;51'),
(5556, 61, 'calendar', 'calendar_list;51'),
(5555, 61, 'calendar', 'calendar_add;51'),
(5554, 61, 'calendar', 'calendar;delete'),
(5262, 56, 'ol', 'statistic'),
(5260, 56, 'statistic', 'statistic_jobs;53'),
(5261, 56, 'statistic', 'statistic_matches;53'),
(5259, 56, 'statistic', 'statistic_matches'),
(5257, 56, 'ol', 'calendar'),
(5258, 56, 'statistic', 'statistic_jobs'),
(5529, 58, 'calendar', 'calendar_list;53'),
(5520, 56, 'calendar', 'calendar_list;53'),
(5519, 56, 'calendar', 'calendar_add;53'),
(5518, 56, 'calendar', 'calendar;delete'),
(4797, 1, 'ol', 'backup'),
(5901, 1, 'ol', 'document'),
(5902, 1, 'ol', 'statistic'),
(4792, 1, 'ol', 'calendar'),
(5903, 1, 'ol', 'general'),
(4790, 1, 'backup', 'backup_config'),
(4789, 1, 'backup', 'backup_process'),
(4788, 1, 'config', 'plugin_page'),
(4787, 1, 'config', 'config_upload'),
(4786, 1, 'config', 'config_social_network'),
(4785, 1, 'config', 'config_plugins'),
(4784, 1, 'config', 'config_mail'),
(4783, 1, 'config', 'config_datetime'),
(4782, 1, 'config', 'config_general'),
(5969, 1, 'core', 'core_agency;delete'),
(5968, 1, 'core', 'core_agency_edit'),
(5967, 1, 'core', 'core_agency_add'),
(5966, 1, 'core', 'core_agency'),
(5965, 1, 'core', 'core_dashboard'),
(5964, 1, 'core', 'core_role;delete'),
(5963, 1, 'core', 'core_role_edit'),
(5962, 1, 'core', 'core_role_add'),
(5961, 1, 'core', 'core_role'),
(5960, 1, 'core', 'core_user;delete'),
(5959, 1, 'core', 'core_user_edit'),
(5958, 1, 'core', 'core_user_add'),
(5957, 1, 'core', 'core_user'),
(5684, 1, 'calendar', 'calendar_add;0'),
(5683, 1, 'calendar', 'calendar_notify'),
(4869, 3, 'document', 'document'),
(4870, 3, 'calendar', 'calendar_list'),
(4871, 3, 'calendar', 'calendar_tracking'),
(4872, 3, 'calendar', 'calendar_remind'),
(4873, 3, 'calendar', 'calendar;eye'),
(4874, 3, 'calendar', 'calendar;delete'),
(4875, 3, 'general', 'general_level'),
(4876, 3, 'general', 'general_warning'),
(4877, 3, 'document', 'document_finished'),
(4878, 3, 'general', 'general_jobs_name'),
(4879, 3, 'document', 'document_list'),
(4908, 3, 'ol', 'calendar'),
(4907, 3, 'ol', 'document'),
(4906, 3, 'calendar', 'calendar_remind'),
(4905, 27, 'calendar', 'calendar_tracking'),
(4904, 3, 'document', 'document;trip'),
(4903, 27, 'calendar', 'calendar_add'),
(4886, 27, 'general', 'general_level'),
(4887, 27, 'general', 'general_level_add'),
(4888, 27, 'general', 'general_level_edit'),
(4889, 27, 'general', 'general_level;delete'),
(4890, 27, 'general', 'general_warning'),
(4891, 27, 'general', 'general_matches'),
(4892, 27, 'general', 'general_matches_add'),
(4893, 3, 'document', 'document;edit'),
(4894, 3, 'document', 'document;history'),
(4895, 27, 'general', 'general_jobs_name'),
(4896, 3, 'document', 'document;email'),
(4897, 27, 'general', 'general_jobs_name_edit'),
(4898, 27, 'general', 'general_jobs_name;delete'),
(4899, 27, 'general', 'general_jobs_address'),
(4900, 27, 'general', 'general_jobs_address_add'),
(4901, 27, 'general', 'general_jobs_address_edit'),
(4902, 27, 'general', 'general_jobs_address;delete'),
(4909, 34, 'calendar', 'calendar_add'),
(4910, 34, 'calendar', 'calendar_list'),
(4911, 34, 'calendar', 'calendar_tracking'),
(4912, 34, 'calendar', 'calendar_remind'),
(4913, 34, 'calendar', 'calendar;eye'),
(4914, 34, 'calendar', 'calendar;delete'),
(5079, 35, 'calendar', 'calendar;delete'),
(5078, 35, 'calendar', 'calendar;eye'),
(5077, 35, 'calendar', 'calendar_edit'),
(5076, 35, 'calendar', 'calendar_tracking'),
(5075, 35, 'calendar', 'calendar_list'),
(5074, 35, 'calendar', 'calendar_add'),
(4921, 35, 'core', '-'),
(4922, 35, 'ol', 'document'),
(4923, 35, 'ol', 'calendar'),
(4924, 35, 'ol', 'statistic'),
(4925, 35, 'ol', 'general'),
(4926, 35, 'ol', 'core'),
(4927, 35, 'ol', 'config'),
(4928, 35, 'ol', 'backup'),
(5094, 35, 'general', 'general_jobs_name'),
(5093, 35, 'general', 'general_matches'),
(5092, 35, 'general', 'general_warning'),
(5091, 35, 'general', 'general_level'),
(5097, 35, 'config', '-'),
(4935, 44, 'calendar', 'calendar_add'),
(4936, 44, 'calendar', 'calendar_list'),
(4937, 44, 'calendar', 'calendar_tracking'),
(4938, 44, 'calendar', 'calendar_remind'),
(4939, 44, 'calendar', 'calendar;eye'),
(4940, 44, 'calendar', 'calendar;delete'),
(4941, 44, 'general', 'general_level'),
(4942, 44, 'general', 'general_warning'),
(4943, 44, 'general', 'general_matches'),
(4944, 44, 'general', 'general_jobs_name'),
(4945, 44, 'general', 'general_jobs_address'),
(4947, 49, 'calendar', 'calendar_add'),
(4948, 49, 'calendar', 'calendar_list'),
(4949, 49, 'calendar', 'calendar_tracking'),
(4950, 49, 'calendar', 'calendar_remind'),
(4951, 49, 'calendar', 'calendar;eye'),
(4952, 49, 'calendar', 'calendar;delete'),
(5517, 56, 'calendar', 'calendar;eye'),
(5516, 56, 'calendar', 'calendar_edit'),
(5515, 56, 'calendar', 'calendar_tracking'),
(5514, 56, 'calendar', 'calendar_list'),
(5513, 56, 'calendar', 'calendar_add'),
(5437, 1, 'general', 'general_level'),
(5682, 1, 'calendar', 'calendar;delete'),
(5681, 1, 'calendar', 'calendar;eye'),
(5680, 1, 'calendar', 'calendar_edit'),
(5679, 1, 'calendar', 'calendar_tracking'),
(5956, 1, 'document', 'document_view'),
(5955, 1, 'document', 'document_edit'),
(5954, 1, 'document', 'document_edit'),
(5678, 1, 'calendar', 'calendar_list'),
(5693, 2, 'calendar', 'calendar_notify'),
(5692, 2, 'calendar', 'calendar;delete'),
(5691, 2, 'calendar', 'calendar;eye'),
(5690, 2, 'calendar', 'calendar_edit'),
(5689, 2, 'calendar', 'calendar_tracking'),
(5016, 2, 'ol', 'calendar'),
(5017, 2, 'ol', 'document'),
(5018, 2, 'ol', 'statistic'),
(5019, 2, 'ol', 'general'),
(5020, 2, 'ol', 'core'),
(5021, 2, 'ol', 'config'),
(5022, 2, 'ol', 'backup'),
(5023, 2, 'document', 'document_add'),
(5024, 2, 'document', 'document_list'),
(5025, 2, 'document', 'document_edit'),
(5026, 2, 'document', 'document;delete'),
(5736, 2, 'statistic', 'statistic_matches'),
(5735, 2, 'statistic', 'statistic_jobs_export'),
(5734, 2, 'statistic', 'statistic_jobs'),
(5031, 2, 'general', 'general_level'),
(5032, 2, 'general', 'general_level_add'),
(5033, 2, 'general', 'general_level_edit'),
(5034, 2, 'general', 'general_level;delete'),
(5035, 2, 'general', 'general_warning'),
(5036, 2, 'general', 'general_matches'),
(5037, 2, 'general', 'general_matches_add'),
(5038, 2, 'general', 'general_matches_edit'),
(5039, 2, 'general', 'general_matches;delete'),
(5040, 2, 'general', 'general_jobs_name'),
(5041, 2, 'general', 'general_jobs_name_add'),
(5042, 2, 'general', 'general_jobs_name_edit'),
(5043, 2, 'general', 'general_jobs_name;delete'),
(5044, 2, 'general', 'general_jobs_address'),
(5045, 2, 'general', 'general_jobs_address_add'),
(5046, 2, 'general', 'general_jobs_address_edit'),
(5047, 2, 'general', 'general_jobs_address;delete'),
(5048, 2, 'general', 'general_document_type'),
(5049, 2, 'general', 'general_document_type_add'),
(5050, 2, 'general', 'general_document_type_edit'),
(5051, 2, 'general', 'general_document_type;delete'),
(5052, 2, 'core', 'core_user'),
(5053, 2, 'core', 'core_user_add'),
(5054, 2, 'core', 'core_user_edit'),
(5055, 2, 'core', 'core_user;delete'),
(5056, 2, 'core', 'core_role'),
(5057, 2, 'core', 'core_role_add'),
(5058, 2, 'core', 'core_role_edit'),
(5059, 2, 'core', 'core_role;delete'),
(5060, 2, 'core', 'core_dashboard'),
(5061, 2, 'core', 'core_agency'),
(5062, 2, 'core', 'core_agency_add'),
(5063, 2, 'core', 'core_agency_edit'),
(5064, 2, 'core', 'core_agency;delete'),
(5065, 2, 'config', 'config_general'),
(5066, 2, 'config', 'config_datetime'),
(5067, 2, 'config', 'config_mail'),
(5068, 2, 'config', 'config_plugins'),
(5069, 2, 'config', 'config_social_network'),
(5070, 2, 'config', 'config_upload'),
(5071, 2, 'config', 'plugin_page'),
(5072, 2, 'backup', 'backup_process'),
(5073, 2, 'backup', 'backup_config'),
(5080, 35, 'calendar', 'calendar_notify'),
(5081, 35, 'calendar', 'calendar_list;0'),
(5082, 35, 'calendar', 'calendar_tracking;0'),
(5083, 35, 'document', 'document_add'),
(5084, 35, 'document', 'document_list'),
(5085, 35, 'document', 'document_edit'),
(5086, 35, 'document', 'document;delete'),
(5087, 35, 'statistic', 'statistic_jobs'),
(5088, 35, 'statistic', 'statistic_matches'),
(5089, 35, 'statistic', 'statistic_jobs;0'),
(5090, 35, 'statistic', 'statistic_matches;0'),
(5095, 35, 'general', 'general_jobs_address'),
(5096, 35, 'general', 'general_document_type'),
(5098, 53, 'document', 'document_add'),
(5099, 53, 'document', 'document_list'),
(5100, 53, 'document', 'document_edit'),
(5101, 53, 'document', 'document;delete'),
(5184, 53, 'calendar', 'calendar_notify'),
(5183, 53, 'calendar', 'calendar;delete'),
(5182, 53, 'calendar', 'calendar;eye'),
(5181, 53, 'calendar', 'calendar_edit'),
(5180, 53, 'calendar', 'calendar_tracking'),
(5179, 53, 'calendar', 'calendar_list'),
(5178, 53, 'calendar', 'calendar_add'),
(5190, 53, 'statistic', 'statistic_matches;30'),
(5189, 53, 'statistic', 'statistic_jobs;30'),
(5188, 53, 'statistic', 'statistic_matches'),
(5187, 53, 'statistic', 'statistic_jobs'),
(5197, 53, 'general', 'general_matches_edit'),
(5196, 53, 'general', 'general_matches_add'),
(5195, 53, 'general', 'general_matches'),
(5194, 53, 'general', 'general_warning'),
(5193, 53, 'general', 'general_level_edit'),
(5192, 53, 'general', 'general_level_add'),
(5191, 53, 'general', 'general_level'),
(5123, 53, 'core', '-'),
(5438, 1, 'general', 'general_level_add'),
(5726, 65, 'calendar', 'calendar_list;57'),
(5725, 65, 'calendar', 'calendar_add;57'),
(5130, 51, 'ol', 'document'),
(5131, 51, 'ol', 'calendar'),
(5132, 51, 'document', 'document_add'),
(5133, 51, 'document', 'document_list'),
(5134, 51, 'document', 'document_edit'),
(5135, 51, 'document', 'document;delete'),
(5703, 51, 'calendar', 'calendar_notify'),
(5702, 51, 'calendar', 'calendar;delete'),
(5701, 51, 'calendar', 'calendar;eye'),
(5700, 51, 'calendar', 'calendar_edit'),
(5699, 51, 'calendar', 'calendar_tracking'),
(5742, 51, 'statistic', 'statistic_matches'),
(5741, 51, 'statistic', 'statistic_jobs_export'),
(5149, 53, 'ol', 'calendar'),
(5150, 53, 'ol', 'document'),
(5151, 53, 'ol', 'statistic'),
(5740, 51, 'statistic', 'statistic_jobs'),
(5156, 51, 'ol', 'general'),
(5157, 51, 'general', 'general_level'),
(5158, 51, 'general', 'general_level_add'),
(5159, 51, 'general', 'general_level_edit'),
(5160, 51, 'general', 'general_level;delete'),
(5161, 51, 'general', 'general_warning'),
(5162, 51, 'general', 'general_matches'),
(5163, 51, 'general', 'general_matches_add'),
(5164, 51, 'general', 'general_matches_edit'),
(5165, 51, 'general', 'general_matches;delete'),
(5166, 51, 'general', 'general_jobs_name'),
(5167, 51, 'general', 'general_jobs_name_add'),
(5168, 51, 'general', 'general_jobs_name_edit'),
(5169, 51, 'general', 'general_jobs_name;delete'),
(5170, 51, 'general', 'general_jobs_address'),
(5171, 51, 'general', 'general_jobs_address_add'),
(5172, 51, 'general', 'general_jobs_address_edit'),
(5173, 51, 'general', 'general_jobs_address;delete'),
(5174, 51, 'general', 'general_document_type'),
(5175, 51, 'general', 'general_document_type_add'),
(5176, 51, 'general', 'general_document_type_edit'),
(5177, 51, 'general', 'general_document_type;delete'),
(5185, 53, 'calendar', 'calendar_list;30'),
(5186, 53, 'calendar', 'calendar_tracking;30'),
(5198, 53, 'general', 'general_matches;delete'),
(5199, 53, 'general', 'general_jobs_name'),
(5200, 53, 'general', 'general_jobs_name_add'),
(5201, 53, 'general', 'general_jobs_name_edit'),
(5202, 53, 'general', 'general_jobs_name;delete'),
(5203, 53, 'general', 'general_jobs_address'),
(5204, 53, 'general', 'general_jobs_address_add'),
(5205, 53, 'general', 'general_jobs_address_edit'),
(5206, 53, 'general', 'general_jobs_address;delete'),
(5207, 53, 'general', 'general_document_type'),
(5208, 53, 'general', 'general_document_type_add'),
(5209, 53, 'general', 'general_document_type_edit'),
(5236, 55, 'calendar', 'calendar_notify'),
(5235, 55, 'calendar', 'calendar;delete'),
(5234, 55, 'calendar', 'calendar;eye'),
(5233, 55, 'calendar', 'calendar_edit'),
(5232, 55, 'calendar', 'calendar_tracking'),
(5231, 55, 'calendar', 'calendar_list'),
(5230, 55, 'calendar', 'calendar_add'),
(5219, 55, 'ol', 'document'),
(5220, 55, 'ol', 'calendar'),
(5221, 55, 'ol', 'statistic'),
(5229, 55, 'statistic', 'statistic_matches;30'),
(5228, 55, 'statistic', 'statistic_jobs;30'),
(5227, 55, 'statistic', 'statistic_matches'),
(5226, 55, 'statistic', 'statistic_jobs'),
(5237, 55, 'calendar', 'calendar_list;56'),
(5238, 55, 'calendar', 'calendar_tracking;56'),
(5476, 61, 'ol', 'calendar'),
(5552, 61, 'calendar', 'calendar_edit'),
(5549, 61, 'calendar', 'calendar_add'),
(5465, 57, 'calendar', 'calendar_tracking;51'),
(5467, 57, 'statistic', 'statistic_matches;51'),
(5466, 57, 'statistic', 'statistic_jobs;51'),
(5714, 54, 'calendar', 'calendar_notify'),
(5713, 54, 'calendar', 'calendar;delete'),
(5712, 54, 'calendar', 'calendar;eye'),
(5711, 54, 'calendar', 'calendar_edit'),
(5710, 54, 'calendar', 'calendar_tracking'),
(5709, 54, 'calendar', 'calendar_list'),
(5707, 54, 'ol', 'calendar'),
(5295, 54, 'ol', 'statistic'),
(5754, 54, 'statistic', 'statistic_matches_export'),
(5753, 54, 'statistic', 'statistic_matches'),
(5300, 54, 'general', 'general_level'),
(5301, 54, 'general', 'general_level_add'),
(5302, 54, 'general', 'general_level_edit'),
(5303, 54, 'general', 'general_level;delete'),
(5304, 54, 'general', 'general_warning'),
(5305, 54, 'general', 'general_matches'),
(5306, 54, 'general', 'general_matches_add'),
(5307, 54, 'general', 'general_matches_edit'),
(5308, 54, 'general', 'general_matches;delete'),
(5309, 54, 'general', 'general_jobs_name'),
(5310, 54, 'general', 'general_jobs_name_add'),
(5311, 54, 'general', 'general_jobs_name_edit'),
(5312, 54, 'general', 'general_jobs_name;delete'),
(5313, 54, 'general', 'general_jobs_address'),
(5314, 54, 'general', 'general_jobs_address_add'),
(5315, 54, 'general', 'general_jobs_address_edit'),
(5316, 54, 'general', 'general_jobs_address;delete'),
(5317, 54, 'general', 'general_document_type'),
(5318, 54, 'general', 'general_document_type_add'),
(5319, 54, 'general', 'general_document_type_edit'),
(5320, 54, 'general', 'general_document_type;delete'),
(5321, 54, 'ol', 'general'),
(5464, 57, 'calendar', 'calendar_list;51'),
(5339, 58, 'ol', 'calendar'),
(5340, 58, 'ol', 'statistic'),
(5528, 58, 'calendar', 'calendar_add;53'),
(5527, 58, 'calendar', 'calendar;delete'),
(5526, 58, 'calendar', 'calendar;eye'),
(5525, 58, 'calendar', 'calendar_edit'),
(5524, 58, 'calendar', 'calendar_tracking'),
(5523, 58, 'calendar', 'calendar_list'),
(5522, 58, 'calendar', 'calendar_add'),
(5350, 58, 'statistic', 'statistic_jobs'),
(5351, 58, 'statistic', 'statistic_matches'),
(5352, 58, 'statistic', 'statistic_jobs;53'),
(5353, 58, 'statistic', 'statistic_matches;53'),
(5551, 61, 'calendar', 'calendar_tracking'),
(5550, 61, 'calendar', 'calendar_list'),
(5359, 59, 'ol', 'calendar'),
(5360, 59, 'ol', 'statistic'),
(5857, 59, 'calendar', 'calendar_list;56'),
(5856, 59, 'calendar', 'calendar_add;56'),
(5855, 59, 'calendar', 'calendar_notify'),
(5853, 59, 'calendar', 'calendar;eye'),
(5854, 59, 'calendar', 'calendar;delete'),
(5825, 59, 'statistic', 'statistic_matches'),
(5824, 59, 'statistic', 'statistic_jobs_export'),
(5823, 59, 'statistic', 'statistic_jobs'),
(5374, 51, 'ol', 'statistic'),
(5852, 59, 'calendar', 'calendar_edit'),
(5688, 2, 'calendar', 'calendar_list'),
(5698, 51, 'calendar', 'calendar_list'),
(5439, 1, 'general', 'general_level_edit'),
(5440, 1, 'general', 'general_level;delete'),
(5441, 1, 'general', 'general_warning'),
(5442, 1, 'general', 'general_matches'),
(5443, 1, 'general', 'general_matches_add'),
(5444, 1, 'general', 'general_matches_edit'),
(5445, 1, 'general', 'general_matches;delete'),
(5446, 1, 'general', 'general_jobs_name'),
(5447, 1, 'general', 'general_jobs_name_add'),
(5448, 1, 'general', 'general_jobs_name_edit'),
(5449, 1, 'general', 'general_jobs_name;delete'),
(5450, 1, 'general', 'general_jobs_address'),
(5451, 1, 'general', 'general_jobs_address_add'),
(5452, 1, 'general', 'general_jobs_address_edit'),
(5453, 1, 'general', 'general_jobs_address;delete'),
(5454, 1, 'general', 'general_document_type'),
(5455, 1, 'general', 'general_document_type_add'),
(5456, 1, 'general', 'general_document_type_edit'),
(5457, 1, 'general', 'general_document_type;delete'),
(5458, 60, 'document', 'document_add'),
(5459, 60, 'document', 'document_list'),
(5460, 60, 'document', 'document_edit'),
(5461, 60, 'document', 'document;delete'),
(5462, 60, 'ol', 'document'),
(5850, 59, 'calendar', 'calendar_list'),
(5677, 1, 'calendar', 'calendar_add'),
(5687, 2, 'calendar', 'calendar_add'),
(5697, 51, 'calendar', 'calendar_add'),
(5708, 54, 'calendar', 'calendar_add'),
(5521, 56, 'calendar', 'calendar_tracking;53'),
(5530, 58, 'calendar', 'calendar_tracking;53'),
(5851, 59, 'calendar', 'calendar_tracking'),
(5553, 61, 'calendar', 'calendar;eye'),
(5595, 63, 'calendar', 'calendar_tracking;30'),
(5594, 63, 'calendar', 'calendar_list;30'),
(5593, 63, 'calendar', 'calendar_add;30'),
(5592, 63, 'calendar', 'calendar_notify'),
(5591, 63, 'calendar', 'calendar;delete'),
(5590, 63, 'calendar', 'calendar;eye'),
(5589, 63, 'calendar', 'calendar_edit'),
(5588, 63, 'calendar', 'calendar_tracking'),
(5587, 63, 'calendar', 'calendar_list'),
(5586, 63, 'calendar', 'calendar_add'),
(5596, 63, 'ol', 'calendar'),
(5597, 63, 'ol', 'statistic'),
(5598, 64, 'ol', 'calendar'),
(5635, 64, 'calendar', 'calendar_tracking;57'),
(5634, 64, 'calendar', 'calendar_list;57'),
(5633, 64, 'calendar', 'calendar_add;57'),
(5632, 64, 'calendar', 'calendar;delete'),
(5631, 64, 'calendar', 'calendar;eye'),
(5630, 64, 'calendar', 'calendar_edit'),
(5637, 64, 'statistic', 'statistic_matches;57'),
(5636, 64, 'statistic', 'statistic_jobs;57'),
(5613, 64, 'core', '-'),
(5614, 64, 'ol', 'statistic'),
(5724, 65, 'calendar', 'calendar_notify'),
(5723, 65, 'calendar', 'calendar;delete'),
(5722, 65, 'calendar', 'calendar;eye'),
(5721, 65, 'calendar', 'calendar_edit'),
(5720, 65, 'calendar', 'calendar_tracking'),
(5719, 65, 'calendar', 'calendar_list'),
(5718, 65, 'calendar', 'calendar_add'),
(5624, 65, 'ol', 'calendar'),
(5759, 65, 'statistic', 'statistic_matches'),
(5758, 65, 'statistic', 'statistic_jobs_export'),
(5757, 65, 'statistic', 'statistic_jobs'),
(5629, 65, 'ol', 'statistic'),
(5638, 65, 'general', 'general_level'),
(5639, 65, 'general', 'general_warning'),
(5640, 65, 'general', 'general_matches'),
(5641, 65, 'general', 'general_jobs_name'),
(5642, 65, 'general', 'general_jobs_address'),
(5643, 65, 'general', 'general_document_type'),
(5644, 65, 'ol', 'general'),
(5664, 66, 'calendar', 'calendar_add'),
(5665, 66, 'calendar', 'calendar_list'),
(5666, 66, 'calendar', 'calendar_edit'),
(5667, 66, 'calendar', 'calendar;eye'),
(5668, 67, 'calendar', 'calendar_add_thietke'),
(5669, 67, 'document', 'document_list_thietke'),
(5670, 66, 'calendar', 'calendar_list;53'),
(5671, 66, 'calendar', 'calendar_tracking;53'),
(5672, 66, 'statistic', 'statistic_jobs'),
(5673, 66, 'statistic', 'statistic_matches'),
(5674, 66, 'statistic', 'statistic_jobs;53'),
(5675, 66, 'statistic', 'statistic_matches;53'),
(5685, 1, 'calendar', 'calendar_list;0'),
(5686, 1, 'calendar', 'calendar_tracking;0'),
(5694, 2, 'calendar', 'calendar_add;0'),
(5695, 2, 'calendar', 'calendar_list;0'),
(5696, 2, 'calendar', 'calendar_tracking;0'),
(5704, 51, 'calendar', 'calendar_add;0'),
(5705, 51, 'calendar', 'calendar_list;0'),
(5706, 51, 'calendar', 'calendar_tracking;0'),
(5715, 54, 'calendar', 'calendar_add;0'),
(5716, 54, 'calendar', 'calendar_list;0'),
(5717, 54, 'calendar', 'calendar_tracking;0'),
(5727, 65, 'calendar', 'calendar_tracking;57'),
(5953, 1, 'document', 'document_hoanthanh'),
(5937, 1, 'statistic', 'statistic_matches'),
(5936, 1, 'statistic', 'statistic_jobs'),
(5737, 2, 'statistic', 'statistic_matches_export'),
(5738, 2, 'statistic', 'statistic_jobs;0'),
(5739, 2, 'statistic', 'statistic_matches;0'),
(5743, 51, 'statistic', 'statistic_matches_export'),
(5744, 51, 'statistic', 'statistic_jobs;30'),
(5745, 51, 'statistic', 'statistic_matches;30'),
(5752, 54, 'statistic', 'statistic_jobs_export'),
(5751, 54, 'statistic', 'statistic_jobs'),
(5755, 54, 'statistic', 'statistic_jobs;0'),
(5756, 54, 'statistic', 'statistic_matches;0'),
(5760, 65, 'statistic', 'statistic_matches_export'),
(5761, 65, 'statistic', 'statistic_jobs;57'),
(5762, 65, 'statistic', 'statistic_matches;57'),
(5763, 67, 'document', 'document_add'),
(5764, 67, 'document', 'document_list'),
(5765, 67, 'document', 'document_edit'),
(5766, 67, 'document', 'document;delete'),
(5767, 67, 'calendar', 'calendar_add'),
(5768, 67, 'calendar', 'calendar_list'),
(5769, 67, 'calendar', 'calendar_tracking'),
(5770, 67, 'calendar', 'calendar_edit'),
(5771, 67, 'calendar', 'calendar;eye'),
(5772, 67, 'calendar', 'calendar;delete'),
(5773, 67, 'calendar', 'calendar_notify'),
(5774, 67, 'calendar', 'calendar_add;53'),
(5775, 67, 'calendar', 'calendar_list;53'),
(5776, 67, 'calendar', 'calendar_tracking;53'),
(5777, 67, 'statistic', 'statistic_jobs'),
(5778, 67, 'statistic', 'statistic_jobs_export'),
(5779, 67, 'statistic', 'statistic_matches'),
(5780, 67, 'statistic', 'statistic_matches_export'),
(5781, 67, 'statistic', 'statistic_jobs;53'),
(5782, 67, 'statistic', 'statistic_matches;53'),
(5783, 67, 'general', 'general_level'),
(5784, 67, 'general', 'general_level_add'),
(5785, 67, 'general', 'general_level_edit'),
(5786, 67, 'general', 'general_level;delete'),
(5787, 67, 'general', 'general_warning'),
(5788, 67, 'general', 'general_matches'),
(5789, 67, 'general', 'general_matches_add'),
(5790, 67, 'general', 'general_matches_edit'),
(5791, 67, 'general', 'general_matches;delete'),
(5792, 67, 'general', 'general_jobs_name'),
(5793, 67, 'general', 'general_jobs_name_add'),
(5794, 67, 'general', 'general_jobs_name_edit'),
(5795, 67, 'general', 'general_jobs_name;delete'),
(5796, 67, 'general', 'general_jobs_address'),
(5797, 67, 'general', 'general_jobs_address_add'),
(5798, 67, 'general', 'general_jobs_address_edit'),
(5799, 67, 'general', 'general_jobs_address;delete'),
(5800, 67, 'general', 'general_document_type'),
(5801, 67, 'general', 'general_document_type_add'),
(5802, 67, 'general', 'general_document_type_edit'),
(5803, 67, 'general', 'general_document_type;delete'),
(5804, 67, 'ol', 'calendar'),
(5805, 67, 'ol', 'statistic'),
(5807, 65, 'ol', 'document'),
(5826, 59, 'statistic', 'statistic_matches_export'),
(5849, 59, 'calendar', 'calendar_add'),
(5812, 65, 'document', '-'),
(5827, 59, 'statistic', 'statistic_jobs;56'),
(5828, 59, 'statistic', 'statistic_matches;56'),
(5829, 59, 'general', 'general_level'),
(5830, 59, 'general', 'general_level_add'),
(5831, 59, 'general', 'general_level_edit'),
(5832, 59, 'general', 'general_level;delete'),
(5833, 59, 'general', 'general_warning'),
(5834, 59, 'general', 'general_matches'),
(5835, 59, 'general', 'general_matches_add'),
(5836, 59, 'general', 'general_matches_edit'),
(5837, 59, 'general', 'general_matches;delete'),
(5838, 59, 'general', 'general_jobs_name'),
(5839, 59, 'general', 'general_jobs_name_add'),
(5840, 59, 'general', 'general_jobs_name_edit'),
(5841, 59, 'general', 'general_jobs_name;delete'),
(5842, 59, 'general', 'general_jobs_address'),
(5843, 59, 'general', 'general_jobs_address_add'),
(5844, 59, 'general', 'general_jobs_address_edit'),
(5845, 59, 'general', 'general_jobs_address;delete'),
(5846, 59, 'general', 'general_document_type'),
(5847, 59, 'general', 'general_document_type_add'),
(5848, 59, 'general', 'general_document_type_edit'),
(5858, 59, 'calendar', 'calendar_tracking;56'),
(5859, 61, 'ol', 'statistic'),
(5861, 61, 'general', 'general_level'),
(5862, 61, 'general', 'general_level_add'),
(5863, 61, 'general', 'general_level_edit'),
(5864, 61, 'general', 'general_level;delete'),
(5865, 61, 'general', 'general_warning'),
(5866, 61, 'general', 'general_matches'),
(5867, 61, 'general', 'general_matches_add'),
(5868, 61, 'general', 'general_matches_edit'),
(5869, 61, 'general', 'general_matches;delete'),
(5870, 61, 'general', 'general_jobs_name'),
(5871, 61, 'general', 'general_jobs_name_add'),
(5872, 61, 'general', 'general_jobs_name_edit'),
(5873, 61, 'general', 'general_jobs_name;delete'),
(5874, 61, 'general', 'general_jobs_address'),
(5875, 61, 'general', 'general_jobs_address_add'),
(5876, 61, 'general', 'general_jobs_address_edit'),
(5877, 61, 'general', 'general_jobs_address;delete'),
(5878, 61, 'general', 'general_document_type'),
(5879, 61, 'general', 'general_document_type_add'),
(5880, 61, 'general', 'general_document_type_edit'),
(5881, 61, 'general', 'general_document_type;delete'),
(5882, 67, 'ol', 'document'),
(5883, 3, 'document', 'document_add'),
(5952, 1, 'document', 'document_list'),
(5951, 1, 'document', 'document_add'),
(5904, 1, 'ol', 'core'),
(5905, 1, 'ol', 'config');

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_core_role`
--

CREATE TABLE `olala3w_core_role` (
  `role_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `is_show` int(1) NOT NULL DEFAULT '1',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_core_role`
--

INSERT INTO `olala3w_core_role` (`role_id`, `name`, `comment`, `is_active`, `is_show`, `modified_time`, `user_id`) VALUES
(1, 'Administrator', 'Nhóm quản trị tối cao , quản tri website , Phân quyền quản lý cho Chi Nhánh - Xí Nghiệp - Đại Lý Cấp I ', 1, 1, 1503710254, 1),
(2, 'Admin', 'Admin Dưới Quyền Administrator , Admin quyền Quản Lý Cấp Chi Nhánh - phân công  Công tác cho Nhân Viên thuộc quyền quản lý thuộc Chi Nhánh', 1, 1, 1503733748, 1),
(3, 'Kinh doanh', 'Giao tiếp khách hàng  +  quản lý công việc', 1, 1, 1503714259, 1),
(4, 'Thiết kế', 'Thiết kế bản in', 1, 1, 1503716302, 1),
(5, 'In kẽm', 'In kẻm sản phẩm', 1, 1, 1503716381, 1),
(6, 'In ', 'In sản phẩm', 1, 1, 1503716405, 1),
(7, 'Đóng gói', 'Đóng gói sản phẩm', 1, 1, 1503716449, 1),
(8, 'Giao hàng', 'Giao hàng sản phẩm', 1, 1, 1503716470, 1);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_core_user`
--

CREATE TABLE `olala3w_core_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(16) NOT NULL,
  `password` varchar(50) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `gender` int(1) NOT NULL DEFAULT '0',
  `birthday` int(11) NOT NULL DEFAULT '0',
  `identity_card` varchar(20) NOT NULL,
  `date_of_issue` int(11) NOT NULL,
  `apply` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `agency` int(11) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `is_show` int(1) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `vote` bigint(20) NOT NULL DEFAULT '1',
  `btn_notify1` int(1) NOT NULL DEFAULT '1',
  `btn_notify2` int(1) NOT NULL DEFAULT '1',
  `click_vote` bigint(20) NOT NULL DEFAULT '1',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id_edit` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_core_user`
--

INSERT INTO `olala3w_core_user` (`user_id`, `user_name`, `password`, `full_name`, `gender`, `birthday`, `identity_card`, `date_of_issue`, `apply`, `email`, `phone`, `address`, `city`, `agency`, `comment`, `is_show`, `sort`, `img`, `is_active`, `vote`, `btn_notify1`, `btn_notify2`, `click_vote`, `created_time`, `modified_time`, `user_id_edit`) VALUES
(1, 'admin', 'ca4c0178da5c3219c4150c77b16c935d', 'Administrator', 1, 1426784400, '', 0, 'Quản trị Website.', 'ng.quangphuc@gmail.com', '0905431190', 'Đà Nẵng', 'Hà Nội', 30, '', 1, 1, 'u_1465483945_4feb206882b9c99a7ae94b9a960a38f8.jpg', 1, 5, 0, 0, 1, 1408159832, 1503712378, 1),
(108, 'tutu', '5eb689875e154c871b961e061d523103', 'Nguyễn Tú Tú', 0, 631126800, '', 1514566800, '', 'tutu@gmail.com', '', '', 'Đà Nẵng', 0, '', 1, 3, 'no', 1, 3, 1, 1, 1, 1504186429, 0, 1),
(107, 'hantv', 'a277eca3c2392842f40efbf62b090367', 'Nguyễn Thị Vân Hà', 2, 631126800, '', 0, '', 'ha@ho.co', '0984848848', '', 'Đà Nẵng', 0, '', 1, 3, 'no', 1, 3, 1, 1, 1, 1504186082, 0, 1),
(109, 'haha', '4f0b36a34946153c358f8b243428a1eb', 'Nguyễn Hà Hà', 0, 633805200, '', 1506704400, '', 'hant@gmail.com', '', '', 'Đà Nẵng', 0, '', 1, 4, 'no', 1, 3, 1, 1, 1, 1504186555, 0, 1),
(110, 'nhandn', '719c46b3a24f01f2ecd3905216ad1f3a', 'Nguyễn Đức Nhân', 1, 631126800, '', 0, '', 'nhan@gmail.com', '094958584', '', 'Đà Nẵng', 0, '', 1, 5, 'no', 1, 3, 1, 1, 1, 1504186641, 0, 1),
(111, 'thanh', '8287842d10e4f0c07fb17ece386a9191', 'Nguyễn Thanh', 1, 631126800, '', 0, '', 'thanh@gmail.com', '094949488', '', 'Đà Nẵng', 0, '', 1, 6, 'no', 1, 3, 1, 1, 1, 1504186722, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_customer`
--

CREATE TABLE `olala3w_customer` (
  `customer_id` int(11) NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_code` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_time` int(11) DEFAULT NULL,
  `updated_time` int(11) NOT NULL,
  `is_show` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `olala3w_customer`
--

INSERT INTO `olala3w_customer` (`customer_id`, `company_name`, `tax_code`, `full_name`, `phone`, `email`, `address`, `skype`, `created_time`, `updated_time`, `is_show`) VALUES
(1, 'Tomato', '450509', 'Phùng Thanh Thúy', '0935888888', 'ho@ho.co', '33 Lý Tự Trọng', '', 0, 1504429320, 1),
(2, 'Summer Rain English Center', '45959', 'Nguyễn Thủy Tiên', '0982333444', 'summerrain@gmail.com', '100 Hàm Nghi', '', 1504429920, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_document`
--

CREATE TABLE `olala3w_document` (
  `document_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `symbols` varchar(255) NOT NULL,
  `date_issued` int(11) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `file` varchar(255) NOT NULL DEFAULT '-no-',
  `content` text NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_document_type`
--

CREATE TABLE `olala3w_document_type` (
  `document_type_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_exhibition`
--

CREATE TABLE `olala3w_exhibition` (
  `exhibition_id` int(11) NOT NULL,
  `urgent` int(11) NOT NULL,
  `pick_up` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `discount` int(11) NOT NULL DEFAULT '0',
  `into_money` float NOT NULL DEFAULT '0',
  `money_undiscounted` float NOT NULL DEFAULT '0',
  `fabricate` float NOT NULL,
  `prepayment` float NOT NULL DEFAULT '0',
  `payment_2` float NOT NULL DEFAULT '0',
  `payment_3` float NOT NULL DEFAULT '0',
  `debtor` float NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL,
  `date_end` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `created_time` int(11) NOT NULL,
  `notifined_time` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `olala3w_exhibition`
--

INSERT INTO `olala3w_exhibition` (`exhibition_id`, `urgent`, `pick_up`, `customer_id`, `discount`, `into_money`, `money_undiscounted`, `fabricate`, `prepayment`, `payment_2`, `payment_3`, `debtor`, `status`, `date_end`, `comment`, `created_time`, `notifined_time`, `user_id`, `code`) VALUES
(1, 0, 0, 1, 5000000, 11000000, 16000000, 1, 10000000, 0, 0, 1000000, 1, 1509123600, 'Không biết', 1504233300, 1504429320, 108, 'CT-1504233246'),
(2, 0, 1, 2, 2000000, 48000000, 50000000, 0, 10000000, 0, 0, 38000000, 1, 1509296400, 'Trễ nhất ngày 30/11 phải giao hàng', 1504429920, 0, 108, 'CT-1504429800');

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_exhibition_history`
--

CREATE TABLE `olala3w_exhibition_history` (
  `exhibition_id` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `sales_date_end` int(11) NOT NULL,
  `design_date_end` int(11) NOT NULL,
  `offset_date_end` int(11) NOT NULL,
  `printing_date_end` int(11) NOT NULL,
  `packaging_date_end` int(11) NOT NULL,
  `delivery_date_end` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `design_id` int(11) NOT NULL,
  `offset_id` int(11) NOT NULL,
  `printing_id` int(11) NOT NULL,
  `packaging_id` int(11) NOT NULL,
  `delivery_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `olala3w_exhibition_history`
--

INSERT INTO `olala3w_exhibition_history` (`exhibition_id`, `created_time`, `sales_date_end`, `design_date_end`, `offset_date_end`, `printing_date_end`, `packaging_date_end`, `delivery_date_end`, `sales_id`, `design_id`, `offset_id`, `printing_id`, `packaging_id`, `delivery_id`) VALUES
(1, 1504233300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 1504429920, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_itemproduct`
--

CREATE TABLE `olala3w_itemproduct` (
  `itemproduct_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exhibition_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unit_price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `count_number` float NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `olala3w_itemproduct`
--

INSERT INTO `olala3w_itemproduct` (`itemproduct_id`, `name`, `exhibition_id`, `product_name`, `size`, `unit_price`, `type`, `count_number`, `total`) VALUES
(6, '', 1, 'Catalogue-Brochure', 'A2', '500000', 'Tập', 22, 11000000),
(7, '', 1, 'Phiếu-vé-hóa đơn', 'A4', '5000', 'Tờ', 1000, 5000000),
(8, '', 2, 'Banner', 'A2', '500000', 'Cái', 60, 30000000),
(9, '', 2, 'Profile', 'A4', '400000', 'Tập', 50, 20000000);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_jobs_address`
--

CREATE TABLE `olala3w_jobs_address` (
  `jobs_address_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_jobs_name`
--

CREATE TABLE `olala3w_jobs_name` (
  `jobs_name_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_level`
--

CREATE TABLE `olala3w_level` (
  `level_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `class` varchar(20) NOT NULL DEFAULT '-no-',
  `color` varchar(7) NOT NULL DEFAULT '#094089',
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_log`
--

CREATE TABLE `olala3w_log` (
  `log_id` double NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `session` varchar(255) NOT NULL,
  `modified_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_log`
--

INSERT INTO `olala3w_log` (`log_id`, `user_id`, `date`, `count`, `session`, `modified_time`) VALUES
(1, 1, '2017-08-25', 1, 'ed29a17ad8d17a36c77e17f69bca1237', 1503631199),
(2, 1, '2017-08-26', 1, 'b5b26b259e1a5f06cd5a86ec4e5564d3', 1503710173),
(3, 102, '2017-08-26', 1, 'b5b26b259e1a5f06cd5a86ec4e5564d3', 1503732728),
(4, 1, '2017-08-28', 35, 'f7326bf9330bc1e0595bbedbc0f35f53', 1503883204),
(5, 102, '2017-08-28', 1, 'f7326bf9330bc1e0595bbedbc0f35f53', 1503907288),
(6, 1, '2017-08-29', 32, '8ecfbe4d1572260a925a5cb63c23403a', 1503970331),
(7, 1, '2017-08-30', 4, '0407405ad9d00921422380c7fb7f5684', 1504026584),
(8, 1, '2017-08-31', 4, 'b7389ce0a03eaeb216a1f615e4d4a647', 1504112593),
(9, 108, '2017-08-31', 1, 'b7389ce0a03eaeb216a1f615e4d4a647', 1504187253),
(10, 108, '2017-09-01', 7, '5e871ab7bf7f722fdec7968ae6784406', 1504199581),
(11, 1, '2017-09-01', 2, '5e871ab7bf7f722fdec7968ae6784406', 1504259289),
(12, 108, '2017-09-02', 2, 'e33dfb04a65d5c53318215fe743daf33', 1504285254),
(13, 108, '2017-09-03', 3, '4dbc05cb706a63cfb7b55271356622ba', 1504401669);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_matches`
--

CREATE TABLE `olala3w_matches` (
  `matches_id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_notify`
--

CREATE TABLE `olala3w_notify` (
  `notify_id` bigint(20) NOT NULL,
  `calendar` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `content` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_notify_logs`
--

CREATE TABLE `olala3w_notify_logs` (
  `notify_logs_id` double NOT NULL,
  `notify_user` bigint(20) NOT NULL DEFAULT '0',
  `ip` varchar(255) NOT NULL,
  `session` varchar(255) NOT NULL,
  `agent` varchar(255) NOT NULL,
  `modified_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_notify_user`
--

CREATE TABLE `olala3w_notify_user` (
  `notify_user_id` bigint(20) NOT NULL,
  `notify` int(20) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_notify_user`
--

INSERT INTO `olala3w_notify_user` (`notify_user_id`, `notify`, `user_id`, `status`, `modified_time`) VALUES
(1, 1, 1, 0, 1503710184),
(2, 2, 1, 0, 1503891750),
(3, 3, 1, 0, 1503903242),
(4, 4, 1, 0, 1503903526),
(5, 5, 1, 0, 1503903755),
(6, 6, 1, 0, 1503904532),
(7, 7, 1, 1, 1503914340),
(8, 8, 1, 1, 1503914340),
(9, 9, 1, 1, 1503914340),
(10, 10, 1, 1, 1503914340),
(11, 11, 1, 1, 1503914340),
(12, 12, 1, 0, 1503973627),
(13, 13, 1, 0, 1503976237),
(14, 14, 1, 0, 1503978694),
(15, 15, 1, 0, 1503978712);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_online`
--

CREATE TABLE `olala3w_online` (
  `online_id` bigint(20) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `agent` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_online`
--

INSERT INTO `olala3w_online` (`online_id`, `ip`, `created_time`, `site`, `agent`, `user_id`) VALUES
(2313, '127.0.0.1', 1504488770, '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 0);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_online_daily`
--

CREATE TABLE `olala3w_online_daily` (
  `online_daily_id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_online_daily`
--

INSERT INTO `olala3w_online_daily` (`online_daily_id`, `date`, `count`) VALUES
(1, '2017-08-25', 276),
(2, '2017-08-26', 534),
(3, '2017-08-28', 405),
(4, '2017-08-29', 241),
(5, '2017-08-30', 179),
(6, '2017-08-31', 180),
(7, '2017-09-01', 180),
(8, '2017-09-02', 138),
(9, '2017-09-03', 179),
(10, '2017-09-04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_product`
--

CREATE TABLE `olala3w_product` (
  `product_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `unit_price` float NOT NULL,
  `type` varchar(240) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `modified_time` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_product_type`
--

CREATE TABLE `olala3w_product_type` (
  `product_type_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `created_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_role_user`
--

CREATE TABLE `olala3w_role_user` (
  `role_user_id` int(11) NOT NULL,
  `role` int(11) NOT NULL DEFAULT '0',
  `user` int(11) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `created_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_role_user`
--

INSERT INTO `olala3w_role_user` (`role_user_id`, `role`, `user`, `created_time`, `created_user`) VALUES
(62, 1, 1, 1468833116, 1),
(186, 64, 1, 1471425943, 1),
(326, 3, 107, 1504186082, 1),
(327, 3, 108, 1504186429, 1),
(328, 3, 109, 1504186555, 1),
(329, 3, 110, 1504186641, 1),
(330, 3, 111, 1504186722, 1);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_status`
--

CREATE TABLE `olala3w_status` (
  `status_id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_indicator` tinyint(4) NOT NULL DEFAULT '0',
  `agency` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `child` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `olala3w_status`
--

INSERT INTO `olala3w_status` (`status_id`, `description`, `is_indicator`, `agency`, `child`) VALUES
(1, 'Đang báo giá', 0, 'kinh doanh', 0),
(2, 'Đang thiết kế', 0, 'thiết kế', 0),
(3, 'Đang xuất kẽm', 0, 'xuất kẽm', 0),
(4, 'Đang in', 0, 'in', 0),
(5, 'Đang đóng gói', 0, 'đóng gói', 0),
(6, 'Đang giao hàng', 0, 'giao hàng', 0),
(7, 'Cho thiết kế', 1, 'thiết kế', 2),
(8, 'Cho xuất kẽm', 1, 'xuất kẽm', 3),
(9, 'Cho in', 1, 'in', 4),
(10, 'Cho đóng gói', 1, 'đóng gói', 5),
(11, 'Cho giao hàng', 1, 'giao hàng', 6),
(12, 'Đã giao hàng', 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_status_role`
--

CREATE TABLE `olala3w_status_role` (
  `status_role_id` int(11) NOT NULL,
  `role` tinyint(4) NOT NULL,
  `status` int(11) NOT NULL,
  `is_key` tinyint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `olala3w_status_role`
--

INSERT INTO `olala3w_status_role` (`status_role_id`, `role`, `status`, `is_key`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 1, 4, 1),
(5, 1, 5, 1),
(6, 1, 6, 1),
(7, 1, 7, 0),
(8, 1, 8, 0),
(9, 1, 9, 0),
(10, 1, 10, 0),
(11, 1, 11, 0),
(12, 3, 1, 1),
(13, 3, 7, 0),
(14, 3, 8, 0),
(15, 3, 9, 0),
(16, 3, 10, 0),
(17, 3, 11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_uploads_tmp`
--

CREATE TABLE `olala3w_uploads_tmp` (
  `upload_id` bigint(20) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `list_img` text NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `olala3w_calendar`
--
ALTER TABLE `olala3w_calendar`
  ADD PRIMARY KEY (`calendar_id`);

--
-- Indexes for table `olala3w_calendar_extend`
--
ALTER TABLE `olala3w_calendar_extend`
  ADD PRIMARY KEY (`calendar_extend_id`);

--
-- Indexes for table `olala3w_calendar_user`
--
ALTER TABLE `olala3w_calendar_user`
  ADD PRIMARY KEY (`calendar_user_id`);

--
-- Indexes for table `olala3w_category`
--
ALTER TABLE `olala3w_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `olala3w_category_type`
--
ALTER TABLE `olala3w_category_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `olala3w_constant`
--
ALTER TABLE `olala3w_constant`
  ADD PRIMARY KEY (`constant_id`),
  ADD UNIQUE KEY `constant` (`constant`);

--
-- Indexes for table `olala3w_core_privilege`
--
ALTER TABLE `olala3w_core_privilege`
  ADD PRIMARY KEY (`privilege_id`);

--
-- Indexes for table `olala3w_core_role`
--
ALTER TABLE `olala3w_core_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `olala3w_core_user`
--
ALTER TABLE `olala3w_core_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `olala3w_customer`
--
ALTER TABLE `olala3w_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `olala3w_document`
--
ALTER TABLE `olala3w_document`
  ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `olala3w_document_type`
--
ALTER TABLE `olala3w_document_type`
  ADD PRIMARY KEY (`document_type_id`);

--
-- Indexes for table `olala3w_exhibition`
--
ALTER TABLE `olala3w_exhibition`
  ADD PRIMARY KEY (`exhibition_id`);

--
-- Indexes for table `olala3w_exhibition_history`
--
ALTER TABLE `olala3w_exhibition_history`
  ADD PRIMARY KEY (`exhibition_id`);

--
-- Indexes for table `olala3w_itemproduct`
--
ALTER TABLE `olala3w_itemproduct`
  ADD PRIMARY KEY (`itemproduct_id`);

--
-- Indexes for table `olala3w_jobs_address`
--
ALTER TABLE `olala3w_jobs_address`
  ADD PRIMARY KEY (`jobs_address_id`);

--
-- Indexes for table `olala3w_jobs_name`
--
ALTER TABLE `olala3w_jobs_name`
  ADD PRIMARY KEY (`jobs_name_id`);

--
-- Indexes for table `olala3w_level`
--
ALTER TABLE `olala3w_level`
  ADD PRIMARY KEY (`level_id`);

--
-- Indexes for table `olala3w_log`
--
ALTER TABLE `olala3w_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `olala3w_matches`
--
ALTER TABLE `olala3w_matches`
  ADD PRIMARY KEY (`matches_id`);

--
-- Indexes for table `olala3w_notify`
--
ALTER TABLE `olala3w_notify`
  ADD PRIMARY KEY (`notify_id`);

--
-- Indexes for table `olala3w_notify_logs`
--
ALTER TABLE `olala3w_notify_logs`
  ADD PRIMARY KEY (`notify_logs_id`);

--
-- Indexes for table `olala3w_notify_user`
--
ALTER TABLE `olala3w_notify_user`
  ADD PRIMARY KEY (`notify_user_id`);

--
-- Indexes for table `olala3w_online`
--
ALTER TABLE `olala3w_online`
  ADD PRIMARY KEY (`online_id`);

--
-- Indexes for table `olala3w_online_daily`
--
ALTER TABLE `olala3w_online_daily`
  ADD PRIMARY KEY (`online_daily_id`);

--
-- Indexes for table `olala3w_product`
--
ALTER TABLE `olala3w_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `olala3w_product_type`
--
ALTER TABLE `olala3w_product_type`
  ADD PRIMARY KEY (`product_type_id`);

--
-- Indexes for table `olala3w_role_user`
--
ALTER TABLE `olala3w_role_user`
  ADD PRIMARY KEY (`role_user_id`);

--
-- Indexes for table `olala3w_status`
--
ALTER TABLE `olala3w_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `olala3w_status_role`
--
ALTER TABLE `olala3w_status_role`
  ADD PRIMARY KEY (`status_role_id`);

--
-- Indexes for table `olala3w_uploads_tmp`
--
ALTER TABLE `olala3w_uploads_tmp`
  ADD PRIMARY KEY (`upload_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `olala3w_calendar`
--
ALTER TABLE `olala3w_calendar`
  MODIFY `calendar_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_calendar_extend`
--
ALTER TABLE `olala3w_calendar_extend`
  MODIFY `calendar_extend_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_calendar_user`
--
ALTER TABLE `olala3w_calendar_user`
  MODIFY `calendar_user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `olala3w_category`
--
ALTER TABLE `olala3w_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_category_type`
--
ALTER TABLE `olala3w_category_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_constant`
--
ALTER TABLE `olala3w_constant`
  MODIFY `constant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT for table `olala3w_core_privilege`
--
ALTER TABLE `olala3w_core_privilege`
  MODIFY `privilege_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5970;
--
-- AUTO_INCREMENT for table `olala3w_core_role`
--
ALTER TABLE `olala3w_core_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `olala3w_core_user`
--
ALTER TABLE `olala3w_core_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `olala3w_customer`
--
ALTER TABLE `olala3w_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `olala3w_document`
--
ALTER TABLE `olala3w_document`
  MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_document_type`
--
ALTER TABLE `olala3w_document_type`
  MODIFY `document_type_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_exhibition`
--
ALTER TABLE `olala3w_exhibition`
  MODIFY `exhibition_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `olala3w_exhibition_history`
--
ALTER TABLE `olala3w_exhibition_history`
  MODIFY `exhibition_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `olala3w_itemproduct`
--
ALTER TABLE `olala3w_itemproduct`
  MODIFY `itemproduct_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `olala3w_jobs_address`
--
ALTER TABLE `olala3w_jobs_address`
  MODIFY `jobs_address_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_jobs_name`
--
ALTER TABLE `olala3w_jobs_name`
  MODIFY `jobs_name_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_level`
--
ALTER TABLE `olala3w_level`
  MODIFY `level_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_log`
--
ALTER TABLE `olala3w_log`
  MODIFY `log_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `olala3w_matches`
--
ALTER TABLE `olala3w_matches`
  MODIFY `matches_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_notify`
--
ALTER TABLE `olala3w_notify`
  MODIFY `notify_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_notify_logs`
--
ALTER TABLE `olala3w_notify_logs`
  MODIFY `notify_logs_id` double NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_notify_user`
--
ALTER TABLE `olala3w_notify_user`
  MODIFY `notify_user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `olala3w_online`
--
ALTER TABLE `olala3w_online`
  MODIFY `online_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2314;
--
-- AUTO_INCREMENT for table `olala3w_online_daily`
--
ALTER TABLE `olala3w_online_daily`
  MODIFY `online_daily_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `olala3w_product`
--
ALTER TABLE `olala3w_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_product_type`
--
ALTER TABLE `olala3w_product_type`
  MODIFY `product_type_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_role_user`
--
ALTER TABLE `olala3w_role_user`
  MODIFY `role_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;
--
-- AUTO_INCREMENT for table `olala3w_status`
--
ALTER TABLE `olala3w_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `olala3w_status_role`
--
ALTER TABLE `olala3w_status_role`
  MODIFY `status_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `olala3w_uploads_tmp`
--
ALTER TABLE `olala3w_uploads_tmp`
  MODIFY `upload_id` bigint(20) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
