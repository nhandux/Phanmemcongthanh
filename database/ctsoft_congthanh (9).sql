-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 10, 2017 at 09:11 AM
-- Server version: 5.5.41
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ctsoft_congthanh`
--

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_calendar`
--

CREATE TABLE `olala3w_calendar` (
  `calendar_id` int(11) NOT NULL,
  `exhibition_id` int(11) NOT NULL,
  `type` int(1) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `to_personal` text NOT NULL,
  `to_role` text NOT NULL,
  `to_agency` text NOT NULL,
  `supervisor` int(11) NOT NULL DEFAULT '0',
  `note` text NOT NULL,
  `content` text NOT NULL,
  `report_user` int(11) NOT NULL DEFAULT '0',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `status` int(1) NOT NULL DEFAULT '0',
  `disable` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_calendar`
--

INSERT INTO `olala3w_calendar` (`calendar_id`, `exhibition_id`, `type`, `level`, `to_personal`, `to_role`, `to_agency`, `supervisor`, `note`, `content`, `report_user`, `is_active`, `status`, `disable`, `created_time`, `modified_time`, `user_id`) VALUES
(1, 1, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:16px;\">Số : 1 </span><br/>\n\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo : 11/09/2017 17:39</span><br/>\n\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành : 30/09/2017</span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000001\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Set doanh nghiệp</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A2\" />\n\n							</label>\n\n							</td>			\n\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100.000\" />\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1505126387, 0, 114),
(2, 1, 3, 0, '', '4', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n			<li> Email: congthanhprint@gmail.com </li>\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 1 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :11/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :30/09/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000001\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Set doanh nghiệp</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A2\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 2, 0, 1505377132, 0, 114),
(3, 2, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:16px;\">Số : 2 </span><br/>\n\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo : 14/09/2017 16:29</span><br/>\n\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành : 29/09/2017</span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000002\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Set doanh nghiệp</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A2\" />\n\n							</label>\n\n							</td>			\n\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100.000\" />\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1505381347, 0, 114),
(4, 3, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:16px;\">Số : 3 - CT-2017000003 </span><br/>\n\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo : 14/09/2017 17:21</span><br/>\n\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành : 30/09/2017</span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Set doanh nghiệp</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A2\" />\n\n							</label>\n\n							</td>			\n\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1505384483, 0, 114),
(5, 4, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 4 - CT-2017000004 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 16/09/2017 11:39</span><br/>\n\n			<span style=\"color: #111;font-size:12px; margin-left: -30%;\">Ngày hoàn thành : 30/09/2017</span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Catalogue-Brochure</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A2</span>\n\n							</label>\n\n							</td>			\n\n							<td>\n							<label class=\"form-lb-tp\">0</label>\n							</td>\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>10.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1505536780, 0, 1),
(6, 4, 3, 0, '', '4', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n			<li> Email: congthanhprint@gmail.com </li>\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 4 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :16/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :30/09/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000004\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue-Brochure</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A2\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 2, 0, 1505546245, 0, 1),
(7, 5, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 5 - CT-2017000005 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 16/09/2017 14:21</span><br/>\n\n			<span style=\"color: #111;font-size:12px; margin-left: -30%;\">Ngày hoàn thành : 30/09/2017</span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Catalogue-Brochure</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>100</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">2</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Lịch-thiệp</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A5</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1505546492, 0, 114),
(8, 6, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 6 - CT-2017000005 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 16/09/2017 14:21</span><br/>\n\n			<span style=\"color: #111;font-size:12px; margin-left: -30%;\">Ngày hoàn thành : 30/09/2017</span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Catalogue-Brochure</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>100</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">2</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Lịch-thiệp</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A5</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1505546495, 0, 114),
(9, 7, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%;margin-top: 90px;\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 7 - CT-2017000006 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 16/09/2017 14:45</span><br/>\n\n			<span style=\"color: #111;font-size:12px; \">Ngày hoàn thành : 01/10/2017</span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n			<th><label class=\"form-lb-tp\"> Đơn giá </label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Catalogue-Brochure</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A2</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>10.000</span>\n\n							</label>\n\n							</td>\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n                                <span>/Cái</span>\n							</label>\n							</td>\n		 \n\n						</tr></table>', 0, 1, 1, 0, 1505547934, 0, 1),
(10, 8, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 8 - CT-2017000007 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 16/09/2017 14:58</span><br/>\n\n			<span style=\"color: #111;font-size:12px; margin-left: -30%;\">Ngày hoàn thành : 19/10/2017</span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Lịch-thiệp</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>50</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">2</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Banner</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A2</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>5</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1505548681, 0, 120),
(11, 9, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%;margin-top: 90px;\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 9 - CT-2017000008 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 16/09/2017 15:45</span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày hoàn thành : 28/10/2017</span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Sách báo-tạp chí</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A3</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>10.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">2</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Set doanh nghiệp</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A5</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>100.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1505551545, 0, 114),
(12, 4, 3, 0, '', '5', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n			<li> Email: congthanhprint@gmail.com </li>\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 4 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :16/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :30/09/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000004\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue-Brochure</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A2\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 3, 0, 1505551642, 0, 115),
(13, 10, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%;margin-top: 90px;\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 10 - CT-2017000009 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 19/09/2017 11:07</span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày hoàn thành : 22/09/2017</span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Catalogue-Brochure</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>200</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">2</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Catalogue-Brochure</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>200</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">3</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Banner </label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>200</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1505794050, 0, 114),
(14, 8, 3, 0, '', '5', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n			<li> Email: congthanhprint@gmail.com </li>\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 8 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :16/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :19/10/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000007\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Lịch-thiệp</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"50\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Banner</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A2\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"5\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 3, 0, 1505796143, 0, 120),
(15, 8, 14, 0, '', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n			<li> Email: congthanhprint@gmail.com </li>\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 8 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :16/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :19/10/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000007\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Lịch-thiệp</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"50\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Banner</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A2\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"5\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table><table class=\"table table-no-border table-ol-3w table-hover tabnhan notenhan\" style=\"max-width: 500px;\">\n						<tr><td colspan=\"2\" style=\"padding:5px;\">\n							<span class=\"hienthi\">Tổng số :</span>  <span class=\"soluongtinnhan\" > <?= $sl ?> </span> ghi chú cho đơn hàng <span style=\"color:#903030;font-weight: 600;\"><?= $name; ?></span>\n						</td></tr>\n						<tr>\n							<td colspan=\"2\">\n								<div class=\"contentnote\">\n								<span class=\"kytuad\">Nguyễn Tú Tú</span>Thêm 20 Poster kích thước 50cmx100cm<small><i class=\"fa fa-clock-o\"></i>20/09/2017</small>.<br/>\n								</div>\n							</td>\n						</tr>\n						<tr>\n							\n						</tr>\n				</table>', 0, 1, 0, 0, 1505901979, 0, 120),
(16, 8, 14, 0, '', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n			<li> Email: congthanhprint@gmail.com </li>\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 8 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :16/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :19/10/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000007\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Lịch-thiệp</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"50\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Banner</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A2\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"5\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table><table class=\"table table-no-border table-ol-3w table-hover tabnhan notenhan\" style=\"max-width: 500px;\">\n						<tr><td colspan=\"2\" style=\"padding:5px;\">\n							<span class=\"hienthi\">Tổng số :</span>  <span class=\"soluongtinnhan\" > <?= $sl ?> </span> ghi chú cho đơn hàng <span style=\"color:#903030;font-weight: 600;\"><?= $name; ?></span>\n						</td></tr>\n						<tr>\n							<td colspan=\"2\">\n								<div class=\"contentnote\">\n								<span class=\"kytuad\">Nguyễn Tú Tú</span>Làm gấp. Hạn giao hàng rút xuống còn 30/10<small><i class=\"fa fa-clock-o\"></i>20/09/2017</small>.<br/>\n								</div>\n							</td>\n						</tr>\n						<tr>\n							\n						</tr>\n				</table>', 0, 1, 3, 0, 1505902246, 0, 120);
INSERT INTO `olala3w_calendar` (`calendar_id`, `exhibition_id`, `type`, `level`, `to_personal`, `to_role`, `to_agency`, `supervisor`, `note`, `content`, `report_user`, `is_active`, `status`, `disable`, `created_time`, `modified_time`, `user_id`) VALUES
(17, 11, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%;margin-top: 90px;\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 11 - CT-2017000010 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 20/09/2017 17:16</span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày hoàn thành : 30/09/2017</span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Set doanh nghiệp</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A3</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>100.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">2</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Set doanh nghiệp</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A3</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>100.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">3</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Catalogue-Brochure</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A0</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">4</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Catalogue-Brochure</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A0</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1505902570, 0, 1),
(18, 8, 14, 0, '', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n			<li> Email: congthanhprint@gmail.com </li>\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 8 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :16/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :19/10/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000007\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Lịch-thiệp</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"50\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Banner</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A2\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"5\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table><table class=\"table table-no-border table-ol-3w table-hover tabnhan notenhan\" style=\"max-width: 500px;\">\n						<tr><td colspan=\"2\" style=\"padding:5px;\">\n							 <span style=\"color:#903030;font-weight: 800;font-size:16px\">Ghi chú cho đơn hàng </span>\n						</td></tr>\n						<tr>\n							<td colspan=\"2\">\n								<div class=\"contentnote\" style=\"color:#f00; font-weight:600;font-size:14px\">\n								<span class=\"kytuad\">Nguyễn Tú Tú</span>In xong trong ngày 15/10 để gủi qua đóng gói<small><i class=\"fa fa-clock-o\"></i>20/09/2017</small>.<br/>\n								</div>\n							</td>\n						</tr>\n						<tr>\n							\n						</tr>\n				</table>', 0, 1, 3, 0, 1505902689, 0, 120),
(19, 11, 3, 0, '', '4', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n			<li> Email: congthanhprint@gmail.com </li>\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 11 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :20/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :30/09/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000010\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Set doanh nghiệp</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A3\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Set doanh nghiệp</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A3\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">3</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue-Brochure</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A0\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">4</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue-Brochure</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A0\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 2, 0, 1505902915, 0, 1),
(20, 12, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%;margin-top: 90px;\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 12 - CT-2017000011 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 21/09/2017 10:24</span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày hoàn thành : 30/09/2017</span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Banner</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>100.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1505964286, 0, 122),
(21, 12, 14, 0, '', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n			<li> Email: congthanhprint@gmail.com </li>\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 12 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :21/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :30/09/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000011\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Banner</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table><table class=\"table table-no-border table-ol-3w table-hover tabnhan notenhan\" style=\"max-width: 500px;\">\n						<tr><td colspan=\"2\" style=\"padding:5px;\">\n							 <span style=\"color:#903030;font-weight: 800;font-size:16px\">Ghi chú cho đơn hàng </span>\n						</td></tr>\n						<tr>\n							<td colspan=\"2\">\n								<div class=\"contentnote\" style=\"color:#f00; font-weight:600;font-size:14px\">\n								<span class=\"kytuad\" style=\"color: #000;\">Nguyễn Đức Nhân</span>vf<small style=\"color: #000;\"><i class=\"fa fa-clock-o\"></i>21/09/2017</small>.<br/>\n								</div>\n							</td>\n						</tr>\n						<tr>\n							\n						</tr>\n				</table>', 0, 1, 1, 0, 1505964544, 0, 122),
(22, 12, 14, 0, '', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n			<li> Email: congthanhprint@gmail.com </li>\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 12 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :21/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :30/09/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000011\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Banner</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table><table class=\"table table-no-border table-ol-3w table-hover tabnhan notenhan\" style=\"max-width: 500px;\">\n						<tr><td colspan=\"2\" style=\"padding:5px;\">\n							 <span style=\"color:#903030;font-weight: 800;font-size:16px\">Ghi chú cho đơn hàng </span>\n						</td></tr>\n						<tr>\n							<td colspan=\"2\">\n								<div class=\"contentnote\" style=\"color:#f00; font-weight:600;font-size:14px\">\n								<span class=\"kytuad\" style=\"color: #000;\">Nguyễn Đức Nhân</span>ưer<small style=\"color: #000;\"><i class=\"fa fa-clock-o\"></i>21/09/2017</small>.<br/>\n								</div>\n							</td>\n						</tr>\n						<tr>\n							\n						</tr>\n				</table>', 0, 1, 1, 0, 1505964546, 0, 122),
(23, 13, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 13 - CT-2017000011 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 21/09/2017 16:01</span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày hoàn thành : 30/09/2017</span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Banner</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A3</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>900.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">2</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Phiếu-vé-hóa đơn</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A3</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>900.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">3</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Catalogue-Brochure</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>900.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">4</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Sách báo-tạp chí</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A0</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>900.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">5</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Profile</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A5</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>900.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1505984482, 0, 1),
(24, 14, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 14 - CT-2017000012 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 21/09/2017 16:38</span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày hoàn thành : 30/09/2017</span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\"  style=\"min-width:800px;\">\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Catalogue-Brochure</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>100.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1505986739, 0, 1),
(25, 8, 3, 0, '', '6', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n			<li> Email: congthanhprint@gmail.com </li>\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 8 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :16/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :20/09/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000007\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Lịch-thiệp</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"50\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Banner</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A2\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"5\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 4, 0, 1506014969, 0, 117),
(26, 8, 3, 0, '', '7', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n			<li> Email: congthanhprint@gmail.com </li>\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 8 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :16/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :20/09/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000007\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Lịch-thiệp</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"50\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Banner</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A2\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"5\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 5, 0, 1506045708, 0, 118),
(27, 15, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 15 - CT-2017000013 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 22/09/2017 10:58</span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày hoàn thành : 23/09/2017</span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\"  style=\"min-width:800px;\">\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Poster</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A1</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>30</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">2</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Poster</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A1</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>20</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">3</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Catalogue-Brochure</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>400</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">4</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Catalogue-Brochure</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1506052732, 0, 114),
(28, 15, 3, 0, '', '4', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n			<li> Email: congthanhprint@gmail.com </li>\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 15 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :22/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :23/09/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000013\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Poster</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A1\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"30\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue-Brochure</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"400\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 2, 0, 1506052831, 0, 114),
(29, 10, 3, 0, '', '4', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n			<li> Email: congthanhprint@gmail.com </li>\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 10 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :19/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :22/09/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000009\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue-Brochure</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"200\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue-Brochure</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"200\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">3</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Banner </label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"200\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 2, 0, 1506052932, 0, 114),
(30, 9, 3, 0, '', '4', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n			<li> Email: congthanhprint@gmail.com </li>\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 9 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :16/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :28/10/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000008\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Sách báo-tạp chí</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A3\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Set doanh nghiệp</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A5\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 2, 0, 1506052974, 0, 114);
INSERT INTO `olala3w_calendar` (`calendar_id`, `exhibition_id`, `type`, `level`, `to_personal`, `to_role`, `to_agency`, `supervisor`, `note`, `content`, `report_user`, `is_active`, `status`, `disable`, `created_time`, `modified_time`, `user_id`) VALUES
(31, 15, 14, 0, '', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n			<li> Email: congthanhprint@gmail.com </li>\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 15 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :22/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :23/09/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000013\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Poster</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A1\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"30\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue-Brochure</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"400\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table><table class=\"table table-no-border table-ol-3w table-hover tabnhan notenhan\" style=\"max-width: 500px;\">\n						<tr><td colspan=\"2\" style=\"padding:5px;\">\n							 <span style=\"color:#903030;font-weight: 800;font-size:16px\">Ghi chú cho đơn hàng </span>\n						</td></tr>\n						<tr>\n							<td colspan=\"2\">\n								<div class=\"contentnote\" style=\"color:#f00; font-weight:600;font-size:14px\">\n								<span class=\"kytuad\" style=\"color: #000;\">Hoàng Trọng Nghĩa</span>Yêu cầu làm trước ngày 30/09<small style=\"color: #000;\"><i class=\"fa fa-clock-o\"></i>22/09/2017</small>.<br/>\n								</div>\n							</td>\n						</tr>\n						<tr>\n							\n						</tr>\n				</table>', 0, 1, 2, 0, 1506053032, 0, 114),
(32, 15, 14, 0, '', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n			<li> Email: congthanhprint@gmail.com </li>\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 15 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :22/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :23/09/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000013\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Poster</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A1\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"30\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue-Brochure</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"400\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table><table class=\"table table-no-border table-ol-3w table-hover tabnhan notenhan\" style=\"max-width: 500px;\">\n						<tr><td colspan=\"2\" style=\"padding:5px;\">\n							 <span style=\"color:#903030;font-weight: 800;font-size:16px\">Ghi chú cho đơn hàng </span>\n						</td></tr>\n						<tr>\n							<td colspan=\"2\">\n								<div class=\"contentnote\" style=\"color:#f00; font-weight:600;font-size:14px\">\n								<span class=\"kytuad\" style=\"color: #000;\">Hoàng Trọng Nghĩa</span>https://www.youtube.com/watch?v=AEpxtnGgHio vào đây lấy logo<small style=\"color: #000;\"><i class=\"fa fa-clock-o\"></i>22/09/2017</small>.<br/>\n								</div>\n							</td>\n						</tr>\n						<tr>\n							\n						</tr>\n				</table>', 0, 1, 2, 0, 1506053114, 0, 114),
(33, 3, 14, 0, '', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n			<li> Email: congthanhprint@gmail.com </li>\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 3 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :14/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :30/09/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000003\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Set doanh nghiệp</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A2\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table><table class=\"table table-no-border table-ol-3w table-hover tabnhan notenhan\" style=\"max-width: 500px;\">\n						<tr><td colspan=\"2\" style=\"padding:5px;\">\n							 <span style=\"color:#903030;font-weight: 800;font-size:16px\">Ghi chú cho đơn hàng </span>\n						</td></tr>\n						<tr>\n							<td colspan=\"2\">\n								<div class=\"contentnote\" style=\"color:#f00; font-weight:600;font-size:14px\">\n								<span class=\"kytuad\" style=\"color: #000;\">Hoàng Trọng Nghĩa</span>Khách chưa thânh toán, tạm dựng<small style=\"color: #000;\"><i class=\"fa fa-clock-o\"></i>22/09/2017</small>.<br/>\n								</div>\n							</td>\n						</tr>\n						<tr>\n							\n						</tr>\n				</table>', 0, 1, 1, 0, 1506054380, 0, 114),
(34, 14, 3, 0, '', '0', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 14 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :21/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :30/09/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000012\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue-Brochure</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 13, 0, 1506571791, 0, 1),
(35, 13, 3, 0, '', '0', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 13 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :21/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :30/09/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000011\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Phiếu-vé-hóa đơn</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A3\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"900.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 13, 0, 1506571820, 0, 1),
(36, 16, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 16 - CT-2017000014 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 28/09/2017 14:57</span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày hoàn thành : 30/09/2017</span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\"  style=\"min-width:800px;\">\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Brochure_KS</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">2</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Hộp giấy_KS</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">3</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Lịch_KS</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">4</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Thiệp mời_KS</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A5</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">5</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Menu_KS</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">6</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Catalogue_KS</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">7</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Poster_KS</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A5</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">8</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Túi giấy_KS</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">9</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Profile_KS</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">10</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Bao bì giấy_KS</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A3</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">11</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Name Card_KS</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A8</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1506585462, 0, 1),
(37, 17, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 17 - CT-2017000015 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 29/09/2017 09:24</span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày hoàn thành : </span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\"  style=\"min-width:800px;\">\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Thiệp mời</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A0</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>100</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1506651882, 0, 1),
(38, 18, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 18 - CT-2017000016 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 29/09/2017 09:28</span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày hoàn thành : </span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\"  style=\"min-width:800px;\">\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Bao bì giấy_NH</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A3</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">2</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Lịch_NH</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A5</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">3</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Menu_NH</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">4</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Túi giấy_NH</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">5</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Thiệp mời_NH</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A6</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">6</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Name Card_NH</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A8</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1506652131, 0, 145),
(39, 19, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 19 - CT-2017000016 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 29/09/2017 09:28</span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày hoàn thành : </span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\"  style=\"min-width:800px;\">\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Bao bì giấy_NH</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A3</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">2</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Lịch_NH</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A5</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">3</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Menu_NH</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">4</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Túi giấy_NH</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">5</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Thiệp mời_NH</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A6</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">6</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Name Card_NH</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A8</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1506652132, 0, 145),
(40, 16, 3, 0, '', '7', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 16 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :28/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :30/09/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000014\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Brochure_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Hộp giấy_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">3</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Lịch_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">4</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Thiệp mời_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A5\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">5</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Menu_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">6</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">7</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Poster_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A5\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">8</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Túi giấy_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">9</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Profile_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">10</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Bao bì giấy_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A3\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">11</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Name Card_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A8\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 5, 0, 1506652235, 0, 1),
(41, 20, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 20 - CT-2017000017 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 29/09/2017 09:59</span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày hoàn thành : </span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\"  style=\"min-width:800px;\">\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Tem</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A3</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>100</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1506653980, 0, 114),
(42, 20, 3, 0, '', '6', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 20 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :29/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000017\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Tem</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A3\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 4, 0, 1506654005, 0, 114);
INSERT INTO `olala3w_calendar` (`calendar_id`, `exhibition_id`, `type`, `level`, `to_personal`, `to_role`, `to_agency`, `supervisor`, `note`, `content`, `report_user`, `is_active`, `status`, `disable`, `created_time`, `modified_time`, `user_id`) VALUES
(43, 20, 3, 0, '', '7', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 20 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :29/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000017\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Tem</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A3\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 5, 0, 1506654067, 0, 118),
(44, 20, 3, 0, '', '8', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 20 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :29/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000017\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Tem</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A3\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 6, 0, 1506654881, 0, 148),
(45, 17, 3, 0, '', '6', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 17 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :29/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000015\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Thiệp mời</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A0\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 4, 0, 1506654932, 0, 1),
(46, 21, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 21 - CT-2017000018 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 29/09/2017 10:15</span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày hoàn thành : </span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\"  style=\"min-width:800px;\">\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Tui Giấy</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A3</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">2</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Menu_NH</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>100</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">3</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Thiệp mời_NH</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A6</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>100</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">4</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Name Card_NH</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A8</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>100</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">5</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Catalogue</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>50X20X50</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>20</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">6</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Catalogue</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>50X20X50</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>20</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1506654938, 0, 133),
(47, 21, 14, 0, '', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 21 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :29/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :20/10/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000018\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Tui Giấy</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A3\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A3\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">3</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Name Card_NH</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A8\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">4</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"50X20X50\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"20\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">5</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"50X20X50\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"20\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">6</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Name Card</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A6\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"50\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table><table class=\"table table-no-border table-ol-3w table-hover tabnhan notenhan\" style=\"max-width: 500px;\">\n						<tr><td colspan=\"2\" style=\"padding:5px;\">\n							 <span style=\"color:#903030;font-weight: 800;font-size:16px\">Ghi chú cho đơn hàng </span>\n						</td></tr>\n						<tr>\n							<td colspan=\"2\">\n								<div class=\"contentnote\" style=\"color:#f00; font-weight:600;font-size:14px\">\n								<span class=\"kytuad\" style=\"color: #000;\">Trần Thị Kim Phương</span>Giao 50 hộp card trước<small style=\"color: #000;\"><i class=\"fa fa-clock-o\"></i>29/09/2017</small>.<br/>\n								</div>\n							</td>\n						</tr>\n						<tr>\n							\n						</tr>\n				</table>', 0, 1, 1, 0, 1506655151, 0, 133),
(48, 21, 3, 0, '', '4', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 21 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :29/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :20/10/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000018\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Tui Giấy</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A3\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A3\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">3</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Name Card_NH</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A8\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">4</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"50X20X50\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"20\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">5</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"50X20X50\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"20\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">6</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Name Card</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A6\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"50\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 2, 0, 1506655241, 0, 133),
(49, 7, 3, 0, '', '7', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 7 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :16/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :01/10/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000006\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue-Brochure</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A2\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 5, 0, 1506655652, 0, 1),
(50, 21, 3, 0, '', '0', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 21 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :29/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :20/10/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000018\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Tui Giấy</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A3\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A3\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">3</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Name Card_NH</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A8\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">4</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"50X20X50\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"20\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">5</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"50X20X50\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"20\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">6</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Name Card</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A6\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"50\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 13, 0, 1506656051, 0, 133),
(51, 21, 3, 0, '', '4', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 21 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :29/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :20/10/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000018\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Tui Giấy</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A3\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A3\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">3</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Name Card_NH</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A8\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">4</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"50X20X50\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"20\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">5</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"50X20X50\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"20\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">6</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Name Card</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A6\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"50\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 2, 0, 1506656066, 0, 133),
(52, 21, 14, 0, '', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 21 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :29/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :20/10/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000018\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Tui Giấy</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A3\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A3\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">3</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Name Card_NH</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A8\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">4</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"50X20X50\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"20\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">5</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"50X20X50\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"20\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">6</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Name Card</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A6\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"50\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table><table class=\"table table-no-border table-ol-3w table-hover tabnhan notenhan\" style=\"max-width: 500px;\">\n						<tr><td colspan=\"2\" style=\"padding:5px;\">\n							 <span style=\"color:#903030;font-weight: 800;font-size:16px\">Ghi chú cho đơn hàng </span>\n						</td></tr>\n						<tr>\n							<td colspan=\"2\">\n								<div class=\"contentnote\" style=\"color:#f00; font-weight:600;font-size:14px\">\n								<span class=\"kytuad\" style=\"color: #000;\">Trần Thị Kim Phương</span>Làm thêm 10 cái catalogue<small style=\"color: #000;\"><i class=\"fa fa-clock-o\"></i>29/09/2017</small>.<br/>\n								</div>\n							</td>\n						</tr>\n						<tr>\n							\n						</tr>\n				</table>', 0, 1, 2, 0, 1506656145, 0, 133),
(53, 22, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 22 - CT-2017000019 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 29/09/2017 10:45</span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày hoàn thành : </span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\"  style=\"min-width:800px;\">\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Thiệp mời</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>100</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>100</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1506656740, 0, 114);
INSERT INTO `olala3w_calendar` (`calendar_id`, `exhibition_id`, `type`, `level`, `to_personal`, `to_role`, `to_agency`, `supervisor`, `note`, `content`, `report_user`, `is_active`, `status`, `disable`, `created_time`, `modified_time`, `user_id`) VALUES
(54, 22, 3, 0, '', '4', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 22 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :29/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000019\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Thiệp mời</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"100\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 2, 0, 1506656853, 0, 114),
(55, 21, 11, 0, '137', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 21 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :29/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :20/10/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div><table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Tui Giấy</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A3\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A3\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">3</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Name Card_NH</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A8\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">4</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"50X20X50\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"20\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">5</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"50X20X50\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"20\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">6</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Name Card</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A6\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"50\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 2, 0, 1506656862, 0, 137),
(56, 22, 14, 0, '', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 22 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :29/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000019\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Thiệp mời</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"100\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table><table class=\"table table-no-border table-ol-3w table-hover tabnhan notenhan\" style=\"max-width: 500px;\">\n						<tr><td colspan=\"2\" style=\"padding:5px;\">\n							 <span style=\"color:#903030;font-weight: 800;font-size:16px\">Ghi chú cho đơn hàng </span>\n						</td></tr>\n						<tr>\n							<td colspan=\"2\">\n								<div class=\"contentnote\" style=\"color:#f00; font-weight:600;font-size:14px\">\n								<span class=\"kytuad\" style=\"color: #000;\">Nguyễn Thị Diễm Vy</span>nhshdasd<small style=\"color: #000;\"><i class=\"fa fa-clock-o\"></i>29/09/2017</small>.<br/>\n								</div>\n							</td>\n						</tr>\n						<tr>\n							\n						</tr>\n				</table>', 0, 1, 2, 0, 1506656885, 0, 139),
(57, 22, 14, 0, '', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 22 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :29/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000019\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Thiệp mời</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"100\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table><table class=\"table table-no-border table-ol-3w table-hover tabnhan notenhan\" style=\"max-width: 500px;\">\n						<tr><td colspan=\"2\" style=\"padding:5px;\">\n							 <span style=\"color:#903030;font-weight: 800;font-size:16px\">Ghi chú cho đơn hàng </span>\n						</td></tr>\n						<tr>\n							<td colspan=\"2\">\n								<div class=\"contentnote\" style=\"color:#f00; font-weight:600;font-size:14px\">\n								<span class=\"kytuad\" style=\"color: #000;\">Nguyễn Thị Diễm Vy</span>dqwd23rwqq<small style=\"color: #000;\"><i class=\"fa fa-clock-o\"></i>29/09/2017</small>.<br/>\n								</div>\n							</td>\n						</tr>\n						<tr>\n							\n						</tr>\n				</table>', 0, 1, 2, 0, 1506656888, 0, 139),
(58, 22, 14, 0, '', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 22 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :29/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000019\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Thiệp mời</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"100\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table><table class=\"table table-no-border table-ol-3w table-hover tabnhan notenhan\" style=\"max-width: 500px;\">\n						<tr><td colspan=\"2\" style=\"padding:5px;\">\n							 <span style=\"color:#903030;font-weight: 800;font-size:16px\">Ghi chú cho đơn hàng </span>\n						</td></tr>\n						<tr>\n							<td colspan=\"2\">\n								<div class=\"contentnote\" style=\"color:#f00; font-weight:600;font-size:14px\">\n								<span class=\"kytuad\" style=\"color: #000;\">Nguyễn Thị Diễm Vy</span>Cần thiết kế nhanh trước ngày 30/04\n<small style=\"color: #000;\"><i class=\"fa fa-clock-o\"></i>29/09/2017</small>.<br/>\n								</div>\n							</td>\n						</tr>\n						<tr>\n							\n						</tr>\n				</table>', 0, 1, 2, 0, 1506656911, 0, 139),
(59, 22, 14, 0, '', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 22 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :29/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000019\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Thiệp mời</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"100\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table><table class=\"table table-no-border table-ol-3w table-hover tabnhan notenhan\" style=\"max-width: 500px;\">\n						<tr><td colspan=\"2\" style=\"padding:5px;\">\n							 <span style=\"color:#903030;font-weight: 800;font-size:16px\">Ghi chú cho đơn hàng </span>\n						</td></tr>\n						<tr>\n							<td colspan=\"2\">\n								<div class=\"contentnote\" style=\"color:#f00; font-weight:600;font-size:14px\">\n								<span class=\"kytuad\" style=\"color: #000;\">Nguyễn Thị Thi</span>File thiết kế đã hoàn thành đợi khách<small style=\"color: #000;\"><i class=\"fa fa-clock-o\"></i>29/09/2017</small>.<br/>\n								</div>\n							</td>\n						</tr>\n						<tr>\n							\n						</tr>\n				</table>', 0, 1, 2, 0, 1506657562, 0, 137),
(60, 22, 3, 0, '', '5', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 22 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :29/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000019\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Thiệp mời</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"100\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 3, 0, 1506658079, 0, 137),
(61, 23, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 23 - CT-2017000020 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 29/09/2017 11:23</span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày hoàn thành : </span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\"  style=\"min-width:800px;\">\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Catalogue</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>4A0(Khổ lớn)</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1506659000, 0, 114),
(62, 5, 14, 0, '', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 5 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :16/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :30/09/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000005\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue-Brochure</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Lịch-thiệp</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A5\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table><table class=\"table table-no-border table-ol-3w table-hover tabnhan notenhan\" style=\"max-width: 500px;\">\n						<tr><td colspan=\"2\" style=\"padding:5px;\">\n							 <span style=\"color:#903030;font-weight: 800;font-size:16px\">Ghi chú cho đơn hàng </span>\n						</td></tr>\n						<tr>\n							<td colspan=\"2\">\n								<div class=\"contentnote\" style=\"color:#f00; font-weight:600;font-size:14px\">\n								<span class=\"kytuad\" style=\"color: #000;\">Hoàng Trọng Nghĩa</span>Nhádn<small style=\"color: #000;\"><i class=\"fa fa-clock-o\"></i>29/09/2017</small>.<br/>\n								</div>\n							</td>\n						</tr>\n						<tr>\n							\n						</tr>\n				</table>', 0, 1, 1, 0, 1506659044, 0, 114),
(63, 23, 3, 0, '', '4', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 23 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :29/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000020\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"4A0(Khổ lớn)\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 2, 0, 1506659112, 0, 114),
(64, 23, 3, 0, '', '5', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 23 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :29/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000020\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"4A0(Khổ lớn)\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 3, 0, 1506659216, 0, 115),
(65, 24, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 24 - CT-2017000020 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 29/09/2017 11:27</span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày hoàn thành : </span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\"  style=\"min-width:800px;\">\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Giấy viết thư</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>50x20x10</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>2.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">2</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Profile</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>50x20x10</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>2.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">3</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Lịch_RS</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A5</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>100</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">4</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Bao bì giấy_RS</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>100</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">5</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Thiệp mời_RS</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A6</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>100</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">6</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Name Card_RS</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A8</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>100</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1506659261, 0, 129),
(66, 25, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 25 - CT-2017000021 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 29/09/2017 11:31</span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày hoàn thành : 19/10/2017</span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\"  style=\"min-width:800px;\">\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Brochure</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>100</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">2</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Catalogue</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>50x90x20cm</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>10</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1506659469, 0, 129),
(67, 4, 3, 0, '', '6', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 4 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :16/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :30/09/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000004\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue-Brochure</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A2\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 4, 0, 1506659484, 0, 117),
(68, 4, 3, 0, '', '7', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 4 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :16/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :30/09/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000004\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue-Brochure</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A2\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 5, 0, 1506659535, 0, 118);
INSERT INTO `olala3w_calendar` (`calendar_id`, `exhibition_id`, `type`, `level`, `to_personal`, `to_role`, `to_agency`, `supervisor`, `note`, `content`, `report_user`, `is_active`, `status`, `disable`, `created_time`, `modified_time`, `user_id`) VALUES
(69, 8, 3, 0, '', '8', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 8 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :16/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :20/09/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000007\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Lịch-thiệp</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"50\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Banner</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A2\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"5\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 6, 0, 1506659614, 0, 124),
(70, 25, 14, 0, '', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 25 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :29/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :29/09/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000021\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Lịch</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A5\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"50\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Thiệp mời</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A1\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"30\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table><table class=\"table table-no-border table-ol-3w table-hover tabnhan notenhan\" style=\"max-width: 500px;\">\n						<tr><td colspan=\"2\" style=\"padding:5px;\">\n							 <span style=\"color:#903030;font-weight: 800;font-size:16px\">Ghi chú cho đơn hàng </span>\n						</td></tr>\n						<tr>\n							<td colspan=\"2\">\n								<div class=\"contentnote\" style=\"color:#f00; font-weight:600;font-size:14px\">\n								<span class=\"kytuad\" style=\"color: #000;\">Trần Lê Qúy Thuận</span>Thiết kế thêm bản cho mặt hàng catalogue<small style=\"color: #000;\"><i class=\"fa fa-clock-o\"></i>29/09/2017</small>.<br/>\n								</div>\n							</td>\n						</tr>\n						<tr>\n							\n						</tr>\n				</table>', 0, 1, 1, 0, 1506659686, 0, 129),
(71, 20, 3, 0, '', '0', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 20 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :29/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :29/09/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000017\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Tem</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A3\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 12, 0, 1506659725, 0, 125),
(72, 25, 3, 0, '', '4', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 25 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :29/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :29/09/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000021\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Lịch</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A5\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"50\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Thiệp mời</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A1\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"30\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 2, 0, 1506659825, 0, 129),
(73, 25, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 25 - CT-2017000021 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 30/09/2017 09:18</span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày hoàn thành : </span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\"  style=\"min-width:800px;\">\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Túi giấy</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A0 (Khổ lớn)</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>200</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1506737899, 0, 155),
(74, 25, 3, 0, '', '4', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 25 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :30/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000021\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Túi giấy</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A0 (Khổ lớn)\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"200\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 2, 0, 1506738058, 0, 155),
(75, 25, 11, 0, '157', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 25 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :30/09/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div><table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Túi giấy</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A0 (Khổ lớn)\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"200\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 2, 0, 1506754602, 0, 156),
(76, 16, 16, 0, '1', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 110px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">BÁO CÁO THÀNH PHẨM</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 16 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :28/09/2017</span>-\n			<span style=\"color: #111;font-size:16px; \">Ngày hoàn thành :30/09/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\" style=\"padding-top: 5px;\">\n			<label style=\"margin-left: 5px;display: inline-block;\">Mã đơn hàng:</label> <div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" readonly type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000014\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			</div>\n			</div>\n			\n			<div class=\"col-md-6 col-sm-8 col-xs-12 custumcheckbox\">\n			<div class=\"row text-right\">\n			<div class=\"col-md-12 col-sm-12 col-xs-12 radiobot\" style=\"text-align: right;\">\n			<div class=\"checkbox checkbox-danger\">\n			<input id=\"checkbox6\" type=\"checkbox\" onclick=\"return false;\" >\n			<label for=\"checkbox6\">Cần gấp</label>\n			</div>\n			<div class=\"checkbox checkbox-success\">\n			<input id=\"checkbox3\" type=\"checkbox\" onclick=\"return false;\" >\n			<label for=\"checkbox3\"> Đến lấy </label></div>\n			</div>\n			</div>\n			</div>\n			</div>\n			</div><div class=\"row\" style=\"margin-top: 10px; padding-left: 20px; padding-right: 20px;\">\n			<div class=\"col-md-2 col-sm-6 col-xs-12\"><label>Tên công ty</label></div>\n			<div class=\"col-md-4 col-sm-6 col-xs-12\"><input readonly class=\"form-control\"  type=\"text\"  value=\"ABC Bakery\" />\n			</div>\n			<div class=\"col-md-2 col-sm-6 col-xs-12\"><label>Mã số thuế</label></div>\n			<div class=\"col-md-4 col-sm-6 col-xs-12\"><input readonly class=\"form-control\"  type=\"text\"  value=\"8A7858\" />\n			</div></div><div class=\"row\" style=\"margin-top: 10px; padding-left: 20px; padding-right: 20px;\">\n			<div class=\"col-md-2 col-sm-6 col-xs-12\"><label>Tên khách hàng</label></div>\n			<div class=\"col-md-4 col-sm-6 col-xs-12\"><input readonly class=\"form-control\" name=\"ten\" type=\"text\"  value=\"Lê Thủy\" />\n			</div>\n			<div class=\"col-md-2 col-sm-6 col-xs-12\"><label>Số điện thoại</label></div>\n			<div class=\"col-md-4 col-sm-6 col-xs-12\">\n			<input class=\"form-control\" type=\"text\" readonly value=\"0914555666\" />\n			</div>	\n			</div>\n			<div class=\"row\" style=\"margin-top: 10px; padding-left: 20px; padding-right: 20px;\">\n			<div class=\"col-md-2 col-sm-6 col-xs-12\"><label>Email</label></div>\n			<div class=\"col-md-4 col-sm-6 col-xs-12\"><input readonly class=\"form-control\" name=\"email\" type=\"text\"  value=\"thuyle@gmail.com\" />\n			</div>\n			<div class=\"col-md-2 col-sm-6 col-xs-12\"><label>Địa chỉ</label></div>\n			<div class=\"col-md-4 col-sm-6 col-xs-12\">\n			<input class=\"form-control\" type=\"text\" readonly value=\"40 Lê Duẩn\" />\n			</div>	\n			</div><div class=\"modal-body custummodel\">\n			<div class=\"row panel-heading thantran\" style=\"margin-top:38px; margin-left: 0; margin-right: 0\">\n			<table class=\"table table-no-border table-ol-3w table-hover\" id=\"orderlist\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng đơn hàng</label></th>\n			\n			<th><label class=\"form-lb-tp\">Số lượng thực tế in</label></th>\n			\n			<th><label class=\"form-lb-tp\">Số lượng dư</label></th>\n			\n			<th><label class=\"form-lb-tp\">Hình ảnh sản phẩm</label></th>\n\n			<th><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>			\n					\n\n					</td>\n\n					<td><label class=\"form-lb-tp product\"></label></td>\n\n					<td><label class=\"form-lb-tp size\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluongin\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control sparenumber\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"999.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n						<div>\n						\n						<div class=\"col-md-3 col-sm-4 col-xs-12\" style=\"position: relative;\"><div class=\"photo-show\"><div class=\"img\"><a href=\"/uploads/order_items/full_1506912874_bf4ced25d5ac3e4d6d3f8ed44da01fe5.jpg\" data-gallery><img src=\"/uploads/order_items/thumb_full_1506912874_bf4ced25d5ac3e4d6d3f8ed44da01fe5.jpg\" title=\"\" class=\"file-preview-image\" /></a></div></div></div>\n						</div>\n						<div style=\"height: 10px\">\n						</div>	\n						\n					</td>\n					<td>\n					</td>\n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>			\n					\n\n					</td>\n\n					<td><label class=\"form-lb-tp product\"></label></td>\n\n					<td><label class=\"form-lb-tp size\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluongin\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control sparenumber\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"999.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n						<div>\n						\n						<div class=\"col-md-3 col-sm-4 col-xs-12\" style=\"position: relative;\"><div class=\"photo-show\"><div class=\"img\"><a href=\"/uploads/order_items/sp_1506652353_e3f9bad208771652b5c4ac3e5f538f5c.jpg\" data-gallery><img src=\"/uploads/order_items/thumb_sp_1506652353_e3f9bad208771652b5c4ac3e5f538f5c.jpg\" title=\"\" class=\"file-preview-image\" /></a></div></div></div>\n						</div>\n						<div style=\"height: 10px\">\n						</div>	\n						\n					</td>\n					<td>\n					</td>\n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">3</label>			\n					\n\n					</td>\n\n					<td><label class=\"form-lb-tp product\"></label></td>\n\n					<td><label class=\"form-lb-tp size\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluongin\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"11.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control sparenumber\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n						<div>\n						\n						<div class=\"col-md-3 col-sm-4 col-xs-12\" style=\"position: relative;\"><div class=\"photo-show\"><div class=\"img\"><a href=\"/uploads/order_items/sp_1506652356_e2246c442a74513c4feb0894277b3202.jpg\" data-gallery><img src=\"/uploads/order_items/thumb_sp_1506652356_e2246c442a74513c4feb0894277b3202.jpg\" title=\"\" class=\"file-preview-image\" /></a></div></div></div>\n						</div>\n						<div style=\"height: 10px\">\n						</div>	\n						\n					</td>\n					<td>\n					</td>\n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">4</label>			\n					\n\n					</td>\n\n					<td><label class=\"form-lb-tp product\"></label></td>\n\n					<td><label class=\"form-lb-tp size\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A5\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluongin\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control sparenumber\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"9.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n						<div>\n						\n						<div class=\"col-md-3 col-sm-4 col-xs-12\" style=\"position: relative;\"><div class=\"photo-show\"><div class=\"img\"><a href=\"/uploads/order_items/sp_1506936288_88d92e8cca1e2160f2fc420f3a3d0008.jpg\" data-gallery><img src=\"/uploads/order_items/thumb_sp_1506936288_88d92e8cca1e2160f2fc420f3a3d0008.jpg\" title=\"\" class=\"file-preview-image\" /></a></div></div></div>\n						</div>\n						<div style=\"height: 10px\">\n						</div>	\n						\n					</td>\n					<td>\n					</td>\n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">5</label>			\n					\n\n					</td>\n\n					<td><label class=\"form-lb-tp product\"></label></td>\n\n					<td><label class=\"form-lb-tp size\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluongin\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"2.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control sparenumber\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n						<div>\n						\n						<div class=\"col-md-3 col-sm-4 col-xs-12\" style=\"position: relative;\"><div class=\"photo-show\"><div class=\"img\"><a href=\"/uploads/order_items/sp_1506652359_67a23a6a02f9ec0ff21b3caace0e3d06.jpg\" data-gallery><img src=\"/uploads/order_items/thumb_sp_1506652359_67a23a6a02f9ec0ff21b3caace0e3d06.jpg\" title=\"\" class=\"file-preview-image\" /></a></div></div></div>\n						</div>\n						<div style=\"height: 10px\">\n						</div>	\n						\n					</td>\n					<td>\n					</td>\n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">6</label>			\n					\n\n					</td>\n\n					<td><label class=\"form-lb-tp product\"></label></td>\n\n					<td><label class=\"form-lb-tp size\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluongin\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"2.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control sparenumber\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n						<div>\n						\n						<div class=\"col-md-3 col-sm-4 col-xs-12\" style=\"position: relative;\"><div class=\"photo-show\"><div class=\"img\"><a href=\"/uploads/order_items/full_1506912879_d8764506b2902c849a6e644956bfaebd.jpg\" data-gallery><img src=\"/uploads/order_items/thumb_full_1506912879_d8764506b2902c849a6e644956bfaebd.jpg\" title=\"\" class=\"file-preview-image\" /></a></div></div></div>\n						</div>\n						<div style=\"height: 10px\">\n						</div>	\n						\n					</td>\n					<td>\n					</td>\n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">7</label>			\n					\n\n					</td>\n\n					<td><label class=\"form-lb-tp product\"></label></td>\n\n					<td><label class=\"form-lb-tp size\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A5\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluongin\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"2.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control sparenumber\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n						<div>\n						\n						<div class=\"col-md-3 col-sm-4 col-xs-12\" style=\"position: relative;\"><div class=\"photo-show\"><div class=\"img\"><a href=\"/uploads/order_items/sp_1506652362_c966fa297fba5cbfe92165a4c11b93e5.jpg\" data-gallery><img src=\"/uploads/order_items/thumb_sp_1506652362_c966fa297fba5cbfe92165a4c11b93e5.jpg\" title=\"\" class=\"file-preview-image\" /></a></div></div></div>\n						</div>\n						<div style=\"height: 10px\">\n						</div>	\n						\n					</td>\n					<td>\n					</td>\n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">8</label>			\n					\n\n					</td>\n\n					<td><label class=\"form-lb-tp product\"></label></td>\n\n					<td><label class=\"form-lb-tp size\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluongin\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"2.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control sparenumber\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n						<div>\n						\n						<div class=\"col-md-3 col-sm-4 col-xs-12\" style=\"position: relative;\"><div class=\"photo-show\"><div class=\"img\"><a href=\"/uploads/order_items/sp_1506652367_8940119d06b2251de451c4406bb004cc.jpg\" data-gallery><img src=\"/uploads/order_items/thumb_sp_1506652367_8940119d06b2251de451c4406bb004cc.jpg\" title=\"\" class=\"file-preview-image\" /></a></div></div></div>\n						</div>\n						<div style=\"height: 10px\">\n						</div>	\n						\n					</td>\n					<td>\n					</td>\n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">9</label>			\n					\n\n					</td>\n\n					<td><label class=\"form-lb-tp product\"></label></td>\n\n					<td><label class=\"form-lb-tp size\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluongin\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"2.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control sparenumber\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n						<div>\n						\n						<div class=\"col-md-3 col-sm-4 col-xs-12\" style=\"position: relative;\"><div class=\"photo-show\"><div class=\"img\"><a href=\"/uploads/order_items/full_1506912883_8a839ccf448f7111675fae5cf026b187.jpg\" data-gallery><img src=\"/uploads/order_items/thumb_full_1506912883_8a839ccf448f7111675fae5cf026b187.jpg\" title=\"\" class=\"file-preview-image\" /></a></div></div></div>\n						</div>\n						<div style=\"height: 10px\">\n						</div>	\n						\n					</td>\n					<td>\n					</td>\n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">10</label>			\n					\n\n					</td>\n\n					<td><label class=\"form-lb-tp product\"></label></td>\n\n					<td><label class=\"form-lb-tp size\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A3\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluongin\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"0\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control sparenumber\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"0\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n						<div>\n						\n						<div class=\"col-md-3 col-sm-4 col-xs-12\" style=\"position: relative;\"><div class=\"photo-show\"><div class=\"img\"><a href=\"/uploads/order_items/full_1506912889_936c894d5560793cc6ce2bf679ae7754.jpg\" data-gallery><img src=\"/uploads/order_items/thumb_full_1506912889_936c894d5560793cc6ce2bf679ae7754.jpg\" title=\"\" class=\"file-preview-image\" /></a></div></div></div>\n						</div>\n						<div style=\"height: 10px\">\n						</div>	\n						\n					</td>\n					<td>\n					</td>\n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">11</label>			\n					\n\n					</td>\n\n					<td><label class=\"form-lb-tp product\"></label></td>\n\n					<td><label class=\"form-lb-tp size\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A8\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluongin\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"0\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control sparenumber\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"0\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n						<div>\n						\n						<div class=\"col-md-3 col-sm-4 col-xs-12\" style=\"position: relative;\"><div class=\"photo-show\"><div class=\"img\"><a href=\"/uploads/order_items/full_1506912893_fd9aff8885d6885964479324f315ea0f.jpg\" data-gallery><img src=\"/uploads/order_items/thumb_full_1506912893_fd9aff8885d6885964479324f315ea0f.jpg\" title=\"\" class=\"file-preview-image\" /></a></div></div></div>\n						</div>\n						<div style=\"height: 10px\">\n						</div>	\n						\n					</td>\n					<td>\n					</td>\n\n				</tr></table>\n			 <div id=\"blueimp-gallery\" class=\"blueimp-gallery blueimp-gallery-controls\">\n				<div class=\"slides\"></div>\n				<h3 class=\"title\"></h3>\n				<a class=\"prev\">‹</a>\n				<a class=\"next\">›</a>\n				<a class=\"close\">×</a>\n				<a class=\"play-pause\"></a>\n				<ol class=\"indicator\"></ol>\n			</div> </div></div>', 0, 1, 5, 0, 1506996290, 0, 162),
(77, 26, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 26 - CT-2017000022 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 04/10/2017 16:19</span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày hoàn thành : 25/11/2017</span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\"  style=\"min-width:800px;\">\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Poster</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>100</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">2</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Brochure</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>10</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1507108781, 0, 150),
(78, 26, 3, 0, '', '4', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 26 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :04/10/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :25/11/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Poster</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Brochure</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 2, 0, 1507108799, 0, 150);
INSERT INTO `olala3w_calendar` (`calendar_id`, `exhibition_id`, `type`, `level`, `to_personal`, `to_role`, `to_agency`, `supervisor`, `note`, `content`, `report_user`, `is_active`, `status`, `disable`, `created_time`, `modified_time`, `user_id`) VALUES
(79, 26, 3, 0, '', '5', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 26 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :04/10/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :25/11/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Poster</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Brochure</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 3, 0, 1507108909, 0, 161),
(80, 27, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 27 - CT-2017000023 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 05/10/2017 14:17</span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày hoàn thành : </span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\"  style=\"min-width:800px;\">\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Túi giấy</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A1</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1507187854, 0, 150),
(81, 27, 3, 0, '', '4', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 27 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :05/10/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Túi giấy</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A1\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 2, 0, 1507187890, 0, 150),
(82, 28, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 28 - CT-2017000024 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 05/10/2017 14:19</span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày hoàn thành : </span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\"  style=\"min-width:800px;\">\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Profile_RS</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">2</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Túi giấy_RS</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">3</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Lịch_RS</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A5</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">4</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Bao bì giấy_RS</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1507187959, 0, 150),
(83, 28, 3, 0, '', '4', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 28 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :05/10/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Profile_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Túi giấy_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">3</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Lịch_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A5\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">4</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Bao bì giấy_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 2, 0, 1507188198, 0, 150),
(84, 29, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 29 - CT-2017000025 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 05/10/2017 15:17</span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày hoàn thành : </span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\"  style=\"min-width:800px;\">\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Bao bì giấy_NH</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A3</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>10</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">2</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Lịch_NH</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A5</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>10</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">3</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Menu_NH</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>10</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">4</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Túi giấy_NH</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>10</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1507191438, 0, 1),
(85, 29, 3, 0, '', '4', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 29 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :05/10/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Bao bì giấy_NH</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A3\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Lịch_NH</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A5\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">3</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Menu_NH</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">4</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Túi giấy_NH</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 2, 0, 1507191488, 0, 1),
(86, 28, 14, 0, '', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777<br/> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 28 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :05/10/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Profile_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Túi giấy_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">3</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Lịch_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A5\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">4</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Bao bì giấy_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table><table class=\"table table-no-border table-ol-3w table-hover tabnhan notenhan\" style=\"max-width: 500px;\">\n						<tr><td colspan=\"2\" style=\"padding:5px;\">\n							 <span style=\"color:#903030;font-weight: 800;font-size:16px\">Ghi chú cho đơn hàng </span>\n						</td></tr>\n						<tr>\n							<td colspan=\"2\">\n								<div class=\"contentnote\" style=\"color:#f00; font-weight:600;font-size:14px\">\n								<span class=\"kytuad\" style=\"color: #000;\">Thiều Thanh Xuân</span>anhdqd<small style=\"color: #000;\"><i class=\"fa fa-clock-o\"></i>05/10/2017</small>.<br/>\n								</div>\n							</td>\n						</tr>\n						<tr>\n							\n						</tr>\n				</table>', 0, 1, 2, 0, 1507191548, 0, 158),
(87, 28, 14, 0, '', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777<br/> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 28 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :05/10/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Profile_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Túi giấy_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">3</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Lịch_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A5\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">4</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Bao bì giấy_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table><table class=\"table table-no-border table-ol-3w table-hover tabnhan notenhan\" style=\"max-width: 500px;\">\n						<tr><td colspan=\"2\" style=\"padding:5px;\">\n							 <span style=\"color:#903030;font-weight: 800;font-size:16px\">Ghi chú cho đơn hàng </span>\n						</td></tr>\n						<tr>\n							<td colspan=\"2\">\n								<div class=\"contentnote\" style=\"color:#f00; font-weight:600;font-size:14px\">\n								<span class=\"kytuad\" style=\"color: #000;\">Thiều Thanh Xuân</span>mhdqwb<small style=\"color: #000;\"><i class=\"fa fa-clock-o\"></i>05/10/2017</small>.<br/>\n								</div>\n							</td>\n						</tr>\n						<tr>\n							\n						</tr>\n				</table>', 0, 1, 2, 0, 1507191551, 0, 158),
(88, 29, 11, 0, '157', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 29 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :05/10/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div><table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Bao bì giấy_NH</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A3\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Lịch_NH</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A5\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">3</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Menu_NH</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">4</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Túi giấy_NH</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 2, 0, 1507191990, 0, 158),
(89, 28, 11, 0, '157', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 28 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :05/10/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div><table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Profile_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Túi giấy_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">3</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Lịch_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A5\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">4</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Bao bì giấy_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 2, 0, 1507191996, 0, 158),
(90, 27, 3, 0, '', '5', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 27 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :05/10/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Túi giấy</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A1\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 3, 0, 1507192043, 0, 158),
(91, 30, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 30 - CT-2017000026 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 05/10/2017 15:35</span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày hoàn thành : </span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\"  style=\"min-width:800px;\">\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Tem</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>100</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1507192538, 0, 151),
(92, 30, 3, 0, '', '4', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 30 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :05/10/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :28/10/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Brochure</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A1\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"40\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 2, 0, 1507192611, 0, 151);
INSERT INTO `olala3w_calendar` (`calendar_id`, `exhibition_id`, `type`, `level`, `to_personal`, `to_role`, `to_agency`, `supervisor`, `note`, `content`, `report_user`, `is_active`, `status`, `disable`, `created_time`, `modified_time`, `user_id`) VALUES
(93, 31, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 31 - CT-2017000026 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 05/10/2017 15:37</span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày hoàn thành : </span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\"  style=\"min-width:800px;\">\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Hóa đơn VAT</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>a0</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>10</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1507192628, 0, 153),
(94, 30, 3, 0, '', '0', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 30 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :05/10/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :28/10/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Brochure</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A1\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"40\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 13, 0, 1507192636, 0, 151),
(95, 31, 14, 0, '', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777<br/> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 31 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :05/10/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Hóa đơn VAT</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"a0\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table><table class=\"table table-no-border table-ol-3w table-hover tabnhan notenhan\" style=\"max-width: 500px;\">\n						<tr><td colspan=\"2\" style=\"padding:5px;\">\n							 <span style=\"color:#903030;font-weight: 800;font-size:16px\">Ghi chú cho đơn hàng </span>\n						</td></tr>\n						<tr>\n							<td colspan=\"2\">\n								<div class=\"contentnote\" style=\"color:#f00; font-weight:600;font-size:14px\">\n								<span class=\"kytuad\" style=\"color: #000;\">Nguyễn Thị Lai</span>dhuqwhdq<small style=\"color: #000;\"><i class=\"fa fa-clock-o\"></i>05/10/2017</small>.<br/>\n								</div>\n							</td>\n						</tr>\n						<tr>\n							\n						</tr>\n				</table>', 0, 1, 1, 0, 1507192752, 0, 153),
(96, 31, 14, 0, '', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777<br/> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 31 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :05/10/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Hóa đơn VAT</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"a0\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table><table class=\"table table-no-border table-ol-3w table-hover tabnhan notenhan\" style=\"max-width: 500px;\">\n						<tr><td colspan=\"2\" style=\"padding:5px;\">\n							 <span style=\"color:#903030;font-weight: 800;font-size:16px\">Ghi chú cho đơn hàng </span>\n						</td></tr>\n						<tr>\n							<td colspan=\"2\">\n								<div class=\"contentnote\" style=\"color:#f00; font-weight:600;font-size:14px\">\n								<span class=\"kytuad\" style=\"color: #000;\">Nguyễn Thị Lai</span>hdqwudh<small style=\"color: #000;\"><i class=\"fa fa-clock-o\"></i>05/10/2017</small>.<br/>\n								</div>\n							</td>\n						</tr>\n						<tr>\n							\n						</tr>\n				</table>', 0, 1, 1, 0, 1507192754, 0, 153),
(97, 30, 3, 0, '', '4', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 30 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :05/10/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :28/10/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000026\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Brochure</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A1\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"40\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 2, 0, 1507192802, 0, 151),
(98, 30, 14, 0, '', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777<br/> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 30 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :05/10/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :28/10/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Brochure</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A1\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"40\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table><table class=\"table table-no-border table-ol-3w table-hover tabnhan notenhan\" style=\"max-width: 500px;\">\n						<tr><td colspan=\"2\" style=\"padding:5px;\">\n							 <span style=\"color:#903030;font-weight: 800;font-size:16px\">Ghi chú cho đơn hàng </span>\n						</td></tr>\n						<tr>\n							<td colspan=\"2\">\n								<div class=\"contentnote\" style=\"color:#f00; font-weight:600;font-size:14px\">\n								<span class=\"kytuad\" style=\"color: #000;\">Nguyễn Thảo Viên</span>Đơn hàng này phải giao vào ngày 20/10<small style=\"color: #000;\"><i class=\"fa fa-clock-o\"></i>05/10/2017</small>.<br/>\n								</div>\n							</td>\n						</tr>\n						<tr>\n							\n						</tr>\n				</table>', 0, 1, 2, 0, 1507192824, 0, 151),
(99, 30, 3, 0, '', '0', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 30 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :05/10/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :28/10/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Brochure</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A1\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"40\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 13, 0, 1507192913, 0, 151),
(100, 30, 3, 0, '', '4', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 30 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :05/10/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :28/10/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n			<div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000026\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			\n			</div>\n			</div>				\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Brochure</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A1\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"40\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 2, 0, 1507192920, 0, 151),
(101, 32, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 32 - CT-2017000027 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 05/10/2017 16:02</span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày hoàn thành : </span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\"  style=\"min-width:800px;\">\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Profile_RS</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>100</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">2</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Túi giấy_RS</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>100</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">3</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Lịch_RS</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A5</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>100</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">4</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Bao bì giấy_RS</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>100</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">5</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Thiệp mời_RS</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A6</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>100</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">6</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Name Card_RS</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A8</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>100</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1507194160, 0, 150),
(102, 32, 3, 0, '', '4', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 32 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :05/10/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Profile_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Túi giấy_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">3</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Lịch_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A5\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">4</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Bao bì giấy_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">5</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Thiệp mời_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A6\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">6</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Name Card_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A8\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 2, 0, 1507194177, 0, 150),
(103, 30, 14, 0, '', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777<br/> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 30 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :05/10/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :28/10/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Brochure</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A1\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"40\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table><table class=\"table table-no-border table-ol-3w table-hover tabnhan notenhan\" style=\"max-width: 500px;\">\n						<tr><td colspan=\"2\" style=\"padding:5px;\">\n							 <span style=\"color:#903030;font-weight: 800;font-size:16px\">Ghi chú cho đơn hàng </span>\n						</td></tr>\n						<tr>\n							<td colspan=\"2\">\n								<div class=\"contentnote\" style=\"color:#f00; font-weight:600;font-size:14px\">\n								<span class=\"kytuad\" style=\"color: #000;\">Nguyễn Ngọc Bảo Huy</span>báchasc<small style=\"color: #000;\"><i class=\"fa fa-clock-o\"></i>05/10/2017</small>.<br/>\n								</div>\n							</td>\n						</tr>\n						<tr>\n							\n						</tr>\n				</table>', 0, 1, 2, 0, 1507194200, 0, 160),
(104, 30, 14, 0, '', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777<br/> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 30 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :05/10/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :28/10/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Brochure</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A1\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"40\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table><table class=\"table table-no-border table-ol-3w table-hover tabnhan notenhan\" style=\"max-width: 500px;\">\n						<tr><td colspan=\"2\" style=\"padding:5px;\">\n							 <span style=\"color:#903030;font-weight: 800;font-size:16px\">Ghi chú cho đơn hàng </span>\n						</td></tr>\n						<tr>\n							<td colspan=\"2\">\n								<div class=\"contentnote\" style=\"color:#f00; font-weight:600;font-size:14px\">\n								<span class=\"kytuad\" style=\"color: #000;\">Nguyễn Ngọc Bảo Huy</span>nạd<small style=\"color: #000;\"><i class=\"fa fa-clock-o\"></i>05/10/2017</small>.<br/>\n								</div>\n							</td>\n						</tr>\n						<tr>\n							\n						</tr>\n				</table>', 0, 1, 2, 0, 1507194201, 0, 160),
(105, 30, 14, 0, '', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777<br/> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 30 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :05/10/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :28/10/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Brochure</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A1\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"40\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table><table class=\"table table-no-border table-ol-3w table-hover tabnhan notenhan\" style=\"max-width: 500px;\">\n						<tr><td colspan=\"2\" style=\"padding:5px;\">\n							 <span style=\"color:#903030;font-weight: 800;font-size:16px\">Ghi chú cho đơn hàng </span>\n						</td></tr>\n						<tr>\n							<td colspan=\"2\">\n								<div class=\"contentnote\" style=\"color:#f00; font-weight:600;font-size:14px\">\n								<span class=\"kytuad\" style=\"color: #000;\">Nguyễn Ngọc Bảo Huy</span>ádnasd<small style=\"color: #000;\"><i class=\"fa fa-clock-o\"></i>05/10/2017</small>.<br/>\n								</div>\n							</td>\n						</tr>\n						<tr>\n							\n						</tr>\n				</table>', 0, 1, 2, 0, 1507194202, 0, 160),
(106, 32, 3, 0, '', '5', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 32 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :05/10/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Profile_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Túi giấy_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">3</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Lịch_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A5\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">4</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Bao bì giấy_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">5</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Thiệp mời_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A6\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">6</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Name Card_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A8\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 3, 0, 1507194495, 0, 160);
INSERT INTO `olala3w_calendar` (`calendar_id`, `exhibition_id`, `type`, `level`, `to_personal`, `to_role`, `to_agency`, `supervisor`, `note`, `content`, `report_user`, `is_active`, `status`, `disable`, `created_time`, `modified_time`, `user_id`) VALUES
(107, 32, 3, 0, '', '6', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 32 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :05/10/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Profile_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Túi giấy_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">3</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Lịch_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A5\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">4</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Bao bì giấy_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">5</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Thiệp mời_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A6\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">6</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Name Card_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A8\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 4, 0, 1507194561, 0, 168),
(108, 32, 14, 0, '', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777<br/> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 32 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :05/10/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Profile_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Túi giấy_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">3</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Lịch_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A5\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">4</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Bao bì giấy_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">5</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Thiệp mời_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A6\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">6</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Name Card_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A8\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table><table class=\"table table-no-border table-ol-3w table-hover tabnhan notenhan\" style=\"max-width: 500px;\">\n						<tr><td colspan=\"2\" style=\"padding:5px;\">\n							 <span style=\"color:#903030;font-weight: 800;font-size:16px\">Ghi chú cho đơn hàng </span>\n						</td></tr>\n						<tr>\n							<td colspan=\"2\">\n								<div class=\"contentnote\" style=\"color:#f00; font-weight:600;font-size:14px\">\n								<span class=\"kytuad\" style=\"color: #000;\">Nguyễn Ngọc Bảo Huy</span>nádsa\n<small style=\"color: #000;\"><i class=\"fa fa-clock-o\"></i>05/10/2017</small>.<br/>\n								</div>\n							</td>\n						</tr>\n						<tr>\n							\n						</tr>\n				</table>', 0, 1, 4, 0, 1507194576, 0, 160),
(109, 32, 14, 0, '', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777<br/> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 32 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :05/10/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Profile_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Túi giấy_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">3</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Lịch_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A5\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">4</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Bao bì giấy_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">5</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Thiệp mời_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A6\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">6</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Name Card_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A8\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"100\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table><table class=\"table table-no-border table-ol-3w table-hover tabnhan notenhan\" style=\"max-width: 500px;\">\n						<tr><td colspan=\"2\" style=\"padding:5px;\">\n							 <span style=\"color:#903030;font-weight: 800;font-size:16px\">Ghi chú cho đơn hàng </span>\n						</td></tr>\n						<tr>\n							<td colspan=\"2\">\n								<div class=\"contentnote\" style=\"color:#f00; font-weight:600;font-size:14px\">\n								<span class=\"kytuad\" style=\"color: #000;\">Nguyễn Ngọc Bảo Huy</span>dqwd<small style=\"color: #000;\"><i class=\"fa fa-clock-o\"></i>05/10/2017</small>.<br/>\n								</div>\n							</td>\n						</tr>\n						<tr>\n							\n						</tr>\n				</table>', 0, 1, 4, 0, 1507194587, 0, 160),
(110, 33, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 33 - CT-2017000028 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 07/10/2017 10:06</span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày hoàn thành : </span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\"  style=\"min-width:800px;\">\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Thiệp mời</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A0</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>1.000</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">2</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Thiệp mời</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A0</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>500</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1507345572, 0, 151),
(111, 33, 3, 0, '', '4', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 33 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :07/10/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Thiệp mời</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A0\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Thiệp mời</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A0\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"500\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 2, 0, 1507345646, 0, 151),
(112, 33, 11, 0, '156', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 33 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :07/10/2017</span><br />\n			<span style=\"color: #111;font-size:16px; margin-left: -30%;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div><table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Thiệp mời</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A0\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Thiệp mời</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A0\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"500\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 2, 0, 1507345691, 0, 159),
(113, 30, 14, 0, '', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777<br/> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 30 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :05/10/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :28/10/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Brochure</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A1\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"40\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table><table class=\"table table-no-border table-ol-3w table-hover tabnhan notenhan\" style=\"max-width: 500px;\">\n						<tr><td colspan=\"2\" style=\"padding:5px;\">\n							 <span style=\"color:#903030;font-weight: 800;font-size:16px\">Ghi chú cho đơn hàng </span>\n						</td></tr>\n						<tr>\n							<td colspan=\"2\">\n								<div class=\"contentnote\" style=\"color:#f00; font-weight:600;font-size:14px\">\n								<span class=\"kytuad\" style=\"color: #000;\">Nguyễn Thị Thi</span>https://www.facebook.com/TruongNgocXuan?hc_ref=ARR7SFetkjKbMhB1bvEv3kyQNWAEPVHX4SiF7S6snBDyJZUDEGsWXuiNy7VaO_c4TlA FB cua khach<small style=\"color: #000;\"><i class=\"fa fa-clock-o\"></i>07/10/2017</small>.<br/>\n								</div>\n							</td>\n						</tr>\n						<tr>\n							\n						</tr>\n				</table>', 0, 1, 2, 0, 1507345785, 0, 159),
(114, 30, 14, 0, '', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777<br/> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 30 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :05/10/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :28/10/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Brochure</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A1\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"40\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table><table class=\"table table-no-border table-ol-3w table-hover tabnhan notenhan\" style=\"max-width: 500px;\">\n						<tr><td colspan=\"2\" style=\"padding:5px;\">\n							 <span style=\"color:#903030;font-weight: 800;font-size:16px\">Ghi chú cho đơn hàng </span>\n						</td></tr>\n						<tr>\n							<td colspan=\"2\">\n								<div class=\"contentnote\" style=\"color:#f00; font-weight:600;font-size:14px\">\n								<span class=\"kytuad\" style=\"color: #000;\">Nguyễn Thị Thi</span>lam gap 5000<small style=\"color: #000;\"><i class=\"fa fa-clock-o\"></i>07/10/2017</small>.<br/>\n								</div>\n							</td>\n						</tr>\n						<tr>\n							\n						</tr>\n				</table>', 0, 1, 2, 0, 1507345813, 0, 159),
(115, 29, 14, 0, '', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777<br/> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 29 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :05/10/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Bao bì giấy_NH</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A3\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Lịch_NH</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A5\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">3</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Menu_NH</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">4</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Túi giấy_NH</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table><table class=\"table table-no-border table-ol-3w table-hover tabnhan notenhan\" style=\"max-width: 500px;\">\n						<tr><td colspan=\"2\" style=\"padding:5px;\">\n							 <span style=\"color:#903030;font-weight: 800;font-size:16px\">Ghi chú cho đơn hàng </span>\n						</td></tr>\n						<tr>\n							<td colspan=\"2\">\n								<div class=\"contentnote\" style=\"color:#f00; font-weight:600;font-size:14px\">\n								<span class=\"kytuad\" style=\"color: #000;\">Trương Hoàng Nhân</span>Đơn hang thiết kế trễ chút<small style=\"color: #000;\"><i class=\"fa fa-clock-o\"></i>07/10/2017</small>.<br/>\n								</div>\n							</td>\n						</tr>\n						<tr>\n							\n						</tr>\n				</table>', 0, 1, 2, 0, 1507349528, 0, 157),
(116, 29, 3, 0, '', '5', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 29 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :05/10/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Bao bì giấy_NH</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A3\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Lịch_NH</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A5\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">3</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Menu_NH</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">4</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Túi giấy_NH</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 3, 0, 1507349936, 0, 157),
(117, 28, 3, 0, '', '5', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 28 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :05/10/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Profile_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Túi giấy_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">3</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Lịch_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A5\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">4</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Bao bì giấy_RS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 3, 0, 1507350748, 0, 157);
INSERT INTO `olala3w_calendar` (`calendar_id`, `exhibition_id`, `type`, `level`, `to_personal`, `to_role`, `to_agency`, `supervisor`, `note`, `content`, `report_user`, `is_active`, `status`, `disable`, `created_time`, `modified_time`, `user_id`) VALUES
(118, 16, 14, 0, '', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777<br/> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 16 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :28/09/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :30/09/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Brochure_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Hộp giấy_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">3</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Lịch_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">4</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Thiệp mời_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A5\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">5</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Menu_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">6</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">7</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Poster_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A5\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">8</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Túi giấy_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">9</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Profile_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">10</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Bao bì giấy_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A3\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">11</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Name Card_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A8\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table><table class=\"table table-no-border table-ol-3w table-hover tabnhan notenhan\" style=\"max-width: 500px;\">\n						<tr><td colspan=\"2\" style=\"padding:5px;\">\n							 <span style=\"color:#903030;font-weight: 800;font-size:16px\">Ghi chú cho đơn hàng </span>\n						</td></tr>\n						<tr>\n							<td colspan=\"2\">\n								<div class=\"contentnote\" style=\"color:#f00; font-weight:600;font-size:14px\">\n								<span class=\"kytuad\" style=\"color: #000;\">Trần Thị Huyền Diệu</span>Bị trễ 3 hộp card<small style=\"color: #000;\"><i class=\"fa fa-clock-o\"></i>07/10/2017</small>.<br/>\n								</div>\n							</td>\n						</tr>\n						<tr>\n							\n						</tr>\n				</table>', 0, 1, 5, 0, 1507351222, 0, 163),
(119, 4, 16, 0, '1', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 110px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">BÁO CÁO THÀNH PHẨM</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 4 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :16/09/2017</span>-\n			<span style=\"color: #111;font-size:16px; \">Ngày hoàn thành :30/09/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\" style=\"padding-top: 5px;\">\n			<label style=\"margin-left: 5px;display: inline-block;\">Mã đơn hàng:</label> <div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" readonly type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000004\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			</div>\n			</div>\n			\n			<div class=\"col-md-6 col-sm-8 col-xs-12 custumcheckbox\">\n			<div class=\"row text-right\">\n			<div class=\"col-md-12 col-sm-12 col-xs-12 radiobot\" style=\"text-align: right;\">\n			<div class=\"checkbox checkbox-danger\">\n			<input id=\"checkbox6\" type=\"checkbox\" onclick=\"return false;\" checked=\"checked\">\n			<label for=\"checkbox6\">Cần gấp</label>\n			</div>\n			<div class=\"checkbox checkbox-success\">\n			<input id=\"checkbox3\" type=\"checkbox\" onclick=\"return false;\" checked=\"checked\">\n			<label for=\"checkbox3\"> Đến lấy </label></div>\n			</div>\n			</div>\n			</div>\n			</div>\n			</div><div class=\"row\" style=\"margin-top: 10px; padding-left: 20px; padding-right: 20px;\">\n			<div class=\"col-md-2 col-sm-6 col-xs-12\"><label>Tên công ty</label></div>\n			<div class=\"col-md-4 col-sm-6 col-xs-12\"><input readonly class=\"form-control\"  type=\"text\"  value=\"Điện Nước Vinh Quốc\" />\n			</div>\n			<div class=\"col-md-2 col-sm-6 col-xs-12\"><label>Mã số thuế</label></div>\n			<div class=\"col-md-4 col-sm-6 col-xs-12\"><input readonly class=\"form-control\"  type=\"text\"  value=\"QDNVKWJ\" />\n			</div></div><div class=\"row\" style=\"margin-top: 10px; padding-left: 20px; padding-right: 20px;\">\n			<div class=\"col-md-2 col-sm-6 col-xs-12\"><label>Tên khách hàng</label></div>\n			<div class=\"col-md-4 col-sm-6 col-xs-12\"><input readonly class=\"form-control\" name=\"ten\" type=\"text\"  value=\"Nguyễn Đức Nhân\" />\n			</div>\n			<div class=\"col-md-2 col-sm-6 col-xs-12\"><label>Số điện thoại</label></div>\n			<div class=\"col-md-4 col-sm-6 col-xs-12\">\n			<input class=\"form-control\" type=\"text\" readonly value=\"01679960030\" />\n			</div>	\n			</div>\n			<div class=\"row\" style=\"margin-top: 10px; padding-left: 20px; padding-right: 20px;\">\n			<div class=\"col-md-2 col-sm-6 col-xs-12\"><label>Email</label></div>\n			<div class=\"col-md-4 col-sm-6 col-xs-12\"><input readonly class=\"form-control\" name=\"email\" type=\"text\"  value=\"nhanduc96@gmail.com\" />\n			</div>\n			<div class=\"col-md-2 col-sm-6 col-xs-12\"><label>Địa chỉ</label></div>\n			<div class=\"col-md-4 col-sm-6 col-xs-12\">\n			<input class=\"form-control\" type=\"text\" readonly value=\"Thăng Bình - Quảng Nam\" />\n			</div>	\n			</div><div class=\"modal-body custummodel\">\n			<div class=\"row panel-heading thantran\" style=\"margin-top:38px; margin-left: 0; margin-right: 0\">\n			<table class=\"table table-no-border table-ol-3w table-hover\" id=\"orderlist\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng đơn hàng</label></th>\n			\n			<th><label class=\"form-lb-tp\">Số lượng thực tế in</label></th>\n			\n			<th><label class=\"form-lb-tp\">Số lượng dư</label></th>\n			\n			<th><label class=\"form-lb-tp\">Hình ảnh sản phẩm</label></th>\n\n			<th><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>			\n					\n\n					</td>\n\n					<td><label class=\"form-lb-tp product\"></label></td>\n\n					<td><label class=\"form-lb-tp size\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A2\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluongin\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"20.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control sparenumber\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n						<div>\n						\n						<div class=\"col-md-3 col-sm-4 col-xs-12\" style=\"position: relative;\"><div class=\"photo-show\"><div class=\"img\"><a href=\"/uploads/order_items/sp_1507351370_3d3618821fadb67bfd3fd487369e924c.png\" data-gallery><img src=\"/uploads/order_items/thumb_sp_1507351370_3d3618821fadb67bfd3fd487369e924c.png\" title=\"\" class=\"file-preview-image\" /></a></div></div></div>\n						</div>\n						<div style=\"height: 10px\">\n						</div>	\n						\n					</td>\n					<td>\n					</td>\n\n				</tr></table>\n			 <div id=\"blueimp-gallery\" class=\"blueimp-gallery blueimp-gallery-controls\">\n				<div class=\"slides\"></div>\n				<h3 class=\"title\"></h3>\n				<a class=\"prev\">‹</a>\n				<a class=\"next\">›</a>\n				<a class=\"close\">×</a>\n				<a class=\"play-pause\"></a>\n				<ol class=\"indicator\"></ol>\n			</div> </div></div>', 0, 1, 5, 0, 1507351381, 0, 163),
(120, 16, 16, 0, '1', '', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 110px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">BÁO CÁO THÀNH PHẨM</span><br>\n			<span style=\"color: #111;font-size:16px;\">Số : 16 </span><br/>\n			<span style=\"color: #111;font-size:16px;\">Ngày tạo :28/09/2017</span>-\n			<span style=\"color: #111;font-size:16px; \">Ngày hoàn thành :30/09/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n			<div class=\"col-md-6 col-sm-4 col-xs-12\" style=\"padding-top: 5px;\">\n			<label style=\"margin-left: 5px;display: inline-block;\">Mã đơn hàng:</label> <div style=\"display: inline-block;position: relative;\">\n			<span style=\"display: inline-block;position: absolute;left: 10px;top: 5px;\">CODE</span>\n			<input class=\"form-control formicon\" style=\"padding-left: 50px;\" readonly type=\"text\" name=\"symbols\" maxlength=\"250\" autocomplete=\"off\" disabled=\"\" value=\"CT-2017000014\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Mã hàng tự tăng\" >\n			</div>\n			</div>\n			\n			<div class=\"col-md-6 col-sm-8 col-xs-12 custumcheckbox\">\n			<div class=\"row text-right\">\n			<div class=\"col-md-12 col-sm-12 col-xs-12 radiobot\" style=\"text-align: right;\">\n			<div class=\"checkbox checkbox-danger\">\n			<input id=\"checkbox6\" type=\"checkbox\" onclick=\"return false;\" >\n			<label for=\"checkbox6\">Cần gấp</label>\n			</div>\n			<div class=\"checkbox checkbox-success\">\n			<input id=\"checkbox3\" type=\"checkbox\" onclick=\"return false;\" >\n			<label for=\"checkbox3\"> Đến lấy </label></div>\n			</div>\n			</div>\n			</div>\n			</div>\n			</div><div class=\"row\" style=\"margin-top: 10px; padding-left: 20px; padding-right: 20px;\">\n			<div class=\"col-md-2 col-sm-6 col-xs-12\"><label>Tên công ty</label></div>\n			<div class=\"col-md-4 col-sm-6 col-xs-12\"><input readonly class=\"form-control\"  type=\"text\"  value=\"ABC Bakery\" />\n			</div>\n			<div class=\"col-md-2 col-sm-6 col-xs-12\"><label>Mã số thuế</label></div>\n			<div class=\"col-md-4 col-sm-6 col-xs-12\"><input readonly class=\"form-control\"  type=\"text\"  value=\"8A7858\" />\n			</div></div><div class=\"row\" style=\"margin-top: 10px; padding-left: 20px; padding-right: 20px;\">\n			<div class=\"col-md-2 col-sm-6 col-xs-12\"><label>Tên khách hàng</label></div>\n			<div class=\"col-md-4 col-sm-6 col-xs-12\"><input readonly class=\"form-control\" name=\"ten\" type=\"text\"  value=\"Lê Thủy\" />\n			</div>\n			<div class=\"col-md-2 col-sm-6 col-xs-12\"><label>Số điện thoại</label></div>\n			<div class=\"col-md-4 col-sm-6 col-xs-12\">\n			<input class=\"form-control\" type=\"text\" readonly value=\"0914555666\" />\n			</div>	\n			</div>\n			<div class=\"row\" style=\"margin-top: 10px; padding-left: 20px; padding-right: 20px;\">\n			<div class=\"col-md-2 col-sm-6 col-xs-12\"><label>Email</label></div>\n			<div class=\"col-md-4 col-sm-6 col-xs-12\"><input readonly class=\"form-control\" name=\"email\" type=\"text\"  value=\"thuyle@gmail.com\" />\n			</div>\n			<div class=\"col-md-2 col-sm-6 col-xs-12\"><label>Địa chỉ</label></div>\n			<div class=\"col-md-4 col-sm-6 col-xs-12\">\n			<input class=\"form-control\" type=\"text\" readonly value=\"40 Lê Duẩn\" />\n			</div>	\n			</div><div class=\"modal-body custummodel\">\n			<div class=\"row panel-heading thantran\" style=\"margin-top:38px; margin-left: 0; margin-right: 0\">\n			<table class=\"table table-no-border table-ol-3w table-hover\" id=\"orderlist\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng đơn hàng</label></th>\n			\n			<th><label class=\"form-lb-tp\">Số lượng thực tế in</label></th>\n			\n			<th><label class=\"form-lb-tp\">Số lượng dư</label></th>\n			\n			<th><label class=\"form-lb-tp\">Hình ảnh sản phẩm</label></th>\n\n			<th><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>			\n					\n\n					</td>\n\n					<td><label class=\"form-lb-tp product\"></label></td>\n\n					<td><label class=\"form-lb-tp size\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluongin\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control sparenumber\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"999.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n						<div>\n						\n						<div class=\"col-md-3 col-sm-4 col-xs-12\" style=\"position: relative;\"><div class=\"photo-show\"><div class=\"img\"><a href=\"/uploads/order_items/full_1506912874_bf4ced25d5ac3e4d6d3f8ed44da01fe5.jpg\" data-gallery><img src=\"/uploads/order_items/thumb_full_1506912874_bf4ced25d5ac3e4d6d3f8ed44da01fe5.jpg\" title=\"\" class=\"file-preview-image\" /></a></div></div></div>\n						</div>\n						<div style=\"height: 10px\">\n						</div>	\n						\n					</td>\n					<td>\n					</td>\n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>			\n					\n\n					</td>\n\n					<td><label class=\"form-lb-tp product\"></label></td>\n\n					<td><label class=\"form-lb-tp size\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluongin\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control sparenumber\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"999.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n						<div>\n						\n						<div class=\"col-md-3 col-sm-4 col-xs-12\" style=\"position: relative;\"><div class=\"photo-show\"><div class=\"img\"><a href=\"/uploads/order_items/sp_1506998117_7442d7b84be03ac1c413e5df8929501d.jpg\" data-gallery><img src=\"/uploads/order_items/thumb_sp_1506998117_7442d7b84be03ac1c413e5df8929501d.jpg\" title=\"\" class=\"file-preview-image\" /></a></div></div></div>\n						</div>\n						<div style=\"height: 10px\">\n						</div>	\n						\n					</td>\n					<td>\n					</td>\n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">3</label>			\n					\n\n					</td>\n\n					<td><label class=\"form-lb-tp product\"></label></td>\n\n					<td><label class=\"form-lb-tp size\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluongin\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"11.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control sparenumber\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n						<div>\n						\n						<div class=\"col-md-3 col-sm-4 col-xs-12\" style=\"position: relative;\"><div class=\"photo-show\"><div class=\"img\"><a href=\"/uploads/order_items/sp_1506998132_d88b746bc8b873fa47097287634c4bee.jpg\" data-gallery><img src=\"/uploads/order_items/thumb_sp_1506998132_d88b746bc8b873fa47097287634c4bee.jpg\" title=\"\" class=\"file-preview-image\" /></a></div></div></div>\n						</div>\n						<div style=\"height: 10px\">\n						</div>	\n						\n					</td>\n					<td>\n					</td>\n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">4</label>			\n					\n\n					</td>\n\n					<td><label class=\"form-lb-tp product\"></label></td>\n\n					<td><label class=\"form-lb-tp size\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A5\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluongin\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control sparenumber\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"9.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n						<div>\n						\n						<div class=\"col-md-3 col-sm-4 col-xs-12\" style=\"position: relative;\"><div class=\"photo-show\"><div class=\"img\"><a href=\"/uploads/order_items/sp_1506998141_c70e223e399fcb6eeb85884cab229a1b.jpg\" data-gallery><img src=\"/uploads/order_items/thumb_sp_1506998141_c70e223e399fcb6eeb85884cab229a1b.jpg\" title=\"\" class=\"file-preview-image\" /></a></div></div></div>\n						</div>\n						<div style=\"height: 10px\">\n						</div>	\n						\n					</td>\n					<td>\n					</td>\n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">5</label>			\n					\n\n					</td>\n\n					<td><label class=\"form-lb-tp product\"></label></td>\n\n					<td><label class=\"form-lb-tp size\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluongin\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"2.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control sparenumber\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n						<div>\n						\n						<div class=\"col-md-3 col-sm-4 col-xs-12\" style=\"position: relative;\"><div class=\"photo-show\"><div class=\"img\"><a href=\"/uploads/order_items/sp_1506652359_67a23a6a02f9ec0ff21b3caace0e3d06.jpg\" data-gallery><img src=\"/uploads/order_items/thumb_sp_1506652359_67a23a6a02f9ec0ff21b3caace0e3d06.jpg\" title=\"\" class=\"file-preview-image\" /></a></div></div></div>\n						</div>\n						<div style=\"height: 10px\">\n						</div>	\n						\n					</td>\n					<td>\n					</td>\n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">6</label>			\n					\n\n					</td>\n\n					<td><label class=\"form-lb-tp product\"></label></td>\n\n					<td><label class=\"form-lb-tp size\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluongin\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"2.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control sparenumber\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n						<div>\n						\n						<div class=\"col-md-3 col-sm-4 col-xs-12\" style=\"position: relative;\"><div class=\"photo-show\"><div class=\"img\"><a href=\"/uploads/order_items/full_1506912879_d8764506b2902c849a6e644956bfaebd.jpg\" data-gallery><img src=\"/uploads/order_items/thumb_full_1506912879_d8764506b2902c849a6e644956bfaebd.jpg\" title=\"\" class=\"file-preview-image\" /></a></div></div></div>\n						</div>\n						<div style=\"height: 10px\">\n						</div>	\n						\n					</td>\n					<td>\n					</td>\n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">7</label>			\n					\n\n					</td>\n\n					<td><label class=\"form-lb-tp product\"></label></td>\n\n					<td><label class=\"form-lb-tp size\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A5\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluongin\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"2.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control sparenumber\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n						<div>\n						\n						<div class=\"col-md-3 col-sm-4 col-xs-12\" style=\"position: relative;\"><div class=\"photo-show\"><div class=\"img\"><a href=\"/uploads/order_items/sp_1506652362_c966fa297fba5cbfe92165a4c11b93e5.jpg\" data-gallery><img src=\"/uploads/order_items/thumb_sp_1506652362_c966fa297fba5cbfe92165a4c11b93e5.jpg\" title=\"\" class=\"file-preview-image\" /></a></div></div></div>\n						</div>\n						<div style=\"height: 10px\">\n						</div>	\n						\n					</td>\n					<td>\n					</td>\n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">8</label>			\n					\n\n					</td>\n\n					<td><label class=\"form-lb-tp product\"></label></td>\n\n					<td><label class=\"form-lb-tp size\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluongin\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"2.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control sparenumber\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n						<div>\n						\n						<div class=\"col-md-3 col-sm-4 col-xs-12\" style=\"position: relative;\"><div class=\"photo-show\"><div class=\"img\"><a href=\"/uploads/order_items/sp_1506652367_8940119d06b2251de451c4406bb004cc.jpg\" data-gallery><img src=\"/uploads/order_items/thumb_sp_1506652367_8940119d06b2251de451c4406bb004cc.jpg\" title=\"\" class=\"file-preview-image\" /></a></div></div></div>\n						</div>\n						<div style=\"height: 10px\">\n						</div>	\n						\n					</td>\n					<td>\n					</td>\n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">9</label>			\n					\n\n					</td>\n\n					<td><label class=\"form-lb-tp product\"></label></td>\n\n					<td><label class=\"form-lb-tp size\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluongin\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"2.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control sparenumber\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n						<div>\n						\n						<div class=\"col-md-3 col-sm-4 col-xs-12\" style=\"position: relative;\"><div class=\"photo-show\"><div class=\"img\"><a href=\"/uploads/order_items/full_1506912883_8a839ccf448f7111675fae5cf026b187.jpg\" data-gallery><img src=\"/uploads/order_items/thumb_full_1506912883_8a839ccf448f7111675fae5cf026b187.jpg\" title=\"\" class=\"file-preview-image\" /></a></div></div></div>\n						</div>\n						<div style=\"height: 10px\">\n						</div>	\n						\n					</td>\n					<td>\n					</td>\n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">10</label>			\n					\n\n					</td>\n\n					<td><label class=\"form-lb-tp product\"></label></td>\n\n					<td><label class=\"form-lb-tp size\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A3\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluongin\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"0\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control sparenumber\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"0\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n						<div>\n						\n						<div class=\"col-md-3 col-sm-4 col-xs-12\" style=\"position: relative;\"><div class=\"photo-show\"><div class=\"img\"><a href=\"/uploads/order_items/full_1506912889_936c894d5560793cc6ce2bf679ae7754.jpg\" data-gallery><img src=\"/uploads/order_items/thumb_full_1506912889_936c894d5560793cc6ce2bf679ae7754.jpg\" title=\"\" class=\"file-preview-image\" /></a></div></div></div>\n						</div>\n						<div style=\"height: 10px\">\n						</div>	\n						\n					</td>\n					<td>\n					</td>\n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">11</label>			\n					\n\n					</td>\n\n					<td><label class=\"form-lb-tp product\"></label></td>\n\n					<td><label class=\"form-lb-tp size\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A8\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" />\n\n					</label>\n\n					</td>\n\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluongin\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"0\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n					\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control sparenumber\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"0\" />\n\n					</label>\n					\n					</td>\n					\n					<td>\n						<div>\n						\n						<div class=\"col-md-3 col-sm-4 col-xs-12\" style=\"position: relative;\"><div class=\"photo-show\"><div class=\"img\"><a href=\"/uploads/order_items/full_1506912893_fd9aff8885d6885964479324f315ea0f.jpg\" data-gallery><img src=\"/uploads/order_items/thumb_full_1506912893_fd9aff8885d6885964479324f315ea0f.jpg\" title=\"\" class=\"file-preview-image\" /></a></div></div></div>\n						</div>\n						<div style=\"height: 10px\">\n						</div>	\n						\n					</td>\n					<td>\n					</td>\n\n				</tr></table>\n			 <div id=\"blueimp-gallery\" class=\"blueimp-gallery blueimp-gallery-controls\">\n				<div class=\"slides\"></div>\n				<h3 class=\"title\"></h3>\n				<a class=\"prev\">‹</a>\n				<a class=\"next\">›</a>\n				<a class=\"close\">×</a>\n				<a class=\"play-pause\"></a>\n				<ol class=\"indicator\"></ol>\n			</div> </div></div>', 0, 1, 5, 0, 1507351537, 0, 163),
(121, 7, 3, 0, '', '8', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 7 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :16/09/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :01/10/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue-Brochure</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A2\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"10.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 6, 0, 1507351547, 0, 163);
INSERT INTO `olala3w_calendar` (`calendar_id`, `exhibition_id`, `type`, `level`, `to_personal`, `to_role`, `to_agency`, `supervisor`, `note`, `content`, `report_user`, `is_active`, `status`, `disable`, `created_time`, `modified_time`, `user_id`) VALUES
(122, 16, 3, 0, '', '8', '', 0, '', '<div class=\"row\">\n			<div class=\"col-lg-12\">\n			<div class=\"panel panel-no-border\">\n			<div class=\"tieudehoadondm\">\n			<div>\n			<div class=\"logoin\">\n			<img src=\"images/logo.png\">\n			</div>\n			<div class=\"kihieu\">\n			<ul>\n\n			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>\n\n			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>\n			<li> Mobile: 0905 034 034 - 0913 404 414 </li>\n\n			<li> Email: incongthanhdanang@gmail.com </li>\n\n			</ul>\n			</div>\n			</div>\n			<div style=\"text-align: center;width: 100%;padding-top: 15px;\" class=\"titlenamein\">\n			<span class=\"namehoadon\">THÔNG TIN ĐƠN HÀNG</span><br>\n			<span style=\"color: #111;font-size:13px;\">Số : 16 </span><br/>\n			<span style=\"color: #111;font-size:13px;\">Ngày tạo :28/09/2017</span><br />\n			<span style=\"color: #111;font-size:13px;\">Ngày hoàn thành :30/09/2017</span><br />\n			</div>\n			</div>\n			</div>\n			</div>\n			</div>\n			<div class=\"col-md-12 formcode\">\n			<div class=\"row\">\n							\n			</div>\n			</div>\n			<table class=\"table table-no-border table-ol-3w table-hover\" >\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">1</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Brochure_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">2</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Hộp giấy_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">3</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Lịch_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">4</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Thiệp mời_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A5\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">5</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Menu_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">6</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Catalogue_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">7</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Poster_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A5\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">8</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Túi giấy_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">9</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Profile_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A4\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">10</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Bao bì giấy_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A3\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr><tr class=\"listds\">\n\n					<td>\n\n					<label class=\"form-lb-tp stt\">11</label>\n\n					</td>\n\n					<td><label class=\"form-lb-tp\">Name Card_KS</label></td>\n\n					<td><label class=\"form-lb-tp\">\n\n					<input type=\"text\" class=\"form-control fixsize\" readonly value=\"A8\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>			\n\n					<td>\n\n					<label class=\"form-lb-tp orderqty\">\n\n					<input type=\"text\"  class=\"form-control fixsoluong\" readonly data-a-sep=\".\" data-a-dec=\",\" data-v-max=\"999999\" data-v-min=\"0\" value=\"1.000\" style=\"border:none;outline:none;\" />\n\n					</label>\n\n					</td>\n\n					<td>\n\n					</td>			 \n\n				</tr></table>', 0, 1, 6, 0, 1507351669, 0, 163),
(123, 34, 2, 0, '', '', '', 0, '', '<div class=\"row\">\n\n			<div class=\"col-lg-12\">\n\n			<div class=\"panel panel-no-border\">\n\n			<div class=\"tieudehoadondm\">\n\n			<div>\n\n			<div class=\"logoin\">\n\n			<img src=\"images/logo.png\">\n\n			</div>\n\n			<div class=\"kihieu\">\n\n			<ul>\n\n			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>\n\n			<li> Mobie: 0987 654 321 - 0123 456 689 </li>\n\n			<li> Email: congthanhprint@gmail.com </li>\n\n			</ul>\n\n			</div>\n\n			</div>\n\n			<div style=\"text-align: center;width: 100%\" class=\"titlenamein\">\n\n			<span class=\"namehoadon\">ĐƠN HÀNG MỚI</span><br>\n\n			<span style=\"color: #111;font-size:12px;\">Số : 34 - CT-2017000029 </span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày tạo : 09/10/2017 16:00</span><br/>\n\n			<span style=\"color: #111;font-size:12px;\">Ngày hoàn thành : </span>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			</div>\n\n			<div class=\"col-md-12 formcode\">\n\n			<div class=\"row\">\n\n			<div class=\"col-md-6 col-sm-4 col-xs-12\">\n\n			<div style=\"display: inline-block;position: relative;\">\n\n			<input type=\"hidden\" name=\"id\" value=\"<?=$id ;?>\" />\n\n			</div>\n\n			</div>				\n\n			</div>\n\n			</div>\n\n			<table class=\"table table-no-border table-ol-3w table-hover\"  style=\"min-width:800px;\">\n\n			<tr class=\"panel-heading thantran\" >\n\n			<th><label class=\"form-lb-tp\">Thứ tự</label></th>\n\n			<th><label class=\"form-lb-tp\">Tên sản phẩm</label></th>\n\n			<th width=\"150px;\"><label class=\"form-lb-tp\">Kích thước</label></th>\n\n			<th><label class=\"form-lb-tp\">Số lượng</label></th>\n\n			<th width=\"110px;\"><label class=\"form-lb-tp\">&nbsp;</label></th>\n\n			</tr>\n\n			<tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">1</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Bao bì giấy_NH</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A3</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>100</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">2</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Lịch_NH</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A5</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>100</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">3</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Menu_NH</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>100</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr><tr class=\"listds\">\n\n							<td>\n\n							<label class=\"form-lb-tp stt\">4</label>\n\n							</td>\n\n							<td><label class=\"form-lb-tp\">Túi giấy_NH</label></td>\n\n							<td><label class=\"form-lb-tp\">\n\n							<span>A4</span>\n\n							</label>\n\n							</td>			\n\n						\n							<td>\n\n							<label class=\"form-lb-tp orderqty\">\n\n							<span>100</span>\n\n							</label>\n\n							</td>\n\n							<td>\n\n							</td>			 \n\n						</tr></table>', 0, 1, 1, 0, 1507539645, 0, 150);

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
-- Table structure for table `olala3w_commentex`
--

CREATE TABLE `olala3w_commentex` (
  `comment_id` int(11) NOT NULL,
  `exhibition_id` int(11) NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_time` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `olala3w_commentex`
--

INSERT INTO `olala3w_commentex` (`comment_id`, `exhibition_id`, `content`, `created_time`, `user_id`, `status`) VALUES
(69, 11, '', 1505902560, 1, 0),
(68, 8, 'Làm gấp. Hạn giao hàng rút xuống còn 30/10', 1505902246, 120, 0),
(66, 10, 'Hôm nay có hàng chưa, khách hàng đang chờ\n', 1505794531, 114, 0),
(67, 8, 'Thêm 20 Poster kích thước 50cmx100cm', 1505901979, 120, 0),
(65, 10, 'Khách hàng có file thiết kế cũ, ae thiết kế xin lại file, Thanks', 1505794490, 114, 0),
(64, 10, 'Cần Giao Gấp, Trước ngày 22/09', 1505794020, 114, 0),
(61, 7, 'Không có ghi chú nhé các bạn', 1505547900, 1, 0),
(62, 8, 'Giao hàng tại 30 Lê Lợi', 1505548680, 120, 0),
(63, 9, 'Tao hỏi tiền đâu đặc lắm thế', 1505551500, 114, 0),
(59, 5, 'Không có ghi chú', 1505546460, 114, 0),
(60, 6, 'Không có ghi chú', 1505546460, 114, 0),
(57, 3, '', 1505384460, 114, 0),
(58, 4, 'kHÔNG CÓ GHÌ CHÚ', 1505536740, 1, 0),
(55, 1, '', 1505126340, 114, 0),
(56, 2, '', 1505381340, 114, 0),
(70, 8, 'In xong trong ngày 15/10 để gủi qua đóng gói', 1505902689, 120, 0),
(71, 12, '', 1505964240, 122, 0),
(72, 12, 'vf', 1505964544, 122, 0),
(73, 12, 'ưer', 1505964546, 122, 0),
(74, 13, 'Không có ghi chú đơn hàng nhé bạn', 1505984460, 1, 0),
(75, 14, '', 1505986680, 1, 0),
(76, 15, '', 1506052680, 114, 0),
(77, 15, 'Yêu cầu làm trước ngày 30/09', 1506053032, 114, 0),
(78, 15, 'https://www.youtube.com/watch?v=AEpxtnGgHio vào đây lấy logo', 1506053114, 114, 0),
(79, 3, 'Khách chưa thânh toán, tạm dựng', 1506054380, 114, 0),
(80, 16, '', 1506585420, 1, 0),
(81, 17, '', 1506651840, 1, 0),
(82, 18, '', 1506652080, 145, 0),
(83, 19, '', 1506652080, 145, 0),
(84, 20, 'dqwd', 1506653940, 114, 0),
(85, 21, '', 1506654900, 133, 0),
(86, 21, 'Giao 50 hộp card trước', 1506655151, 133, 0),
(87, 21, 'Làm thêm 10 cái catalogue', 1506656145, 133, 0),
(88, 22, '', 1506656700, 114, 0),
(89, 22, 'nhshdasd', 1506656885, 139, 0),
(90, 22, 'dqwd23rwqq', 1506656888, 139, 0),
(91, 22, 'Cần thiết kế nhanh trước ngày 30/04\n', 1506656911, 139, 0),
(92, 22, 'File thiết kế đã hoàn thành đợi khách', 1506657562, 137, 0),
(93, 23, '', 1506658980, 114, 0),
(94, 5, 'Nhádn', 1506659044, 114, 0),
(95, 24, 'Làm đúng màu, kích thước', 1506659220, 129, 0),
(96, 25, 'Giao hàng tại 22 Lê Lợi', 1506659460, 129, 0),
(97, 25, 'Thiết kế thêm bản cho mặt hàng catalogue', 1506659686, 129, 0),
(98, 25, 'Không có cái ghi chú cho đơn hàng này.', 1506737880, 155, 0),
(99, 26, 'Giao tại 35 Hải Phòng', 1507108740, 150, 0),
(100, 27, 'Cắt gọt nhé thanh niên bên thiết kế', 1507187820, 150, 0),
(101, 28, 'Cắt chứ không gọt', 1507187940, 150, 0),
(102, 29, 'Nhân', 1507191420, 1, 0),
(103, 28, 'anhdqd', 1507191548, 158, 0),
(104, 28, 'mhdqwb', 1507191551, 158, 0),
(105, 30, '', 1507192500, 151, 0),
(106, 31, 'Không chiết khấu', 1507192620, 153, 0),
(107, 31, 'dhuqwhdq', 1507192752, 153, 0),
(108, 31, 'hdqwudh', 1507192754, 153, 0),
(109, 30, 'Đơn hàng này phải giao vào ngày 20/10', 1507192824, 151, 0),
(110, 32, 'Kjdsaidj', 1507194120, 150, 0),
(111, 30, 'báchasc', 1507194200, 160, 0),
(112, 30, 'nạd', 1507194201, 160, 0),
(113, 30, 'ádnasd', 1507194202, 160, 0),
(114, 32, 'nádsa\n', 1507194576, 160, 0),
(115, 32, 'dqwd', 1507194587, 160, 0),
(116, 33, '', 1507345560, 151, 0),
(117, 30, 'https://www.facebook.com/TruongNgocXuan?hc_ref=ARR7SFetkjKbMhB1bvEv3kyQNWAEPVHX4SiF7S6snBDyJZUDEGsWXuiNy7VaO_c4TlA FB cua khach', 1507345785, 159, 0),
(118, 30, 'lam gap 5000', 1507345813, 159, 0),
(119, 29, 'Đơn hang thiết kế trễ chút', 1507349528, 157, 0),
(120, 16, 'Bị trễ 3 hộp card', 1507351222, 163, 0),
(121, 34, '', 1507539600, 150, 0);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_commodity`
--

CREATE TABLE `olala3w_commodity` (
  `commodity_id` int(11) NOT NULL,
  `proposal_id` int(11) NOT NULL,
  `material_name` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `unit` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(4, 'title', 'Công ty CP In Công Thành', 'Meta title (home)', 0, 1),
(5, 'description', 'Công ty CP In Công Thành', 'Meta description (home)', 0, 2),
(6, 'keywords', 'Công ty CP In Công Thành', 'Meta keywords (home)', 0, 3),
(74, 'script_body', '', 'Script sau body', 4, 6),
(86, 'website', 'www.congthanh.vn', 'Website', 0, 8),
(76, 'link_linkedin', 'https://www.linkedin.com/', 'LinkedIn', 5, 5),
(7, 'email_contact', 'info@congthanh.vn', 'E-mail liên hệ', 0, 5),
(8, 'tell_contact', '02363 889.666', 'Điện thoại', 0, 7),
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
(21, 'SMTP_mailname', 'CÔNG TY IN CÔNG THÀNH', 'Tên tài khoản email', 1, 0),
(22, 'link_facebook', 'https://www.facebook.com/', 'Facebook', 5, 1),
(23, 'link_googleplus', 'https://plus.google.com/', 'Google+', 5, 2),
(24, 'link_twitter', 'https://twitter.com/', 'Twitter', 5, 3),
(25, 'address_contact', '302 Hải Phòng Q Thanh Khê TP Đà Nẵng', 'Địa chỉ', 0, 6),
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
(107, 'alias_information', '<p><strong>Công ty CP In Công Thành </strong><br />\r\n<label><span class=\"uln\">Trụ sở:</span> 302 Hải Phòng</label>, <label>P. Tân Chính</label>, <label>Q. Thanh Khê</label>, <label>Tp. Đà Nẵng</label><br />\r\n<label><span class=\"uln\">Điện thoại:</span> (0236) 3889.666</label> - <label><span class=\"uln\">Hotline:</span> (0236) 3574259</label> - <label><span class=\"uln\">Fax:</span> (0236) 3574259</label><br />\r\n<label><span class=\"uln\">Email:</span> info@congthanh.vn</label></p>\r\n', 'Thông tin công ty', 7, 1),
(108, 'copyright', 'Copyright © 2016 ICT', 'Meta copyright', 0, 3),
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
(6298, 3, 'document', 'document;note'),
(5555, 7, 'document', 'document_list_stock'),
(6297, 3, 'document', 'document_view'),
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
(4870, 3, 'calendar', 'calendar_list'),
(4871, 3, 'calendar', 'calendar_tracking'),
(4872, 3, 'calendar', 'calendar_remind'),
(4873, 3, 'calendar', 'calendar;eye'),
(4874, 3, 'calendar', 'calendar;delete'),
(4875, 3, 'general', 'general_level'),
(4876, 3, 'general', 'general_warning'),
(4878, 3, 'general', 'general_jobs_name'),
(6296, 3, 'document', 'document_edit'),
(4908, 3, 'ol', 'calendar'),
(4907, 3, 'ol', 'document'),
(4906, 3, 'calendar', 'calendar_remind'),
(4905, 3, 'calendar', 'calendar_notify'),
(6295, 3, 'document', 'document;edit'),
(4903, 5, 'ol', 'calendar'),
(4887, 5, 'document', 'document_list'),
(4888, 5, 'document', 'document_finished'),
(4889, 5, 'ol', 'document'),
(4890, 5, 'document', 'document;status'),
(4891, 5, 'calendar', 'calendar_notify'),
(4892, 5, 'document', 'document;note'),
(4895, 5, 'document', 'document;history'),
(6294, 3, 'document', 'document_finished'),
(4897, 4, 'ol', 'document'),
(6123, 4, 'document', 'document;email'),
(6122, 4, 'document', 'document;history'),
(6121, 4, 'document', 'document;note'),
(4902, 4, 'ol', 'calendar'),
(4909, 6, 'document', 'document_finished'),
(4910, 6, 'ol', 'calendar'),
(4911, 5, 'document', 'document_proposal'),
(4912, 6, 'document', 'document_list'),
(4913, 6, 'ol', 'document'),
(4914, 6, 'document', 'document;note'),
(5079, 35, 'calendar', 'calendar;delete'),
(5078, 35, 'calendar', 'calendar;eye'),
(5077, 7, 'document', 'document;note'),
(5076, 35, 'calendar', 'calendar_tracking'),
(5075, 35, 'calendar', 'calendar_list'),
(4921, 7, 'document', 'document_list'),
(4922, 9, 'document', 'document_proposal_list'),
(4923, 8, 'ol', 'calendar'),
(4927, 8, 'calendar', 'calendar_notify'),
(5094, 9, 'ol', 'document'),
(5093, 9, 'ol', 'calendar'),
(5092, 9, 'document', 'document_list_accountant'),
(5091, 9, 'document', 'document_finished_accountant'),
(5097, 8, 'ol', 'calendar'),
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
(5682, 1, 'calendar', 'calendar;delete'),
(5681, 1, 'calendar', 'calendar;eye'),
(5680, 1, 'calendar', 'calendar_edit'),
(5679, 1, 'calendar', 'calendar_tracking'),
(6261, 1, 'document', 'document;email'),
(6260, 1, 'document', 'document;history'),
(5678, 1, 'calendar', 'calendar_list'),
(5693, 2, 'calendar', 'calendar_notify'),
(5692, 2, 'calendar', 'calendar;delete'),
(5691, 2, 'calendar', 'calendar;eye'),
(5690, 2, 'calendar', 'calendar_edit'),
(5689, 2, 'calendar', 'calendar_tracking'),
(5016, 2, 'ol', 'calendar'),
(5017, 2, 'ol', 'document'),
(6262, 1, 'document', 'document;delete'),
(6263, 1, 'document', 'document;trip'),
(6293, 3, 'document', 'document_list'),
(6124, 4, 'document', 'document;status'),
(6234, 2, 'document', 'document;user'),
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
(6232, 2, 'document', 'document;trip'),
(6233, 2, 'document', 'document;status'),
(5046, 2, 'general', 'general_jobs_address_edit'),
(6104, 8, 'document', 'document;status'),
(6103, 8, 'document', 'document;trip'),
(6102, 8, 'document', 'document;delete'),
(6101, 8, 'document', 'document;history'),
(6095, 8, 'ol', 'document'),
(6100, 8, 'document', 'document;note'),
(6231, 2, 'document', 'document;history'),
(6213, 1, 'statistic', 'statistic_jobs_export'),
(6214, 1, 'statistic', 'statistic_chart'),
(5059, 2, 'core', 'core_role;delete'),
(5060, 2, 'core', 'core_dashboard'),
(5061, 2, 'core', 'core_agency'),
(5062, 2, 'core', 'core_agency_add'),
(6105, 8, 'document', 'document;user'),
(6212, 1, 'statistic', 'statistic;customer'),
(6211, 1, 'statistic', 'statistic;staff'),
(6230, 2, 'document', 'document;note'),
(6228, 2, 'document', 'document_edit'),
(6229, 2, 'document', 'document_view'),
(6227, 2, 'document', 'document_finished'),
(5080, 9, 'document', 'document;note'),
(5081, 9, 'document', 'document;edit'),
(5082, 9, 'document', 'document;history'),
(5083, 9, 'calendar', 'calendar_notify'),
(5084, 7, 'calendar', 'calendar_notify'),
(5085, 6, 'document', 'document;status'),
(5086, 6, 'calendar', 'calendar_notify'),
(5087, 6, 'document', 'document;history'),
(5088, 7, 'document', 'document_finished'),
(5089, 7, 'document', 'document;status'),
(5090, 7, 'ol', 'document'),
(5095, 7, 'ol', 'calendar'),
(5096, 7, 'document', 'document;history'),
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
(6303, 3, 'document', 'document;status'),
(6302, 3, 'document', 'document;trip'),
(6301, 3, 'document', 'document;delete'),
(6300, 3, 'document', 'document;email'),
(6299, 3, 'document', 'document;history'),
(6287, 1, 'general', 'general;deletecus'),
(6286, 1, 'general', 'general_customer'),
(6285, 1, 'general', 'general;deletepro'),
(6284, 1, 'general', 'general_product_edit'),
(6283, 1, 'general', 'general_product_add'),
(6282, 1, 'general', 'general_product'),
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
(6258, 1, 'document', 'document_view'),
(6210, 1, 'statistic', 'statistic;status'),
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
(6208, 1, 'statistic', 'statistic_jobs_export1'),
(5849, 59, 'calendar', 'calendar_add'),
(5812, 65, 'document', '-'),
(5827, 1, 'ol', 'statistic'),
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
(6259, 1, 'document', 'document;note'),
(6257, 1, 'document', 'document_edit'),
(5904, 1, 'ol', 'core'),
(5905, 1, 'ol', 'config'),
(6292, 3, 'document', 'document_delayed'),
(6291, 3, 'document', 'document_list_stock'),
(6290, 3, 'document', 'document_list_move'),
(6289, 3, 'document', 'document_design'),
(6288, 3, 'document', 'document_add'),
(6226, 2, 'document', 'document_list'),
(6120, 4, 'document', 'document_view'),
(6099, 8, 'document', 'document_finished'),
(6098, 8, 'document', 'document_list'),
(6096, 8, 'document', 'document_add'),
(6119, 4, 'document', 'document_edit'),
(6097, 8, 'document', 'document_design'),
(6118, 4, 'document', 'document_finished'),
(6117, 4, 'document', 'document_list'),
(6116, 4, 'document', 'document_design'),
(6115, 4, 'document', 'document_add'),
(6064, 4, 'ol', 'statistic'),
(6065, 4, 'statistic', 'statistic_customer'),
(6066, 4, 'statistic', 'statistic_jobs_export'),
(6067, 4, 'statistic', 'statistic_exhibition'),
(6209, 1, 'statistic', 'statistic_exhibition'),
(6207, 1, 'statistic', 'statistic_jobs'),
(6256, 1, 'document', 'document;edit'),
(6255, 1, 'document', 'document_finished'),
(6254, 1, 'document', 'document_list'),
(6253, 1, 'document', 'document_delayed'),
(6252, 1, 'document', 'document_list_move'),
(6251, 1, 'document', 'document_design'),
(6250, 1, 'document', 'document_add'),
(6264, 1, 'document', 'document;status'),
(6265, 1, 'document', 'document;user'),
(6266, 3, 'ol', 'statistic'),
(6267, 3, 'statistic', 'statistic_jobs'),
(6268, 3, 'statistic', 'statistic_jobs_export1'),
(6269, 3, 'statistic', 'statistic_exhibition'),
(6270, 3, 'statistic', 'statistic;exhibition'),
(6271, 3, 'statistic', 'statistic;status'),
(6272, 3, 'statistic', 'statistic;staff'),
(6273, 3, 'statistic', 'statistic;customer'),
(6274, 3, 'statistic', 'statistic_jobs_export'),
(6275, 3, 'statistic', 'statistic_chart'),
(6276, 1, 'ol', 'general');

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
(8, 'Giao hàng', 'Giao hàng sản phẩm', 1, 1, 1503716470, 1),
(9, 'Kế Toán', 'Quản lý  mọi thu chi của công ty', 1, 1, 1505381250, 1);

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
  `current_agency` int(11) NOT NULL DEFAULT '0',
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

INSERT INTO `olala3w_core_user` (`user_id`, `user_name`, `password`, `full_name`, `gender`, `birthday`, `identity_card`, `date_of_issue`, `apply`, `email`, `phone`, `address`, `city`, `agency`, `current_agency`, `comment`, `is_show`, `sort`, `img`, `is_active`, `vote`, `btn_notify1`, `btn_notify2`, `click_vote`, `created_time`, `modified_time`, `user_id_edit`) VALUES
(1, 'admin', 'ca4c0178da5c3219c4150c77b16c935d', 'Administrator', 1, 1426784400, '', 0, 'Quản trị Website.', 'ng.quangphuc@gmail.com', '0905431190', 'Đà Nẵng', 'Hà Nội', 30, 0, '', 1, 1, 'u_1507187423_942441d9c5679e90c80cd8e3b19f9286.jpg', 1, 5, 0, 0, 1, 1408159832, 1507539300, 1),
(167, 'thuyvan', 'addcf47ddfe7c74fa58714dcc295a622', 'Võ Thị Thúy Vân', 0, 631126800, '', 0, '', 'thuyvan81dn@gmail.com', '01667777531', '', 'Đà Nẵng', 0, 0, '', 1, 20, 'no', 1, 3, 1, 1, 1, 1506736274, 1507002901, 1),
(166, 'anhkhong', 'c0ef2442b7633798833af0de2044308d', 'Khổng Văn Anh', 1, 631126800, '', 0, '', 'nhanduc96@gmail.com', '01679960030', '', 'Đà Nẵng', 0, 0, '', 1, 19, 'no', 1, 3, 1, 1, 1, 1506672185, 1507543626, 1),
(165, 'cuongnguyen', 'dc4124cd260bb4587d336c7b84c3fa35', 'Nguyễn Cương', 1, 631126800, '', 0, '', 'nhanduc96@gmail.com', '01679960030', '', 'Đà Nẵng', 0, 0, '', 1, 18, 'no', 1, 3, 1, 1, 1, 1506672079, 1507543598, 1),
(164, 'chaule', 'e8f01cb7b15e092a46c3bb0a06d3f6d6', 'Lê Hồng Châu', 1, 631126800, '', 0, '', 'nhanduc96@gmail.com', '01679960030', '', 'Đà Nẵng', 0, 0, '', 1, 17, 'no', 1, 3, 1, 1, 1, 1506672034, 1507543569, 1),
(163, 'dieutran', '3139f27862b7ecca1c20f57e30faef5f', 'Trần Thị Huyền Diệu', 2, 631126800, '', 0, '', 'nhanduc96@gmail.com', '01679960030', '', 'Đà Nẵng', 0, 0, '', 1, 16, 'no', 1, 3, 1, 1, 1, 1506671943, 1507543525, 1),
(161, 'vynguyen', '2d39a073a8ac12de7c561b16bae2fb7d', 'Nguyễn Thị Diễm Vy', 2, 599590800, '', 0, '', 'nguyen.vy.0289@gmail.com', '0974185026', '', 'Đà Nẵng', 0, 0, '', 1, 15, 'no', 1, 3, 1, 1, 1, 1506670103, 1507543372, 1),
(160, 'huynguyen', '0f01df6b3ecae1b5654e1cc77fa5c311', 'Nguyễn Ngọc Bảo Huy', 1, 631126800, '', 0, '', 'insacmau@gmail.com', '0905838345', '', 'Đà Nẵng', 0, 0, '', 1, 14, 'no', 1, 3, 1, 1, 1, 1506670048, 1507543274, 1),
(159, 'thinguyen', 'b337b7ce67854b4961414384fe4f022a', 'Nguyễn Thị Thi', 2, 654714000, '', 534186000, '', 'thinguyen_86@gmail.com', '0935959599', '', 'Đà Nẵng', 0, 0, '', 1, 13, 'no', 1, 3, 1, 1, 1, 1506669966, 1507543256, 1),
(158, 'xuanthieu', '8829e94f5b91a8c8627d561f99bba086', 'Thiều Thanh Xuân', 2, 631126800, '', 0, '', 'thanhxuandesign93@gmail.com', '0962935860', '', 'Đà Nẵng', 0, 0, '', 1, 12, 'no', 1, 3, 1, 1, 1, 1506669699, 1507543241, 1),
(157, 'nhantruong', '027aa234abfe52690fc441be57527319', 'Trương Hoàng Nhân', 1, 631126800, '', 0, 'nhantruong', 'nhanduc96@gmail.com', '01679960030', '', 'Đà Nẵng', 0, 0, '', 1, 11, 'no', 1, 3, 1, 1, 1, 1506669632, 1507543226, 1),
(154, 'cucbui', '004b49710e03da9bb458775aee47514c', 'Bùi Thị Cúc', 2, 631126800, '', 0, '', 'cuc181090@gmail.com', '0904945090', '', 'Đà Nẵng', 0, 0, '', 1, 8, 'no', 1, 3, 1, 1, 1, 1506669425, 1507543144, 1),
(152, 'thuantran', '55e7aec2dc30085039e17ca66b53ff1a', 'Trần Lê Qúi Thuân', 1, 536432400, '', 0, '', 'quithuan@gmail.com', '0905574697', '', 'Đà Nẵng', 0, 0, '', 1, 6, 'no', 1, 3, 1, 1, 1, 1506669248, 1507543099, 1),
(151, 'viennguyen', '9818c7f5c8d62651e984e51870174bd6', 'Nguyễn Thảo Viên', 1, 631126800, '', 0, '', 'nhanduc96@gmail.com', '01679960030', '', 'Đà Nẵng', 0, 0, '', 1, 5, 'no', 1, 3, 1, 1, 1, 1506669129, 1507543070, 1),
(150, 'thaotran', '2b28058fcb4f8e96ca1ca44706b845bc', 'Trần Thị Phương Thảo', 2, 544208400, '', 1506618000, '', 'thaotran87dn@gmail.com', '0985978977', '', 'Đà Nẵng', 0, 0, '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 4, 'u_1507543019_fb453b1bef15e09fcd85ef79cdc15b9d.jpg', 1, 3, 1, 1, 1, 1506669054, 1507543048, 1),
(155, 'phuongtran', 'd1fd3b260789a790b2ca867ef3d9c915', 'Trần Thị Kim Phương', 2, 770317200, '', 0, '', 'trankimphuong3105lr@gmail.com', '0905700496', '', 'Đà Nẵng', 0, 0, '', 1, 9, 'no', 1, 3, 1, 1, 1, 1506669507, 1507599035, 155),
(156, 'giangho', 'ca943192b1a0e26d2e7fbeb75c567ce2', 'Hồ Thị Thu Giang', 2, 631126800, '', 0, '', 'nhanduc96@gmail.com', '01679960030', '', 'Đà Nẵng', 0, 0, '', 1, 10, 'no', 1, 3, 1, 1, 1, 1506669578, 1507543202, 1),
(148, 'anpham', '525ed0ff9c06d3f10c1bcdbb7c109a61', 'Phạm Phú Ân', 1, 631126800, '', 0, '', 'nh0ck_v0le_ppa@yahoo.com.vn', '0935777750', '', 'Đà Nẵng', 0, 0, '', 1, 33, 'no', 1, 3, 1, 1, 1, 1506653653, 1507543682, 1),
(153, 'lainguyen', '41b32f6f91ec577557474085f3a0f2c7', 'Nguyễn Thị Lai', 1, 631126800, '', 0, '', 'nhanduc96@gmail.com', '01679960030', '', 'Đà Nẵng', 0, 0, '', 1, 7, 'no', 1, 3, 1, 1, 1, 1506669291, 1507543127, 1),
(162, 'havo', 'c388437509853e174b0e788dc1f8ad9e', 'Võ Thị Thúy Hà', 2, 631126800, '', 0, '', 'nhanduc96@gmail.com', '01679960030', '', 'Đà Nẵng', 0, 0, '', 1, 15, 'no', 1, 3, 1, 1, 1, 1506671887, 1507543436, 1),
(168, 'nvik', 'd445782cedc1bfa6ecbd74b0dfaec0ae', 'In Kẻm', 0, 631126800, '', 0, '', 'nhand@gmail.com', '01679960030', '', 'Đà Nẵng', 0, 0, '', 1, 21, 'no', 1, 3, 1, 1, 1, 1507194463, 1507543656, 1);

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
(1, 'Đơn hàng đầu tiên', 'Test Đơn hàng ', 'Nguyễn Hoàng Liên Sơn', '01679960030', 'nhanduc96@gmail.com', 'Thăng Bình - Quảng Nam', '', 1505126340, 0, 1),
(2, 'DanaWeb', 'NFJSN', 'Nguyễn Văn Hoàng', '01679960030', 'nhanduc@gmail.com', 'Thăng Bình  - Quảng Nam', '', 1505381340, 0, 1),
(3, 'Điện máy chợ lớn', 'NNFJHW', 'Nguyễn Hoàng Sơn', '01679960030', 'nhanduc96@gmail.com', 'Thăng Bình - Quảng Nam', '', 1505384460, 0, 1),
(4, 'Điện Nước Vinh Quốc', 'QDNVKWJ', 'Nguyễn Đức Nhân', '01679960030', 'nhanduc96@gmail.com', 'Thăng Bình - Quảng Nam', '', 1505536740, 0, 1),
(5, 'Web Nhân Nguyễn', 'DNWEKDKANSQ', 'Nguyễn Đức Nhân', '01679960030', 'nhanduc96@gmail.com', 'Thăng Bình - Quảng Nam', '', 1505546460, 0, 1),
(7, 'Điện Máy Xanh', 'DMQWJEK', 'Nguyễn Đức Nhân Moe', '01679960030', 'nhanduc96@gmail.com', 'Thăng Bình - Quảng Nam', '', 1505547900, 1506427860, 1),
(8, 'ABC Bakery', '8A7858', 'Lê Thủy', '0914555666', 'thuyle@gmail.com', '40 Lê Duẩn', '', 1505548680, 1505920800, 1),
(9, 'Rút Hàm Cầu Hòa Võ', 'HVRHC', 'Võ Văn Hòa', '01679960030', 'vovanhoakb@gmail.com', 'Thăng Bình - Quảng Nam', '', 1505551500, 0, 1),
(10, 'Công ty Phần Mềm Danaweb', '0401674504', 'Mr. Nghĩa', '0914049099', 'info@danaweb.vn', '276 Hải Phong', '', 1505794020, 0, 1),
(11, 'In Công Thành', 'NADASHDQ', 'Nguyễn Đức Nhân', '01679960030', 'nhanduc96@gmail.com', 'Thăng Bình - Quảng Nam', '', 1505902560, 0, 1),
(13, '', '', 'Nguyễn Văn Sơn', '01679960030', 'nhanduc96@gmail.com', 'Thăng Bình - Quảng Nam', 'nhandu96@gmail.com', 1505984460, 1506065400, 1),
(14, 'Nguyễn Thái Phương Nam', 'NDWUFWEF', 'Nguyễn Nhẩt Trường Giang', '01679960030', 'nhanduc96@gmail.com', 'Thăng Bình - Quảng Nam', '', 1505986680, 0, 1),
(15, 'Công Ty  DanaWeb', '0401674503', 'A Nghia', '0914049099', 'danaweb.vn@gmail.com', '276 Hai Phòng, Đà Nẵng', '', 1506052680, 1506052800, 1),
(16, 'ABC Bakery', '8A7858', 'Lê Thủy', '0914555666', 'thuyle@gmail.com', '40 Lê Duẩn', '', 1506585420, 0, 1),
(17, 'DanaWeb', 'NFJSN', 'Nguyễn Văn Hoàng', '01679960030', 'nhanduc@gmail.com', 'Thăng Bình  - Quảng Nam', '', 1506651840, 0, 1),
(18, 'Điện máy chợ lớn', 'NNFJHW', 'Nguyễn Hoàng Sơn', '01679960030', 'nhanduc96@gmail.com', 'Thăng Bình - Quảng Nam', '', 1506652080, 0, 1),
(19, 'Điện máy chợ lớn', 'NNFJHW', 'Nguyễn Hoàng Sơn', '01679960030', 'nhanduc96@gmail.com', 'Thăng Bình - Quảng Nam', '', 1506652080, 0, 1),
(20, 'Đơn hàng đầu tiên', 'Test Đơn hàng ', 'Nguyễn Hoàng Liên Sơn', '01679960030', 'nhanduc96@gmail.com', 'Thăng Bình - Quảng Nam', '', 1506653940, 0, 1),
(21, 'DanaWeb', 'NFJSN', 'Nguyễn Văn Hoàng', '01679960030', 'nhanduc@gmail.com', 'Thăng Bình  - Quảng Nam', '', 1506654900, 1506655080, 1),
(22, 'Đơn hàng đầu tiên vy', 'Test Đơn hàng ', 'Nguyễn Hoàng Liên Sơn', '01679960030', 'nhanduc96@gmail.com', 'Thăng Bình - Quảng Nam', '', 1506656700, 0, 1),
(23, 'DanaWeb', 'NFJSN', 'Nguyễn Văn Hoàng', '01679960030', 'nhanduc@gmail.com', 'Thăng Bình  - Quảng Nam', '', 1506658980, 0, 1),
(24, 'Furama', '9585885', 'Lê Văn Anh', '098858585', 'lanh@gmail.com', '943 Lê Lợi', '', 1506659220, 0, 1),
(25, 'DanaWeb', 'NFJSN', 'Nguyễn Văn Hoàng', '01679960030', 'nhanduc@gmail.com', 'Thăng Bình  - Quảng Nam', '', 1506737880, 0, 1),
(26, 'Điện máy chợ lớn', 'NNFJHW', 'Nguyễn Hoàng Sơn', '01679960030', 'nhanduc96@gmail.com', 'Thăng Bình - Quảng Nam', '', 1507108740, 0, 1),
(27, 'Rút Hàm Cầu Hòa Võ', 'HVRHC', 'Võ Văn Hòa', '01679960030', 'vovanhoakb@gmail.com', 'Thăng Bình - Quảng Nam', '', 1507187820, 0, 1),
(28, 'Công ty Phần Mềm Danaweb', '0401674504', 'Mr. Nghĩa', '0914049099', 'info@danaweb.vn', '276 Hải Phong', '', 1507187940, 0, 1),
(29, 'Web Nhân Nguyễn', 'DNWEKDKANSQ', 'Nguyễn Đức Nhân', '01679960030', 'nhanduc96@gmail.com', 'Thăng Bình - Quảng Nam', '', 1507191420, 0, 1),
(30, 'ABC Bakery', '8A7858', 'Lê Thủy', '0914555666', 'thuyle@gmail.com', '40 Lê Duẩn', '', 1507192500, 1507192560, 1),
(31, 'Điện Máy Xanh', 'DMQWJEK', 'Nguyễn Đức Nhân Moe', '01679960030', 'nhanduc96@gmail.com', 'Thăng Bình - Quảng Nam', '', 1507192620, 0, 1),
(32, 'Điện máy chợ lớn', 'NNFJHW', 'Nguyễn Hoàng Sơn', '01679960030', 'nhanduc96@gmail.com', 'Thăng Bình - Quảng Nam', '', 1507194120, 0, 1),
(33, 'Công ty Phần Mềm Danaweb', '0401674504', 'Mr. Nghĩa', '0914049099', 'info@danaweb.vn', '276 Hải Phong', '', 1507345560, 0, 1),
(34, 'ABC Bakery', '8A7858', 'Lê Thủy', '0914555666', 'thuyle@gmail.com', '40 Lê Duẩn', '', 1507539600, 0, 1);

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
  `current_status` int(11) NOT NULL,
  `status_new` int(11) NOT NULL,
  `date_end` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `created_time` int(11) NOT NULL,
  `notifined_time` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `creator` int(11) NOT NULL,
  `accountant_id` int(11) NOT NULL DEFAULT '0',
  `change_payment` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `olala3w_exhibition`
--

INSERT INTO `olala3w_exhibition` (`exhibition_id`, `urgent`, `pick_up`, `customer_id`, `discount`, `into_money`, `money_undiscounted`, `fabricate`, `prepayment`, `payment_2`, `payment_3`, `debtor`, `status`, `current_status`, `status_new`, `date_end`, `comment`, `created_time`, `notifined_time`, `user_id`, `code`, `creator`, `accountant_id`, `change_payment`) VALUES
(1, 1, 1, 1, 1000000, 9999000000, 10000000000, 0, 1000000000, 0, 0, 8999000000, 2, 2, 0, 1506704400, '', 1505126340, 0, 0, 'CT-2017000001', 0, 121, 0),
(2, 0, 0, 2, 1000000, 9999000000, 10000000000, 0, 1000000000, 9000000, 0, 8990000000, 1, 0, 0, 1506618000, '', 1505381340, 1505382766, 114, 'CT-2017000002', 0, 121, 0),
(3, 1, 1, 3, 10000, 9999990000, 10000000000, 0, 999990000, 0, 0, 9000000000, 1, 1, 0, 1506704400, '', 1505384460, 1505534743, 114, 'CT-2017000003', 0, 121, 0),
(4, 1, 1, 4, 10000, 99990000, 100000000, 0, 1000000, 0, 0, 98990000, 5, 5, 0, 1506704400, 'kHÔNG CÓ GHÌ CHÚ', 1505536740, 0, 0, 'CT-2017000004', 0, 121, 0),
(5, 0, 0, 5, 1000, 19999000, 20000000, 0, 10099000, 0, 0, 9900000, 1, 1, 0, 1506704400, 'Không có ghi chú', 1505546460, 0, 114, 'CT-2017000005', 0, 121, 0),
(7, 1, 1, 7, 10000, 9990000, 10000000, 0, 1000000, 0, 0, 8990000, 6, 6, 1, 1506790800, 'Không có ghi chú nhé các bạn', 1505547900, 1506427860, 0, 'CT-2017000006', 0, 121, 0),
(8, 1, 0, 8, 1000000, 34000000, 35000000, 0, 10000000, 10000000, 0, 14000000, 6, 6, 0, 1505840400, 'Giao hàng tại 30 Lê Lợi', 1505548680, 1505920800, 0, 'CT-2017000007', 0, 121, 0),
(9, 1, 1, 9, 1000000, 100099000000, 100100000000, 0, 1000000000, 0, 0, 99099000000, 2, 2, 0, 1509123600, 'Tao hỏi tiền đâu đặc lắm thế', 1505551500, 0, 115, 'CT-2017000008', 0, 121, 0),
(10, 0, 1, 10, 0, 60000000, 60000000, 0, 0, 0, 0, 60000000, 2, 2, 0, 1506013200, 'Cần Giao Gấp, Trước ngày 22/09', 1505794020, 0, 115, 'CT-2017000009', 0, 121, 0),
(11, 1, 1, 11, 10000000, 21990000000, 22000000000, 0, 2000000000, 0, 0, 19990000000, 2, 2, 0, 1506704400, '', 1505902560, 0, 115, 'CT-2017000010', 0, 122, 0),
(13, 1, 1, 13, 90000000, 180000000000000, 180000000000000, 0, 9000000000, 0, 0, 179991000000000, 13, 1, 0, 1506704400, 'Không có ghi chú đơn hàng nhé bạn', 1505984460, 1506065400, 1, 'CT-2017000011', 0, 122, 0),
(14, 1, 1, 14, 90000000, 9999910000000, 10000000000000, 0, 9000000000, 0, 0, 9990910000000, 13, 1, 0, 1506704400, '', 1505986680, 0, 1, 'CT-2017000012', 0, 122, 0),
(15, 1, 1, 15, 4300000, 21700000, 26000000, 0, 4000000, 0, 0, 17700000, 2, 2, 0, 1506099600, '', 1506052680, 1506052800, 115, 'CT-2017000013', 0, 123, 0),
(16, 0, 0, 16, 10, 306675000, 340750000, 0, 300000000, 0, 0, 6675000, 6, 6, 0, 1506704400, '', 1506585420, 0, 0, 'CT-2017000014', 0, 154, 0),
(17, 0, 0, 17, 10, 900000, 1000000, 0, 100000, 0, 0, 800000, 4, 4, 0, 0, '', 1506651840, 0, 118, 'CT-2017000015', 0, 154, 0),
(18, 0, 0, 18, 20, 238000, 297000, 0, 200000, 0, 0, 38000, 1, 0, 0, 0, '', 1506652080, 0, 145, 'CT-2017000016', 0, 154, 0),
(19, 0, 0, 19, 20, 238000, 297000, 0, 200000, 0, 0, 38000, 1, 0, 0, 0, '', 1506652080, 0, 145, 'CT-2017000016', 0, 154, 0),
(20, 0, 0, 20, 10, 90000, 100000, 0, 1000, 0, 0, 89000, 12, 12, 0, 0, 'dqwd', 1506653940, 0, 0, 'CT-2017000017', 0, 154, 0),
(21, 0, 0, 21, 5, 75050000, 79000000, 0, 5000000, 20000000, 0, 50050000, 2, 2, 0, 1508432400, '', 1506654900, 1506656862, 137, 'CT-2017000018', 0, 154, 1),
(22, 0, 0, 22, 10, 90000, 100000, 0, 100, 0, 0, 89900, 3, 3, 0, 0, '', 1506656700, 0, 0, 'CT-2017000019', 0, 154, 0),
(23, 1, 1, 23, 5, 10000, 10000, 0, 1000, 0, 0, 9000, 3, 3, 0, 0, '', 1506658980, 0, 0, 'CT-2017000020', 0, 154, 0),
(24, 1, 0, 24, 5, 1915200000, 2016000000, 0, 2000000, 400000000, 0, 1513200000, 1, 0, 0, 0, 'Làm đúng màu, kích thước', 1506659220, 1506659633, 129, 'CT-2017000020', 0, 154, 1),
(25, 0, 0, 25, 10, 180000, 200000, 0, 10000, 0, 0, 170000, 2, 2, 0, 0, 'Không có cái ghi chú cho đơn hàng này.', 1506737880, 1506754602, 157, 'CT-2017000021', 0, 154, 0),
(26, 1, 1, 26, 0, 15000000, 15000000, 0, 5000000, 0, 0, 10000000, 3, 3, 1, 1511542800, 'Giao tại 35 Hải Phòng', 1507108740, 0, 150, 'CT-2017000022', 0, 154, 0),
(27, 0, 0, 27, 10, 900000, 1000000, 0, 100000, 0, 0, 800000, 3, 3, 0, 0, 'Cắt gọt nhé thanh niên bên thiết kế', 1507187820, 0, 150, 'CT-2017000023', 0, 154, 0),
(28, 0, 0, 28, 10, 256500000, 285000000, 0, 10000, 0, 0, 256490000, 3, 3, 0, 0, 'Cắt chứ không gọt', 1507187940, 1507191996, 0, 'CT-2017000024', 0, 154, 0),
(29, 0, 0, 29, 10, 1719000, 1910000, 0, 100000, 0, 0, 1619000, 3, 3, 0, 0, 'Nhân', 1507191420, 1507191990, 0, 'CT-2017000025', 0, 0, 0),
(30, 1, 0, 30, 3, 2328000, 2400000, 0, 2000000, 0, 0, 328000, 2, 2, 1, 1509123600, '', 1507192500, 1507192560, 0, 'CT-2017000026', 0, 0, 0),
(31, 0, 0, 31, 0, 1000000, 1000000, 0, 400000, 0, 0, 600000, 1, 0, 0, 0, 'Không chiết khấu', 1507192620, 0, 153, 'CT-2017000026', 0, 0, 0),
(32, 1, 0, 32, 10, 35100000, 39000000, 0, 1000000, 0, 0, 34100000, 4, 4, 1, 0, 'Kjdsaidj', 1507194120, 0, 0, 'CT-2017000027', 0, 0, 0),
(33, 1, 0, 33, 0, 3000000, 3000000, 0, 0, 0, 0, 3000000, 2, 2, 1, 0, '', 1507345560, 1507345691, 156, 'CT-2017000028', 0, 0, 0),
(34, 0, 0, 34, 20, 15280000, 19100000, 0, 10000000, 0, 0, 5280000, 1, 0, 0, 0, '', 1507539600, 0, 150, 'CT-2017000029', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_exhibition_history`
--

CREATE TABLE `olala3w_exhibition_history` (
  `exhibition_id` int(11) NOT NULL,
  `id_exhibition` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
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

INSERT INTO `olala3w_exhibition_history` (`exhibition_id`, `id_exhibition`, `creator_id`, `created_time`, `sales_date_end`, `design_date_end`, `offset_date_end`, `printing_date_end`, `packaging_date_end`, `delivery_date_end`, `sales_id`, `design_id`, `offset_id`, `printing_id`, `packaging_id`, `delivery_id`) VALUES
(1, 1, 114, 1505126387, 1505377132, 0, 0, 0, 0, 0, 114, 0, 0, 0, 0, 0),
(2, 2, 114, 1505381347, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 3, 114, 1505384483, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 4, 1, 1505536780, 1505546245, 1505551642, 1506659484, 1506659535, 0, 0, 1, 115, 117, 118, 0, 0),
(5, 5, 114, 1505546492, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 6, 114, 1505546495, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 7, 1, 1505547934, 1506655652, 0, 0, 0, 1507351547, 0, 1, 0, 0, 0, 163, 0),
(8, 8, 120, 1505548681, 1505796143, 0, 1506014969, 1506045708, 1506659614, 0, 120, 0, 117, 118, 124, 0),
(9, 9, 114, 1505551545, 1506052973, 0, 0, 0, 0, 0, 114, 0, 0, 0, 0, 0),
(10, 10, 114, 1505794050, 1506052932, 0, 0, 0, 0, 0, 114, 0, 0, 0, 0, 0),
(11, 11, 1, 1505902570, 1505902915, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(12, 12, 122, 1505964286, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 13, 1, 1505984482, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 14, 1, 1505986739, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 15, 114, 1506052732, 1506052831, 0, 0, 0, 0, 0, 114, 0, 0, 0, 0, 0),
(16, 16, 1, 1506585462, 1506652235, 0, 0, 0, 1507351669, 0, 1, 0, 0, 0, 163, 0),
(17, 17, 1, 1506651882, 1506654931, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(18, 18, 145, 1506652131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 19, 145, 1506652132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 20, 114, 1506653980, 1506654005, 0, 0, 1506654067, 1506654881, 1506659725, 114, 0, 0, 118, 148, 125),
(21, 21, 133, 1506654938, 1506655241, 0, 0, 0, 0, 0, 133, 137, 0, 0, 0, 0),
(22, 22, 114, 1506656740, 1506656853, 1506658079, 0, 0, 0, 0, 114, 137, 0, 0, 0, 0),
(23, 23, 114, 1506659000, 1506659112, 1506659216, 0, 0, 0, 0, 114, 115, 0, 0, 0, 0),
(24, 24, 129, 1506659261, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 25, 129, 1506659469, 1506738058, 0, 0, 0, 0, 0, 155, 157, 0, 0, 0, 0),
(26, 25, 155, 1506737899, 1506738058, 0, 0, 0, 0, 0, 155, 157, 0, 0, 0, 0),
(27, 26, 150, 1507108781, 1507108799, 1507108909, 0, 0, 0, 0, 150, 161, 0, 0, 0, 0),
(28, 27, 150, 1507187854, 1507187890, 1507192043, 0, 0, 0, 0, 150, 158, 0, 0, 0, 0),
(29, 28, 150, 1507187959, 1507188198, 1507350748, 0, 0, 0, 0, 150, 157, 0, 0, 0, 0),
(30, 29, 1, 1507191438, 1507191488, 1507349936, 0, 0, 0, 0, 1, 157, 0, 0, 0, 0),
(31, 30, 151, 1507192538, 1507192611, 0, 0, 0, 0, 0, 151, 0, 0, 0, 0, 0),
(32, 31, 153, 1507192628, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33, 32, 150, 1507194160, 1507194177, 1507194495, 1507194561, 0, 0, 0, 150, 160, 168, 0, 0, 0),
(34, 33, 151, 1507345572, 1507345646, 0, 0, 0, 0, 0, 151, 156, 0, 0, 0, 0),
(35, 34, 150, 1507539645, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
  `real_produced_number` int(11) NOT NULL,
  `stock_count` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `olala3w_itemproduct`
--

INSERT INTO `olala3w_itemproduct` (`itemproduct_id`, `name`, `exhibition_id`, `product_name`, `size`, `unit_price`, `type`, `count_number`, `real_produced_number`, `stock_count`, `img`, `total`) VALUES
(1, '', 1, 'Set doanh nghiệp', 'A2', '100000', 'Cái', 100000, 0, 0, '', 10000000000),
(2, '', 2, 'Set doanh nghiệp', 'A2', '100000', 'Cái', 100000, 0, 0, '', 10000000000),
(3, '', 3, 'Set doanh nghiệp', 'A2', '10000000', 'Cái', 1000, 0, 0, '', 10000000000),
(4, '', 4, 'Catalogue-Brochure', 'A2', '10000', 'Cái', 10000, 20000, 10000, 'sp_1507351370_3d3618821fadb67bfd3fd487369e924c.png', 100000000),
(5, '', 5, 'Catalogue-Brochure', 'A4', '100000', 'Cái', 100, 0, 0, '', 10000000),
(6, '', 5, 'Lịch-thiệp', 'A5', '10000', 'Tờ', 1000, 0, 0, '', 10000000),
(7, '', 6, 'Catalogue-Brochure', 'A4', '100000', 'Cái', 100, 0, 0, '', 10000000),
(8, '', 6, 'Lịch-thiệp', 'A5', '10000', 'Tờ', 1000, 0, 0, '', 10000000),
(12, '', 9, 'Sách báo-tạp chí', 'A3', '10000', 'Cái', 10000, 0, 0, '', 100000000),
(13, '', 9, 'Set doanh nghiệp', 'A5', '1000000', 'Cái', 100000, 0, 0, '', 100000000000),
(14, '', 10, 'Catalogue-Brochure', 'A4', '100000', 'Tập', 200, 0, 0, '', 20000000),
(15, '', 10, 'Catalogue-Brochure', 'A4', '100000', 'Tập', 200, 0, 0, '', 20000000),
(16, '', 10, 'Banner ', 'A4', '100000', 'Tập', 200, 0, 0, '', 20000000),
(19, '', 11, 'Set doanh nghiệp', 'A3', '100000', 'Cái', 100000, 0, 0, '', 10000000000),
(20, '', 11, 'Set doanh nghiệp', 'A3', '100000', 'Cái', 100000, 0, 0, '', 10000000000),
(21, '', 11, 'Catalogue-Brochure', 'A0', '1000000', 'Cái', 1000, 0, 0, '', 1000000000),
(22, '', 11, 'Catalogue-Brochure', 'A0', '1000000', 'Cái', 1000, 0, 0, '', 1000000000),
(23, '', 8, 'Lịch-thiệp', 'A4', '500000', 'Cái', 50, 0, 0, '', 25000000),
(24, '', 8, 'Banner', 'A2', '2000000', 'Cái', 5, 0, 0, '', 10000000),
(31, '', 14, 'Catalogue-Brochure', 'A4', '100000000', 'Cái', 100000, 0, 0, '', 10000000000000),
(36, '', 15, 'Poster', 'A1', '200000', 'Cái', 30, 0, 0, '', 6000000),
(37, '', 15, 'Catalogue-Brochure', 'A4', '50000', 'Tập', 400, 0, 0, '', 20000000),
(38, '', 13, 'Phiếu-vé-hóa đơn', 'A3', '200000000', 'Cái', 900000, 0, 0, '', 180000000000000),
(39, '', 7, 'Catalogue-Brochure', 'A2', '1000', 'Cái', 10000, 12000, 2000, 'sp_1506913238_7024779ac0e38f1c7a14f4657e5c9d9d.jpg', 10000000),
(40, '', 16, 'Brochure_KS', 'A4', '300000', 'uyển', 1000, 1000000, 999000, 'full_1506912874_bf4ced25d5ac3e4d6d3f8ed44da01fe5.jpg', 300000000),
(41, '', 16, 'Hộp giấy_KS', 'A4', '5000', 'ộp', 1000, 1000000, 999000, 'sp_1506998117_7442d7b84be03ac1c413e5df8929501d.jpg', 5000000),
(42, '', 16, 'Lịch_KS', 'A4', '1000', 'uyển', 1000, 11000, 10000, 'sp_1506998132_d88b746bc8b873fa47097287634c4bee.jpg', 1000000),
(43, '', 16, 'Thiệp mời_KS', 'A5', '2000', 'ái', 1000, 10000, 9000, 'sp_1506998141_c70e223e399fcb6eeb85884cab229a1b.jpg', 2000000),
(44, '', 16, 'Menu_KS', 'A4', '500', 'uyển', 1000, 2000, 1000, 'sp_1506652359_67a23a6a02f9ec0ff21b3caace0e3d06.jpg', 500000),
(45, '', 16, 'Catalogue_KS', 'A4', '1000', 'uyển', 1000, 2000, 1000, 'full_1506912879_d8764506b2902c849a6e644956bfaebd.jpg', 1000000),
(46, '', 16, 'Poster_KS', 'A5', '6000', 'ờ', 1000, 2000, 1000, 'sp_1506652362_c966fa297fba5cbfe92165a4c11b93e5.jpg', 6000000),
(47, '', 16, 'Túi giấy_KS', 'A4', '20000', 'ái', 1000, 2000, 1000, 'sp_1506652367_8940119d06b2251de451c4406bb004cc.jpg', 20000000),
(48, '', 16, 'Profile_KS', 'A4', '250', 'ập', 1000, 2000, 1000, 'full_1506912883_8a839ccf448f7111675fae5cf026b187.jpg', 250000),
(49, '', 16, 'Bao bì giấy_KS', 'A3', '4000', 'ái', 1000, 0, 0, 'full_1506912889_936c894d5560793cc6ce2bf679ae7754.jpg', 4000000),
(50, '', 16, 'Name Card_KS', 'A8', '1000', 'ộp', 1000, 0, 0, 'full_1506912893_fd9aff8885d6885964479324f315ea0f.jpg', 1000000),
(51, '', 17, 'Thiệp mời', 'A0', '10000', 'Cái', 100, 0, 0, '', 1000000),
(52, '', 18, 'Bao bì giấy_NH', 'A3', '6000', 'ái', 1, 0, 0, '', 6000),
(53, '', 18, 'Lịch_NH', 'A5', '80000', 'uyển', 1, 0, 0, '', 80000),
(54, '', 18, 'Menu_NH', 'A4', '80000', 'ập', 1, 0, 0, '', 80000),
(55, '', 18, 'Túi giấy_NH', 'A4', '25000', 'ái', 1, 0, 0, '', 25000),
(56, '', 18, 'Thiệp mời_NH', 'A6', '6000', 'ái', 1, 0, 0, '', 6000),
(57, '', 18, 'Name Card_NH', 'A8', '100000', 'ộp', 1, 0, 0, '', 100000),
(58, '', 19, 'Bao bì giấy_NH', 'A3', '6000', 'ái', 1, 0, 0, '', 6000),
(59, '', 19, 'Lịch_NH', 'A5', '80000', 'uyển', 1, 0, 0, '', 80000),
(60, '', 19, 'Menu_NH', 'A4', '80000', 'ập', 1, 0, 0, '', 80000),
(61, '', 19, 'Túi giấy_NH', 'A4', '25000', 'ái', 1, 0, 0, '', 25000),
(62, '', 19, 'Thiệp mời_NH', 'A6', '6000', 'ái', 1, 0, 0, '', 6000),
(63, '', 19, 'Name Card_NH', 'A8', '100000', 'ộp', 1, 0, 0, '', 100000),
(64, '', 20, 'Tem', 'A3', '1000', 'Quyển', 100, 0, -100, 'sp_1506654103_4339c14563456d76920dd3151ef38962.jpg', 100000),
(71, '', 21, 'Tui Giấy', 'A3', '50000', 'ái', 1000, 0, 0, '', 50000000),
(72, '', 21, 'Catalogue', 'A3', '60000', 'ái', 100, 0, 0, '', 6000000),
(73, '', 21, 'Name Card_NH', 'A8', '100000', 'ộp', 100, 0, 0, '', 10000000),
(74, '', 21, 'Catalogue', '50X20X50', '200000', 'Tập', 20, 0, 0, '', 4000000),
(75, '', 21, 'Catalogue', '50X20X50', '200000', 'Tập', 20, 0, 0, '', 4000000),
(76, '', 21, 'Name Card', 'A6', '100000', 'Hộp', 50, 0, 0, '', 5000000),
(77, '', 22, 'Thiệp mời', '100', '1000', 'Cái', 100, 0, 0, '', 100000),
(78, '', 23, 'Catalogue', '4A0(Khổ lớn)', '10', 'Tờ', 1000, 0, 0, '', 10000),
(79, '', 24, 'Giấy viết thư', '50x20x10', '500000', 'ập', 2000, 0, 0, '', 1000000000),
(80, '', 24, 'Profile', '50x20x10', '500000', 'ập', 2000, 0, 0, '', 1000000000),
(81, '', 24, 'Lịch_RS', 'A5', '50000', 'uyển', 100, 0, 0, '', 5000000),
(82, '', 24, 'Bao bì giấy_RS', 'A4', '5000', 'ái', 100, 0, 0, '', 500000),
(83, '', 24, 'Thiệp mời_RS', 'A6', '5000', 'ái', 100, 0, 0, '', 500000),
(84, '', 24, 'Name Card_RS', 'A8', '100000', 'ộp', 100, 0, 0, '', 10000000),
(85, '', 25, 'Túi giấy', 'A0 (Khổ lớn)', '1000', 'Cái', 200, 0, 0, '', 200000),
(86, '', 26, 'Poster', 'A4', '100000', 'Cái', 100, 0, 0, '', 10000000),
(87, '', 26, 'Brochure', 'A4', '500000', 'Tập', 10, 0, 0, '', 5000000),
(88, '', 27, 'Túi giấy', 'A1', '1000', 'Cái', 1000, 0, 0, '', 1000000),
(89, '', 28, 'Profile_RS', 'A4', '200000', 'Tập', 1000, 0, 0, '', 200000000),
(90, '', 28, 'Túi giấy_RS', 'A4', '30000', 'Cái', 1000, 0, 0, '', 30000000),
(91, '', 28, 'Lịch_RS', 'A5', '50000', 'Quyển', 1000, 0, 0, '', 50000000),
(92, '', 28, 'Bao bì giấy_RS', 'A4', '5000', 'Cái', 1000, 0, 0, '', 5000000),
(93, '', 29, 'Bao bì giấy_NH', 'A3', '6000', 'Cái', 10, 0, 0, '', 60000),
(94, '', 29, 'Lịch_NH', 'A5', '80000', 'Quyển', 10, 0, 0, '', 800000),
(95, '', 29, 'Menu_NH', 'A4', '80000', 'Tập', 10, 0, 0, '', 800000),
(96, '', 29, 'Túi giấy_NH', 'A4', '25000', 'Cái', 10, 0, 0, '', 250000),
(98, '', 30, 'Brochure', 'A1', '60000', 'Cái', 40, 0, 0, '', 2400000),
(99, '', 31, 'Hóa đơn VAT', 'a0', '100000', 'Tập', 10, 0, 0, '', 1000000),
(100, '', 32, 'Profile_RS', 'A4', '200000', 'Tập', 100, 0, 0, '', 20000000),
(101, '', 32, 'Túi giấy_RS', 'A4', '30000', 'Cái', 100, 0, 0, '', 3000000),
(102, '', 32, 'Lịch_RS', 'A5', '50000', 'Quyển', 100, 0, 0, '', 5000000),
(103, '', 32, 'Bao bì giấy_RS', 'A4', '5000', 'Cái', 100, 0, 0, '', 500000),
(104, '', 32, 'Thiệp mời_RS', 'A6', '5000', 'Cái', 100, 0, 0, '', 500000),
(105, '', 32, 'Name Card_RS', 'A8', '100000', 'Hộp', 100, 0, 0, '', 10000000),
(106, '', 33, 'Thiệp mời', 'A0', '2000', 'Tờ', 1000, 0, 0, '', 2000000),
(107, '', 33, 'Thiệp mời', 'A0', '2000', 'Tờ', 500, 0, 0, '', 1000000),
(108, '', 34, 'Bao bì giấy_NH', 'A3', '6000', 'Cái', 100, 0, 0, '', 600000),
(109, '', 34, 'Lịch_NH', 'A5', '80000', 'Quyển', 100, 0, 0, '', 8000000),
(110, '', 34, 'Menu_NH', 'A4', '80000', 'Tập', 100, 0, 0, '', 8000000),
(111, '', 34, 'Túi giấy_NH', 'A4', '25000', 'Cái', 100, 0, 0, '', 2500000);

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
(13, 108, '2017-09-03', 3, '4dbc05cb706a63cfb7b55271356622ba', 1504401669),
(14, 108, '2017-09-04', 3, '021280e4747454f771921a9df14b2c82', 1504490310),
(15, 108, '2017-09-05', 4, '723ce48008248219405a6c9b363f3054', 1504544786),
(16, 1, '2017-09-05', 3, '75a3ed1d17be67ab2a2303fa4c27e98e', 1504544919),
(17, 113, '2017-09-05', 1, '723ce48008248219405a6c9b363f3054', 1504614726),
(18, 113, '2017-09-06', 4, 'aa5f7d168edb7c995371c3cde461b3a5', 1504631375),
(19, 112, '2017-09-06', 2, '9efd86ec27fe282fe2f9988b4ab9d6a4', 1504694280),
(20, 108, '2017-09-06', 1, 'aa5f7d168edb7c995371c3cde461b3a5', 1504701230),
(21, 113, '2017-09-07', 1, 'aa5f7d168edb7c995371c3cde461b3a5', 1504717763),
(22, 108, '2017-09-07', 4, 'b2d9cc959dd66ddd75a64e19b7fa8f1f', 1504722983),
(23, 1, '2017-09-07', 2, 'b2d9cc959dd66ddd75a64e19b7fa8f1f', 1504752393),
(24, 108, '2017-09-08', 2, '596b4a836be26266b9e130b9a7bb4bcc', 1504833187),
(25, 1, '2017-09-08', 2, '596b4a836be26266b9e130b9a7bb4bcc', 1504835989),
(26, 113, '2017-09-08', 2, 'd55954927f376ec6884ebaea71353563', 1504836947),
(27, 110, '2017-09-08', 2, 'd55954927f376ec6884ebaea71353563', 1504843364),
(28, 108, '2017-09-09', 2, 'f9cbaf579148d811b8401e38c1a70f79', 1504925514),
(29, 1, '2017-09-09', 2, 'cb55f872f22b451e40c24cd0e4b1ac9c', 1504942340),
(30, 112, '2017-09-09', 2, 'f9cbaf579148d811b8401e38c1a70f79', 1504945460),
(31, 114, '2017-09-09', 1, 'cb55f872f22b451e40c24cd0e4b1ac9c', 1504950654),
(32, 115, '2017-09-09', 1, '89a64bc4898dfd10a25bd56115b7f96c', 1504951137),
(33, 113, '2017-09-09', 1, 'f9cbaf579148d811b8401e38c1a70f79', 1504967859),
(34, 108, '2017-09-10', 2, '5ba5b36d6e1d81d21d67ddfb2e837662', 1504976471),
(35, 1, '2017-09-10', 3, '3c5604c6204be289670e0240cec60fc9', 1504976561),
(36, 113, '2017-09-10', 1, 'f9cbaf579148d811b8401e38c1a70f79', 1504976785),
(37, 1, '2017-09-11', 2, '7dbe2dc500afda367780ca5fc386b818', 1505092605),
(38, 114, '2017-09-11', 2, 'b15a5d009a8ccbea98071bd68018941e', 1505096095),
(39, 1, '2017-09-12', 1, '71e6d5a6a72f270556c43519387d5b07', 1505180054),
(40, 114, '2017-09-12', 1, 'd9b2d5b4f49a52c84afe3cff26a8d8c1', 1505186503),
(41, 1, '2017-09-14', 15, '7103133bf09550e39eb704f378aa8a38', 1505376983),
(42, 115, '2017-09-14', 7, '33db181a13cb162ef3d9af4d0e5ed78a', 1505377108),
(43, 114, '2017-09-14', 3, '80bf8deff767d6d7f0e248d56cfa7f7a', 1505377125),
(44, 117, '2017-09-14', 1, 'cd1842f9fcd9e746e5b64a0274c6dc0a', 1505380961),
(45, 119, '2017-09-14', 1, 'cd1842f9fcd9e746e5b64a0274c6dc0a', 1505382333),
(46, 120, '2017-09-14', 1, 'cd1842f9fcd9e746e5b64a0274c6dc0a', 1505382505),
(47, 121, '2017-09-14', 1, '7103133bf09550e39eb704f378aa8a38', 1505393564),
(48, 1, '2017-09-15', 8, '21d9c7dc5ef15ee037b4418de4b9c6a2', 1505439050),
(49, 115, '2017-09-15', 1, '385f02cf8465b9bf9d9163ab74ec98ef', 1505444436),
(50, 121, '2017-09-15', 2, '79a0c6b1051d43c264aad48856dc69b5', 1505445561),
(51, 1, '2017-09-16', 33, '92dbdb1240844d2672851d820f865b5f', 1505527324),
(52, 121, '2017-09-16', 2, '99ea87b30e459912ea63331f64d40e5f', 1505533375),
(53, 120, '2017-09-16', 2, '99ea87b30e459912ea63331f64d40e5f', 1505533770),
(54, 114, '2017-09-16', 2, 'a2940a825f72645a34a54eba5b3d8d8c', 1505534269),
(55, 115, '2017-09-16', 9, 'a2940a825f72645a34a54eba5b3d8d8c', 1505545706),
(56, 120, '2017-09-18', 1, '57ed3c4131d8f249f893864bf0bbd44d', 1505706272),
(57, 1, '2017-09-19', 2, '99d85b0bc7218d048a9c594424ebc7e9', 1505793761),
(58, 114, '2017-09-19', 1, '570b877f50556c3be331cf703c3b12d8', 1505793854),
(59, 121, '2017-09-19', 1, '570b877f50556c3be331cf703c3b12d8', 1505794756),
(60, 120, '2017-09-19', 3, 'bf4ee3c2761070e677faeb9506df5220', 1505795645),
(61, 120, '2017-09-20', 4, 'fa2b879d518773751dc89d6f80fa4de8', 1505843086),
(62, 1, '2017-09-20', 8, 'e0fff928c66c2370a91f87f648fd5116', 1505873324),
(63, 1, '2017-09-21', 4, 'f31aee48ab72d62153e3f7a4271d5fd6', 1505957089),
(64, 120, '2017-09-21', 3, 'f31aee48ab72d62153e3f7a4271d5fd6', 1505959392),
(65, 122, '2017-09-21', 3, 'f31aee48ab72d62153e3f7a4271d5fd6', 1505962248),
(66, 117, '2017-09-21', 1, 'f31aee48ab72d62153e3f7a4271d5fd6', 1506011533),
(67, 117, '2017-09-22', 3, '8af5132dbe521863af177d82a7ff2e83', 1506013944),
(68, 1, '2017-09-22', 6, '58b25c13fad07477bdde6be14889b7dc', 1506014014),
(69, 120, '2017-09-22', 1, 'f31aee48ab72d62153e3f7a4271d5fd6', 1506014133),
(70, 122, '2017-09-22', 1, 'f31aee48ab72d62153e3f7a4271d5fd6', 1506014310),
(71, 121, '2017-09-22', 1, 'f31aee48ab72d62153e3f7a4271d5fd6', 1506015163),
(72, 114, '2017-09-22', 16, '8af5132dbe521863af177d82a7ff2e83', 1506043391),
(73, 118, '2017-09-22', 1, 'ce850a96c20be2223ba028fad620ddb5', 1506045702),
(74, 124, '2017-09-22', 1, 'd9534a2d3109e0a3a9fc83cda58d2066', 1506046268),
(75, 125, '2017-09-22', 2, 'd9534a2d3109e0a3a9fc83cda58d2066', 1506046269),
(76, 115, '2017-09-22', 3, '41ed1bf67a04f0e8c203f7994e6917cc', 1506046320),
(77, 123, '2017-09-22', 1, 'ce850a96c20be2223ba028fad620ddb5', 1506046354),
(78, 114, '2017-09-24', 1, '0d60e619c66e8f7dd66aa52b172cc47d', 1506257989),
(79, 114, '2017-09-25', 1, '1e09edfc6a0d7a5e3232a13ebb193851', 1506302420),
(80, 1, '2017-09-26', 1, '328d62673e8f93380a33e3015d606b08', 1506427828),
(81, 120, '2017-09-27', 1, '7704d2218615ce55b179b22648eea624', 1506485917),
(82, 123, '2017-09-27', 1, 'be033b768202ca4a6f9447d817424906', 1506498155),
(83, 1, '2017-09-28', 2, 'bafc4a0312affff47d734e51dcf8301c', 1506568334),
(84, 114, '2017-09-28', 8, 'c4fd5e13edd511d6cbb28a7e3c5bc8e7', 1506569215),
(85, 120, '2017-09-28', 1, '0941031399a6369ae0afba5be3991f40', 1506571245),
(86, 115, '2017-09-28', 1, '348745b9f3099b3067be70f9460eb6ec', 1506589659),
(87, 120, '2017-09-29', 2, 'dc02a7b35ec74db45399ee41d80bfb03', 1506628807),
(88, 1, '2017-09-29', 11, '5ec2eb0e85c5e4ffd9d1a1ac24bc62ea', 1506648489),
(89, 145, '2017-09-29', 1, '9edc84768bdccc493589052d5e7c1015', 1506651270),
(90, 140, '2017-09-29', 1, '9edc84768bdccc493589052d5e7c1015', 1506652257),
(91, 147, '2017-09-29', 1, 'cd244719613d6191d729d971629ff972', 1506653512),
(92, 148, '2017-09-29', 5, '40a868617cba3086a158a43ca4aefda8', 1506653694),
(93, 114, '2017-09-29', 5, 'd37a2759a0678188d5e1481d482d1832', 1506653906),
(94, 118, '2017-09-29', 2, 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 1506654056),
(95, 133, '2017-09-29', 1, '83bc7ffca5a9844b6b7c8f00c161e804', 1506654181),
(96, 125, '2017-09-29', 2, 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 1506655437),
(97, 141, '2017-09-29', 1, '83bc7ffca5a9844b6b7c8f00c161e804', 1506655603),
(98, 137, '2017-09-29', 1, '83bc7ffca5a9844b6b7c8f00c161e804', 1506656783),
(99, 139, '2017-09-29', 1, 'd37a2759a0678188d5e1481d482d1832', 1506656873),
(100, 129, '2017-09-29', 1, '83bc7ffca5a9844b6b7c8f00c161e804', 1506658935),
(101, 115, '2017-09-29', 1, 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 1506659147),
(102, 117, '2017-09-29', 1, 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 1506659244),
(103, 124, '2017-09-29', 1, 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 1506659569),
(104, 149, '2017-09-29', 1, 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 1506659901),
(105, 161, '2017-09-29', 2, '40a868617cba3086a158a43ca4aefda8', 1506673940),
(106, 161, '2017-09-30', 1, '4358baaf34cccd17bc2472cb3e21352c', 1506735779),
(107, 1, '2017-09-30', 1, '86e4dcac23e741d70bd2dec691ce708e', 1506736120),
(108, 167, '2017-09-30', 1, '4358baaf34cccd17bc2472cb3e21352c', 1506736353),
(109, 155, '2017-09-30', 1, '4358baaf34cccd17bc2472cb3e21352c', 1506737827),
(110, 156, '2017-09-30', 1, '4358baaf34cccd17bc2472cb3e21352c', 1506738081),
(111, 148, '2017-09-30', 1, '4358baaf34cccd17bc2472cb3e21352c', 1506762146),
(112, 1, '2017-10-02', 1, '12e302238dff543a195a887bc7a89c41', 1506906714),
(113, 162, '2017-10-02', 3, '6b90c04fd7a6fe3dbac542156423f78c', 1506906796),
(114, 161, '2017-10-02', 1, '6b90c04fd7a6fe3dbac542156423f78c', 1506914635),
(115, 1, '2017-10-03', 2, '25dc62fd0b03052a16c67a80d18454a0', 1506993066),
(116, 162, '2017-10-03', 1, '4dff5f62de1d7ef959595b2a368d8bbf', 1506993655),
(117, 167, '2017-10-03', 1, '4dff5f62de1d7ef959595b2a368d8bbf', 1507002811),
(118, 150, '2017-10-03', 1, '4dff5f62de1d7ef959595b2a368d8bbf', 1507003026),
(119, 161, '2017-10-03', 1, '4dff5f62de1d7ef959595b2a368d8bbf', 1507021763),
(120, 150, '2017-10-04', 3, 'f2b7813cdcc98a72231fbe65f20c12b0', 1507103032),
(121, 1, '2017-10-04', 1, '92e197ce9d2dbfcc3ddbf5040840cc5d', 1507103036),
(122, 161, '2017-10-04', 1, '75dc121fa1743c26e2db6f070c3ddecf', 1507108842),
(123, 1, '2017-10-05', 56, '13ac6a37fe9f2aad41b9476c44d84f9d', 1507166356),
(124, 161, '2017-10-05', 6, '13ac6a37fe9f2aad41b9476c44d84f9d', 1507186469),
(125, 150, '2017-10-05', 4, '99ae55a45022ebe4fa10099cd5d991c6', 1507187779),
(126, 167, '2017-10-05', 1, '538e2237afe1d01424d8784df42badb7', 1507191009),
(127, 154, '2017-10-05', 1, 'f61d0611e53afbeda7bc605ad5d0b812', 1507191015),
(128, 158, '2017-10-05', 1, '13ac6a37fe9f2aad41b9476c44d84f9d', 1507191461),
(129, 151, '2017-10-05', 1, 'f61d0611e53afbeda7bc605ad5d0b812', 1507192337),
(130, 153, '2017-10-05', 1, '53a75247165f3f501b025e40860fde7e', 1507192386),
(131, 160, '2017-10-05', 1, '53a75247165f3f501b025e40860fde7e', 1507194033),
(132, 168, '2017-10-05', 1, '13ac6a37fe9f2aad41b9476c44d84f9d', 1507194515),
(133, 1, '2017-10-06', 1, '04ad23d99a1f4687b4b02de246bf6177', 1507279095),
(134, 151, '2017-10-07', 1, 'b69754f586e8d6c655aec4fd4265bf49', 1507345222),
(135, 159, '2017-10-07', 1, 'b80a2f2a70b975430b79c1bb69409d53', 1507345271),
(136, 1, '2017-10-07', 1, 'c2a0a175a2ef16073319ab8014ce9253', 1507349353),
(137, 157, '2017-10-07', 1, 'c2a0a175a2ef16073319ab8014ce9253', 1507349383),
(138, 163, '2017-10-07', 3, '1cf88c49725c7e467dd3293ff16ec84f', 1507351119),
(139, 157, '2017-10-08', 1, '8b52e7052bfb53fac3d4e0ec234284d6', 1507463567),
(140, 1, '2017-10-08', 1, 'f58982197ce08e041f4ba90992d8d8e8', 1507467503),
(141, 1, '2017-10-09', 1, '6e3898a03d492bfe83f99d2d16974fa8', 1507539159),
(142, 150, '2017-10-09', 1, '4091e83721a0a0546b6a30e3f0c2a235', 1507539618),
(143, 155, '2017-10-10', 1, '4e5e5a0d35acae77361b41950c56b1eb', 1507598888),
(144, 1, '2017-10-10', 2, '232a97dc6e8a4f8cf20a0f404225a1cc', 1507599951),
(145, 167, '2017-10-10', 1, '7340deabf84fd8e5f8c940dd8bfb969d', 1507601186);

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
  `msg` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_notify`
--

INSERT INTO `olala3w_notify` (`notify_id`, `calendar`, `type`, `content`, `msg`, `created_time`, `user_id`) VALUES
(1, 1, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000001', 1505126387, 114),
(2, 2, 3, '', 'Đơn hàng  mã số: CT-2017000001 được chuyển đến bộ phận thiết kế', 1505377132, 114),
(3, 3, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000002', 1505381347, 114),
(4, 4, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000003', 1505384483, 114),
(5, 5, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000004', 1505536780, 1),
(6, 6, 3, '', 'Đơn hàng  mã số: CT-2017000004 được chuyển đến bộ phận thiết kế', 1505546245, 1),
(7, 7, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000005', 1505546492, 114),
(8, 8, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000005', 1505546496, 114),
(9, 9, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000006', 1505547934, 1),
(10, 10, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000007', 1505548681, 120),
(11, 11, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000008', 1505551545, 114),
(12, 12, 3, '', 'Đơn hàng  mã số: CT-2017000004 được chuyển đến bộ phận xuất kẽm', 1505551642, 115),
(13, 13, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000009', 1505794050, 114),
(14, 14, 3, '', 'Đơn hàng  mã số: CT-2017000007 được chuyển đến bộ phận xuất kẽm', 1505796143, 120),
(15, 15, 14, '', 'Đơn hàng  mã số: CT-2017000007 có thông báo mới : Thêm 20 Poster kích thước 50cmx100cm', 1505901979, 120),
(16, 16, 14, '', 'Đơn hàng  mã số: CT-2017000007 có thông báo mới : Làm gấp. Hạn giao hàng rút xuống còn 30/10', 1505902246, 120),
(17, 17, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000010', 1505902570, 1),
(18, 18, 14, '', 'Đơn hàng  mã số: CT-2017000007 có thông báo mới : In xong trong ngày 15/10 để gủi qua đóng gói', 1505902690, 120),
(19, 19, 3, '', 'Đơn hàng  mã số: CT-2017000010 được chuyển đến bộ phận thiết kế', 1505902915, 1),
(20, 20, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000011', 1505964286, 122),
(21, 21, 14, '', 'Đơn hàng  mã số: CT-2017000011 có thông báo mới : vf', 1505964544, 122),
(22, 22, 14, '', 'Đơn hàng  mã số: CT-2017000011 có thông báo mới : ưer', 1505964546, 122),
(23, 23, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000011', 1505984483, 1),
(24, 24, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000012', 1505986739, 1),
(25, 25, 3, '', 'Đơn hàng  mã số: CT-2017000007 được chuyển đến bộ phận in', 1506014969, 117),
(26, 26, 3, '', 'Đơn hàng  mã số: CT-2017000007 được chuyển đến bộ phận đóng gói', 1506045708, 118),
(27, 27, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000013', 1506052732, 114),
(28, 28, 3, '', 'Đơn hàng  mã số: CT-2017000013 được chuyển đến bộ phận thiết kế', 1506052831, 114),
(29, 29, 3, '', 'Đơn hàng  mã số: CT-2017000009 được chuyển đến bộ phận thiết kế', 1506052933, 114),
(30, 30, 3, '', 'Đơn hàng  mã số: CT-2017000008 được chuyển đến bộ phận thiết kế', 1506052974, 114),
(31, 31, 14, '', 'Đơn hàng  mã số: CT-2017000013 có thông báo mới : Yêu cầu làm trước ngày 30/09', 1506053032, 114),
(32, 32, 14, '', 'Đơn hàng  mã số: CT-2017000013 có thông báo mới : https://www.youtube.com/watch?v=AEpxtnGgHio vào đây lấy logo', 1506053114, 114),
(33, 33, 14, '', 'Đơn hàng  mã số: CT-2017000003 có thông báo mới : Khách chưa thânh toán, tạm dựng', 1506054380, 114),
(34, 34, 3, '', 'Đơn hàng  mã số: CT-2017000012 bị tạm hoãn.', 1506571791, 1),
(35, 35, 3, '', 'Đơn hàng  mã số: CT-2017000011 bị tạm hoãn.', 1506571820, 1),
(36, 36, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000014', 1506585462, 1),
(37, 37, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000015', 1506651882, 1),
(38, 38, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000016', 1506652131, 145),
(39, 39, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000016', 1506652132, 145),
(40, 40, 3, '', 'Đơn hàng  mã số: CT-2017000014 được chuyển đến bộ phận đóng gói', 1506652235, 1),
(41, 41, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000017', 1506653980, 114),
(42, 42, 3, '', 'Đơn hàng  mã số: CT-2017000017 được chuyển đến bộ phận in', 1506654005, 114),
(43, 43, 3, '', 'Đơn hàng  mã số: CT-2017000017 được chuyển đến bộ phận đóng gói', 1506654067, 118),
(44, 44, 3, '', 'Đơn hàng  mã số: CT-2017000017 được chuyển đến bộ phận giao hàng', 1506654881, 148),
(45, 45, 3, '', 'Đơn hàng  mã số: CT-2017000015 được chuyển đến bộ phận in', 1506654932, 1),
(46, 46, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000018', 1506654938, 133),
(47, 47, 14, '', 'Đơn hàng  mã số: CT-2017000018 có thông báo mới : Giao 50 hộp card trước', 1506655151, 133),
(48, 48, 3, '', 'Đơn hàng  mã số: CT-2017000018 được chuyển đến bộ phận thiết kế', 1506655241, 133),
(49, 49, 3, '', 'Đơn hàng  mã số: CT-2017000006 được chuyển đến bộ phận đóng gói', 1506655652, 1),
(50, 50, 3, '', 'Đơn hàng  mã số: CT-2017000018 bị tạm hoãn.', 1506656051, 133),
(51, 51, 3, '', 'Đơn hàng  mã số: CT-2017000018 tiếp tục thực hiện.', 1506656066, 133),
(52, 52, 14, '', 'Đơn hàng  mã số: CT-2017000018 có thông báo mới : Làm thêm 10 cái catalogue', 1506656145, 133),
(53, 53, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000019', 1506656740, 114),
(54, 54, 3, '', 'Đơn hàng  mã số: CT-2017000019 được chuyển đến bộ phận thiết kế', 1506656853, 114),
(55, 55, 11, '', 'Đơn hàng mới mã số: CT-2017000018 được chuyển cho Nguyễn Thị Thi của phòng thiết kế', 1506656862, 137),
(56, 56, 14, '', 'Đơn hàng  mã số: CT-2017000019 có thông báo mới : nhshdasd', 1506656885, 139),
(57, 57, 14, '', 'Đơn hàng  mã số: CT-2017000019 có thông báo mới : dqwd23rwqq', 1506656888, 139),
(58, 58, 14, '', 'Đơn hàng  mã số: CT-2017000019 có thông báo mới : Cần thiết kế nhanh trước ngày 30/04\n', 1506656911, 139),
(59, 59, 14, '', 'Đơn hàng  mã số: CT-2017000019 có thông báo mới : File thiết kế đã hoàn thành đợi khách', 1506657562, 137),
(60, 60, 3, '', 'Đơn hàng  mã số: CT-2017000019 được chuyển đến bộ phận xuất kẽm', 1506658079, 137),
(61, 61, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000020', 1506659000, 114),
(62, 62, 14, '', 'Đơn hàng  mã số: CT-2017000005 có thông báo mới : Nhádn', 1506659044, 114),
(63, 63, 3, '', 'Đơn hàng  mã số: CT-2017000020 được chuyển đến bộ phận thiết kế', 1506659112, 114),
(64, 64, 3, '', 'Đơn hàng  mã số: CT-2017000020 được chuyển đến bộ phận xuất kẽm', 1506659216, 115),
(65, 65, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000020', 1506659261, 129),
(66, 66, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000021', 1506659469, 129),
(67, 67, 3, '', 'Đơn hàng  mã số: CT-2017000004 được chuyển đến bộ phận in', 1506659484, 117),
(68, 68, 3, '', 'Đơn hàng  mã số: CT-2017000004 được chuyển đến bộ phận đóng gói', 1506659535, 118),
(69, 69, 3, '', 'Đơn hàng  mã số: CT-2017000007 được chuyển đến bộ phận giao hàng', 1506659614, 124),
(70, 70, 14, '', 'Đơn hàng  mã số: CT-2017000021 có thông báo mới : Thiết kế thêm bản cho mặt hàng catalogue', 1506659686, 129),
(71, 71, 3, '', 'Đơn hàng  mã số: CT-2017000017 đã được giao. Hoàn tất đơn hàng', 1506659726, 125),
(72, 72, 3, '', 'Đơn hàng  mã số: CT-2017000021 được chuyển đến bộ phận thiết kế', 1506659825, 129),
(73, 73, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000021', 1506737899, 155),
(74, 74, 3, '', 'Đơn hàng  mã số: CT-2017000021 được chuyển đến bộ phận thiết kế', 1506738058, 155),
(75, 75, 11, '', 'Đơn hàng mới mã số: CT-2017000021 được chuyển cho Trương Hoàng Nhân của phòng thiết kế', 1506754602, 156),
(76, 76, 16, '', 'Báo cáo thành phẩm của đơn hàng CT-2017000014', 1506996290, 162),
(77, 77, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000022', 1507108781, 150),
(78, 78, 3, '', 'Đơn hàng  mã số: CT-2017000022 được chuyển đến bộ phận thiết kế', 1507108799, 150),
(79, 79, 3, '', 'Đơn hàng  mã số: CT-2017000022 được chuyển đến bộ phận xuất kẽm', 1507108909, 161),
(80, 80, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000023', 1507187854, 150),
(81, 81, 3, '', 'Đơn hàng  mã số: CT-2017000023 được chuyển đến bộ phận thiết kế', 1507187890, 150),
(82, 82, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000024', 1507187959, 150),
(83, 83, 3, '', 'Đơn hàng  mã số: CT-2017000024 được chuyển đến bộ phận thiết kế', 1507188198, 150),
(84, 84, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000025', 1507191438, 1),
(85, 85, 3, '', 'Đơn hàng  mã số: CT-2017000025 được chuyển đến bộ phận thiết kế', 1507191488, 1),
(86, 86, 14, '', 'Đơn hàng  mã số: CT-2017000024 có thông báo mới : anhdqd', 1507191548, 158),
(87, 87, 14, '', 'Đơn hàng  mã số: CT-2017000024 có thông báo mới : mhdqwb', 1507191551, 158),
(88, 88, 11, '', 'Đơn hàng mới mã số: CT-2017000025 được chuyển cho Trương Hoàng Nhân của phòng thiết kế', 1507191992, 158),
(89, 89, 11, '', 'Đơn hàng mới mã số: CT-2017000024 được chuyển cho Trương Hoàng Nhân của phòng thiết kế', 1507191996, 158),
(90, 90, 3, '', 'Đơn hàng  mã số: CT-2017000023 được chuyển đến bộ phận xuất kẽm', 1507192043, 158),
(91, 91, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000026', 1507192538, 151),
(92, 92, 3, '', 'Đơn hàng  mã số: CT-2017000026 được chuyển đến bộ phận thiết kế', 1507192611, 151),
(93, 93, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000026', 1507192628, 153),
(94, 94, 3, '', 'Đơn hàng  mã số: CT-2017000026 bị tạm hoãn.', 1507192636, 151),
(95, 95, 14, '', 'Đơn hàng  mã số: CT-2017000026 có thông báo mới : dhuqwhdq', 1507192752, 153),
(96, 96, 14, '', 'Đơn hàng  mã số: CT-2017000026 có thông báo mới : hdqwudh', 1507192754, 153),
(97, 97, 3, '', 'Đơn hàng  mã số: CT-2017000026 tiếp tục thực hiện.', 1507192802, 151),
(98, 98, 14, '', 'Đơn hàng  mã số: CT-2017000026 có thông báo mới : Đơn hàng này phải giao vào ngày 20/10', 1507192824, 151),
(99, 99, 3, '', 'Đơn hàng  mã số: CT-2017000026 bị tạm hoãn.', 1507192913, 151),
(100, 100, 3, '', 'Đơn hàng  mã số: CT-2017000026 tiếp tục thực hiện.', 1507192920, 151),
(101, 101, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000027', 1507194160, 150),
(102, 102, 3, '', 'Đơn hàng  mã số: CT-2017000027 được chuyển đến bộ phận thiết kế', 1507194177, 150),
(103, 103, 14, '', 'Đơn hàng  mã số: CT-2017000026 có thông báo mới : báchasc', 1507194200, 160),
(104, 104, 14, '', 'Đơn hàng  mã số: CT-2017000026 có thông báo mới : nạd', 1507194201, 160),
(105, 105, 14, '', 'Đơn hàng  mã số: CT-2017000026 có thông báo mới : ádnasd', 1507194202, 160),
(106, 106, 3, '', 'Đơn hàng  mã số: CT-2017000027 được chuyển đến bộ phận xuất kẽm', 1507194495, 160),
(107, 107, 3, '', 'Đơn hàng  mã số: CT-2017000027 được chuyển đến bộ phận in', 1507194561, 168),
(108, 108, 14, '', 'Đơn hàng  mã số: CT-2017000027 có thông báo mới : nádsa\n', 1507194576, 160),
(109, 109, 14, '', 'Đơn hàng  mã số: CT-2017000027 có thông báo mới : dqwd', 1507194587, 160),
(110, 110, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000028', 1507345572, 151),
(111, 111, 3, '', 'Đơn hàng  mã số: CT-2017000028 được chuyển đến bộ phận thiết kế', 1507345646, 151),
(112, 112, 11, '', 'Đơn hàng mới mã số: CT-2017000028 được chuyển cho Hồ Thị Thu Giang của phòng thiết kế', 1507345691, 159),
(113, 113, 14, '', 'Đơn hàng  mã số: CT-2017000026 có thông báo mới : https://www.facebook.com/TruongNgocXuan?hc_ref=ARR7SFetkjKbMhB1bvEv3kyQNWAEPVHX4SiF7S6snBDyJZUDEGsWXuiNy7VaO_c4TlA FB cua khach', 1507345785, 159),
(114, 114, 14, '', 'Đơn hàng  mã số: CT-2017000026 có thông báo mới : lam gap 5000', 1507345813, 159),
(115, 115, 14, '', 'Đơn hàng  mã số: CT-2017000025 có thông báo mới : Đơn hang thiết kế trễ chút', 1507349528, 157),
(116, 116, 3, '', 'Đơn hàng  mã số: CT-2017000025 được chuyển đến bộ phận xuất kẽm', 1507349936, 157),
(117, 117, 3, '', 'Đơn hàng  mã số: CT-2017000024 được chuyển đến bộ phận xuất kẽm', 1507350748, 157),
(118, 118, 14, '', 'Đơn hàng  mã số: CT-2017000014 có thông báo mới : Bị trễ 3 hộp card', 1507351223, 163),
(119, 119, 16, '', 'Báo cáo thành phẩm của đơn hàng CT-2017000004', 1507351381, 163),
(120, 120, 16, '', 'Báo cáo thành phẩm của đơn hàng CT-2017000014', 1507351537, 163),
(121, 121, 3, '', 'Đơn hàng  mã số: CT-2017000006 được chuyển đến bộ phận giao hàng', 1507351547, 163),
(122, 122, 3, '', 'Đơn hàng  mã số: CT-2017000014 được chuyển đến bộ phận giao hàng', 1507351669, 163),
(123, 123, 2, '', 'Đơn hàng mới được tạo - Mã số CT-2017000029', 1507539645, 150);

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

--
-- Dumping data for table `olala3w_notify_logs`
--

INSERT INTO `olala3w_notify_logs` (`notify_logs_id`, `notify_user`, `ip`, `session`, `agent`, `modified_time`) VALUES
(0, 520, '117.3.0.177', 'f2b7813cdcc98a72231fbe65f20c12b0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507102980),
(1, 3, '116.110.218.149', '80bf8deff767d6d7f0e248d56cfa7f7a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', 1505377140),
(2, 7, '116.110.218.149', '3658d30e6a07eed828b91d0e9828d2f9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', 1505381700),
(3, 7, '116.110.218.149', '33db181a13cb162ef3d9af4d0e5ed78a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', 1505383320),
(4, 10, '116.110.218.149', 'cd1842f9fcd9e746e5b64a0274c6dc0a', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505384460),
(5, 12, '116.110.218.149', '33db181a13cb162ef3d9af4d0e5ed78a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', 1505384460),
(6, 12, '116.110.218.149', '80bf8deff767d6d7f0e248d56cfa7f7a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', 1505385840),
(7, 12, '116.110.100.89', '385f02cf8465b9bf9d9163ab74ec98ef', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', 1505444400),
(8, 12, '116.110.117.137', 'a2940a825f72645a34a54eba5b3d8d8c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1505545680),
(9, 20, '116.110.117.137', 'a2940a825f72645a34a54eba5b3d8d8c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1505545680),
(10, 17, '116.110.117.137', 'a2940a825f72645a34a54eba5b3d8d8c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1505546340),
(11, 16, '116.110.117.137', '99ea87b30e459912ea63331f64d40e5f', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505547180),
(12, 24, '116.110.117.137', '99ea87b30e459912ea63331f64d40e5f', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505547180),
(13, 32, '116.110.117.137', '99ea87b30e459912ea63331f64d40e5f', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505547180),
(14, 41, '116.110.117.137', 'a2940a825f72645a34a54eba5b3d8d8c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1505547900),
(15, 40, '116.110.117.137', '99ea87b30e459912ea63331f64d40e5f', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505547900),
(16, 49, '116.110.117.137', 'a2940a825f72645a34a54eba5b3d8d8c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1505548680),
(17, 21, '116.110.117.137', '99ea87b30e459912ea63331f64d40e5f', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505548740),
(18, 29, '116.110.117.137', '99ea87b30e459912ea63331f64d40e5f', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505548740),
(19, 37, '116.110.117.137', '99ea87b30e459912ea63331f64d40e5f', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505548740),
(20, 45, '116.110.117.137', '99ea87b30e459912ea63331f64d40e5f', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505548740),
(21, 53, '116.110.117.137', '99ea87b30e459912ea63331f64d40e5f', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505548740),
(22, 28, '116.110.117.137', 'a2940a825f72645a34a54eba5b3d8d8c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1505549100),
(23, 36, '116.110.117.137', 'a2940a825f72645a34a54eba5b3d8d8c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1505549100),
(24, 44, '116.110.117.137', 'a2940a825f72645a34a54eba5b3d8d8c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1505549100),
(25, 52, '116.110.117.137', 'a2940a825f72645a34a54eba5b3d8d8c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1505549100),
(26, 12, '116.110.117.137', '41ed1bf67a04f0e8c203f7994e6917cc', 'Mozilla/5.0 (iPad; CPU OS 8_4_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/47.0.2526.107 Mobile/12H321 Safari/600.1.4', 1505550300),
(27, 20, '116.110.117.137', '41ed1bf67a04f0e8c203f7994e6917cc', 'Mozilla/5.0 (iPad; CPU OS 8_4_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/47.0.2526.107 Mobile/12H321 Safari/600.1.4', 1505550300),
(28, 28, '116.110.117.137', '41ed1bf67a04f0e8c203f7994e6917cc', 'Mozilla/5.0 (iPad; CPU OS 8_4_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/47.0.2526.107 Mobile/12H321 Safari/600.1.4', 1505550300),
(29, 36, '116.110.117.137', '41ed1bf67a04f0e8c203f7994e6917cc', 'Mozilla/5.0 (iPad; CPU OS 8_4_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/47.0.2526.107 Mobile/12H321 Safari/600.1.4', 1505550300),
(30, 44, '116.110.117.137', '41ed1bf67a04f0e8c203f7994e6917cc', 'Mozilla/5.0 (iPad; CPU OS 8_4_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/47.0.2526.107 Mobile/12H321 Safari/600.1.4', 1505550300),
(31, 52, '116.110.117.137', '41ed1bf67a04f0e8c203f7994e6917cc', 'Mozilla/5.0 (iPad; CPU OS 8_4_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/47.0.2526.107 Mobile/12H321 Safari/600.1.4', 1505550300),
(32, 60, '116.110.117.137', 'a2940a825f72645a34a54eba5b3d8d8c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1505551620),
(33, 61, '116.110.117.137', '99ea87b30e459912ea63331f64d40e5f', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505551620),
(34, 16, '116.110.220.174', '57ed3c4131d8f249f893864bf0bbd44d', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505706240),
(35, 24, '116.110.220.174', '57ed3c4131d8f249f893864bf0bbd44d', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505706240),
(36, 40, '116.110.220.174', '57ed3c4131d8f249f893864bf0bbd44d', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505706240),
(37, 56, '116.110.220.174', '57ed3c4131d8f249f893864bf0bbd44d', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505706240),
(38, 17, '116.110.159.232', '570b877f50556c3be331cf703c3b12d8', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.3.8 (KHTML, like Gecko) Version/10.1.2 Safari/603.3.8', 1505793840),
(39, 49, '116.110.159.232', '570b877f50556c3be331cf703c3b12d8', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.3.8 (KHTML, like Gecko) Version/10.1.2 Safari/603.3.8', 1505793840),
(40, 21, '116.110.159.232', '570b877f50556c3be331cf703c3b12d8', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.3.8 (KHTML, like Gecko) Version/10.1.2 Safari/603.3.8', 1505794740),
(41, 29, '116.110.159.232', '570b877f50556c3be331cf703c3b12d8', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.3.8 (KHTML, like Gecko) Version/10.1.2 Safari/603.3.8', 1505794740),
(42, 37, '116.110.159.232', '570b877f50556c3be331cf703c3b12d8', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.3.8 (KHTML, like Gecko) Version/10.1.2 Safari/603.3.8', 1505794740),
(43, 45, '116.110.159.232', '570b877f50556c3be331cf703c3b12d8', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.3.8 (KHTML, like Gecko) Version/10.1.2 Safari/603.3.8', 1505794740),
(44, 61, '116.110.159.232', '570b877f50556c3be331cf703c3b12d8', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.3.8 (KHTML, like Gecko) Version/10.1.2 Safari/603.3.8', 1505794740),
(45, 71, '116.110.159.232', '570b877f50556c3be331cf703c3b12d8', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.3.8 (KHTML, like Gecko) Version/10.1.2 Safari/603.3.8', 1505794740),
(46, 16, '116.110.159.232', '462ea26d75bdac8feeeb19586341e732', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505795640),
(47, 24, '116.110.159.232', '462ea26d75bdac8feeeb19586341e732', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505795640),
(48, 40, '116.110.159.232', '462ea26d75bdac8feeeb19586341e732', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505795640),
(49, 56, '116.110.159.232', '462ea26d75bdac8feeeb19586341e732', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505795640),
(50, 66, '116.110.159.232', '462ea26d75bdac8feeeb19586341e732', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505795640),
(51, 16, '116.110.159.232', '99d85b0bc7218d048a9c594424ebc7e9', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505804220),
(52, 24, '116.110.159.232', '99d85b0bc7218d048a9c594424ebc7e9', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505804220),
(53, 40, '116.110.159.232', '99d85b0bc7218d048a9c594424ebc7e9', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505804220),
(54, 56, '116.110.159.232', '99d85b0bc7218d048a9c594424ebc7e9', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505804220),
(55, 66, '116.110.159.232', '99d85b0bc7218d048a9c594424ebc7e9', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505804220),
(56, 16, '123.19.166.171', 'bf4ee3c2761070e677faeb9506df5220', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505830920),
(57, 24, '123.19.166.171', 'bf4ee3c2761070e677faeb9506df5220', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505830920),
(58, 40, '123.19.166.171', 'bf4ee3c2761070e677faeb9506df5220', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505830920),
(59, 56, '123.19.166.171', 'bf4ee3c2761070e677faeb9506df5220', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505830920),
(60, 66, '123.19.166.171', 'bf4ee3c2761070e677faeb9506df5220', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505830920),
(61, 74, '123.19.166.171', 'bf4ee3c2761070e677faeb9506df5220', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505831400),
(62, 48, '123.19.166.171', 'bf4ee3c2761070e677faeb9506df5220', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505843220),
(63, 10, '123.19.166.171', 'bf4ee3c2761070e677faeb9506df5220', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505843220),
(64, 32, '123.19.166.171', 'bf4ee3c2761070e677faeb9506df5220', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505843220),
(65, 10, '116.110.7.255', 'b4f1ab13002c07db609551d819b75918', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505870520),
(66, 10, '116.110.148.33', '420249346a447c70703724e2eb50208a', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505901900),
(67, 80, '116.110.148.33', '420249346a447c70703724e2eb50208a', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505902560),
(68, 10, '14.236.12.212', 'fa2b879d518773751dc89d6f80fa4de8', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505912760),
(69, 10, '171.251.26.142', 'afb42effd87f6cbd8e7fc5a55783c5ea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505959380),
(70, 92, '171.251.26.142', 'afb42effd87f6cbd8e7fc5a55783c5ea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505964240),
(71, 105, '116.110.144.3', '290e9cd2f6b130aa2055c1847316caa6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1505988300),
(72, 114, '116.110.144.3', '290e9cd2f6b130aa2055c1847316caa6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1505988300),
(73, 10, '116.110.144.3', '9d74f1c88459e788f60a3743c62eee1e', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505989680),
(74, 92, '116.110.144.3', '9d74f1c88459e788f60a3743c62eee1e', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505989680),
(75, 103, '116.110.144.3', '9d74f1c88459e788f60a3743c62eee1e', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505989680),
(76, 112, '116.110.144.3', '9d74f1c88459e788f60a3743c62eee1e', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1505989680),
(77, 10, '14.233.171.234', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506005340),
(78, 92, '14.233.171.234', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506005340),
(79, 103, '14.233.171.234', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506005340),
(80, 112, '14.233.171.234', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506005340),
(81, 105, '14.233.171.234', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506005580),
(82, 114, '14.233.171.234', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506005580),
(83, 6, '113.189.60.38', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506011520),
(84, 11, '113.189.60.38', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506011520),
(85, 18, '113.189.60.38', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506011520),
(86, 26, '113.189.60.38', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506011520),
(87, 34, '113.189.60.38', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506011520),
(88, 42, '113.189.60.38', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506011520),
(89, 50, '113.189.60.38', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506011520),
(90, 58, '113.189.60.38', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506011520),
(91, 63, '113.189.60.38', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506011520),
(92, 68, '113.189.60.38', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506011520),
(93, 73, '113.189.60.38', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506011520),
(94, 82, '113.189.60.38', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506011520),
(95, 95, '113.189.60.38', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506011520),
(96, 106, '113.189.60.38', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506011520),
(97, 115, '113.189.60.38', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506011520),
(98, 21, '113.189.60.38', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506015120),
(99, 29, '113.189.60.38', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506015120),
(100, 37, '113.189.60.38', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506015120),
(101, 45, '113.189.60.38', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506015120),
(102, 61, '113.189.60.38', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506015120),
(103, 71, '113.189.60.38', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506015120),
(104, 85, '113.189.60.38', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506015180),
(105, 98, '113.189.60.38', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506015180),
(106, 109, '113.189.60.38', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506015180),
(107, 118, '113.189.60.38', 'f31aee48ab72d62153e3f7a4271d5fd6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506015180),
(108, 17, '116.110.144.3', '8af5132dbe521863af177d82a7ff2e83', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1506043380),
(109, 49, '116.110.144.3', '8af5132dbe521863af177d82a7ff2e83', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1506043380),
(110, 81, '116.110.144.3', '8af5132dbe521863af177d82a7ff2e83', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1506043380),
(111, 93, '116.110.144.3', '8af5132dbe521863af177d82a7ff2e83', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1506043380),
(112, 104, '116.110.144.3', '8af5132dbe521863af177d82a7ff2e83', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1506043380),
(113, 113, '116.110.144.3', '8af5132dbe521863af177d82a7ff2e83', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1506043380),
(114, 17, '116.110.144.3', 'ce850a96c20be2223ba028fad620ddb5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1506043380),
(115, 49, '116.110.144.3', 'ce850a96c20be2223ba028fad620ddb5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1506043380),
(116, 81, '116.110.144.3', 'ce850a96c20be2223ba028fad620ddb5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1506043380),
(117, 93, '116.110.144.3', 'ce850a96c20be2223ba028fad620ddb5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1506043380),
(118, 104, '116.110.144.3', 'ce850a96c20be2223ba028fad620ddb5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1506043380),
(119, 113, '116.110.144.3', 'ce850a96c20be2223ba028fad620ddb5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1506043380),
(120, 14, '116.110.144.3', 'ce850a96c20be2223ba028fad620ddb5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1506045660),
(121, 22, '116.110.144.3', 'ce850a96c20be2223ba028fad620ddb5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1506045660),
(122, 30, '116.110.144.3', 'ce850a96c20be2223ba028fad620ddb5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1506045660),
(123, 38, '116.110.144.3', 'ce850a96c20be2223ba028fad620ddb5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1506045660),
(124, 46, '116.110.144.3', 'ce850a96c20be2223ba028fad620ddb5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1506045660),
(125, 54, '116.110.144.3', 'ce850a96c20be2223ba028fad620ddb5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1506045660),
(126, 62, '116.110.144.3', 'ce850a96c20be2223ba028fad620ddb5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1506045660),
(127, 72, '116.110.144.3', 'ce850a96c20be2223ba028fad620ddb5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1506045660),
(128, 86, '116.110.144.3', 'ce850a96c20be2223ba028fad620ddb5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1506045660),
(129, 99, '116.110.144.3', 'ce850a96c20be2223ba028fad620ddb5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1506045720),
(130, 110, '116.110.144.3', 'ce850a96c20be2223ba028fad620ddb5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1506045720),
(131, 119, '116.110.144.3', 'ce850a96c20be2223ba028fad620ddb5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1506045720),
(132, 120, '116.110.144.3', 'ce850a96c20be2223ba028fad620ddb5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1506045720),
(133, 6, '116.110.144.3', 'd9534a2d3109e0a3a9fc83cda58d2066', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506046260),
(134, 11, '116.110.144.3', 'd9534a2d3109e0a3a9fc83cda58d2066', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506046260),
(135, 18, '116.110.144.3', 'd9534a2d3109e0a3a9fc83cda58d2066', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506046260),
(136, 26, '116.110.144.3', 'd9534a2d3109e0a3a9fc83cda58d2066', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506046260),
(137, 34, '116.110.144.3', 'd9534a2d3109e0a3a9fc83cda58d2066', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506046260),
(138, 42, '116.110.144.3', 'd9534a2d3109e0a3a9fc83cda58d2066', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506046260),
(139, 60, '116.110.144.3', 'd9534a2d3109e0a3a9fc83cda58d2066', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506046320),
(140, 70, '116.110.144.3', 'd9534a2d3109e0a3a9fc83cda58d2066', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506046320),
(141, 84, '116.110.144.3', 'd9534a2d3109e0a3a9fc83cda58d2066', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506046320),
(142, 89, '116.110.144.3', 'd9534a2d3109e0a3a9fc83cda58d2066', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506046320),
(143, 97, '116.110.144.3', 'd9534a2d3109e0a3a9fc83cda58d2066', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506046320),
(144, 108, '116.110.144.3', 'd9534a2d3109e0a3a9fc83cda58d2066', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506046320),
(145, 117, '116.110.144.3', 'd9534a2d3109e0a3a9fc83cda58d2066', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506046320),
(146, 60, '116.110.144.3', 'ce850a96c20be2223ba028fad620ddb5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1506046380),
(147, 70, '116.110.144.3', 'ce850a96c20be2223ba028fad620ddb5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1506046380),
(148, 84, '116.110.144.3', 'ce850a96c20be2223ba028fad620ddb5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1506046380),
(149, 89, '116.110.144.3', 'ce850a96c20be2223ba028fad620ddb5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1506046380),
(150, 97, '116.110.144.3', 'ce850a96c20be2223ba028fad620ddb5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1506046380),
(151, 108, '116.110.144.3', 'ce850a96c20be2223ba028fad620ddb5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1506046380),
(152, 117, '116.110.144.3', 'ce850a96c20be2223ba028fad620ddb5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', 1506046380),
(153, 17, '113.160.226.136', '366efa0c1f5f50fa71fc21c76810bbbb', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506049980),
(154, 49, '113.160.226.136', '366efa0c1f5f50fa71fc21c76810bbbb', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506049980),
(155, 81, '113.160.226.136', '366efa0c1f5f50fa71fc21c76810bbbb', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506049980),
(156, 93, '113.160.226.136', '366efa0c1f5f50fa71fc21c76810bbbb', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506049980),
(157, 104, '113.160.226.136', '366efa0c1f5f50fa71fc21c76810bbbb', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506049980),
(158, 113, '113.160.226.136', '366efa0c1f5f50fa71fc21c76810bbbb', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506049980),
(159, 60, '113.160.226.136', '41ed1bf67a04f0e8c203f7994e6917cc', 'Mozilla/5.0 (iPad; CPU OS 8_4_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/47.0.2526.107 Mobile/12H321 Safari/600.1.4', 1506050640),
(160, 70, '113.160.226.136', '41ed1bf67a04f0e8c203f7994e6917cc', 'Mozilla/5.0 (iPad; CPU OS 8_4_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/47.0.2526.107 Mobile/12H321 Safari/600.1.4', 1506050640),
(161, 84, '113.160.226.136', '41ed1bf67a04f0e8c203f7994e6917cc', 'Mozilla/5.0 (iPad; CPU OS 8_4_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/47.0.2526.107 Mobile/12H321 Safari/600.1.4', 1506050640),
(162, 89, '113.160.226.136', '41ed1bf67a04f0e8c203f7994e6917cc', 'Mozilla/5.0 (iPad; CPU OS 8_4_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/47.0.2526.107 Mobile/12H321 Safari/600.1.4', 1506050640),
(163, 97, '113.160.226.136', '41ed1bf67a04f0e8c203f7994e6917cc', 'Mozilla/5.0 (iPad; CPU OS 8_4_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/47.0.2526.107 Mobile/12H321 Safari/600.1.4', 1506050640),
(164, 108, '113.160.226.136', '41ed1bf67a04f0e8c203f7994e6917cc', 'Mozilla/5.0 (iPad; CPU OS 8_4_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/47.0.2526.107 Mobile/12H321 Safari/600.1.4', 1506050640),
(165, 117, '113.160.226.136', '41ed1bf67a04f0e8c203f7994e6917cc', 'Mozilla/5.0 (iPad; CPU OS 8_4_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/47.0.2526.107 Mobile/12H321 Safari/600.1.4', 1506050700),
(166, 17, '113.160.226.136', '41ed1bf67a04f0e8c203f7994e6917cc', 'Mozilla/5.0 (iPad; CPU OS 8_4_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/47.0.2526.107 Mobile/12H321 Safari/600.1.4', 1506050700),
(167, 49, '113.160.226.136', '41ed1bf67a04f0e8c203f7994e6917cc', 'Mozilla/5.0 (iPad; CPU OS 8_4_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/47.0.2526.107 Mobile/12H321 Safari/600.1.4', 1506050700),
(168, 81, '113.160.226.136', '41ed1bf67a04f0e8c203f7994e6917cc', 'Mozilla/5.0 (iPad; CPU OS 8_4_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/47.0.2526.107 Mobile/12H321 Safari/600.1.4', 1506050700),
(169, 93, '113.160.226.136', '41ed1bf67a04f0e8c203f7994e6917cc', 'Mozilla/5.0 (iPad; CPU OS 8_4_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/47.0.2526.107 Mobile/12H321 Safari/600.1.4', 1506050760),
(170, 104, '113.160.226.136', '41ed1bf67a04f0e8c203f7994e6917cc', 'Mozilla/5.0 (iPad; CPU OS 8_4_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/47.0.2526.107 Mobile/12H321 Safari/600.1.4', 1506050760),
(171, 113, '113.160.226.136', '41ed1bf67a04f0e8c203f7994e6917cc', 'Mozilla/5.0 (iPad; CPU OS 8_4_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/47.0.2526.107 Mobile/12H321 Safari/600.1.4', 1506050760),
(172, 6, '113.160.226.136', '8af5132dbe521863af177d82a7ff2e83', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1506053520),
(173, 11, '113.160.226.136', '8af5132dbe521863af177d82a7ff2e83', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1506053520),
(174, 18, '113.160.226.136', '8af5132dbe521863af177d82a7ff2e83', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1506053520),
(175, 26, '113.160.226.136', '8af5132dbe521863af177d82a7ff2e83', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1506053520),
(176, 34, '113.160.226.136', '8af5132dbe521863af177d82a7ff2e83', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1506053520),
(177, 42, '113.160.226.136', '8af5132dbe521863af177d82a7ff2e83', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1506053520),
(178, 50, '113.160.226.136', '8af5132dbe521863af177d82a7ff2e83', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1506053520),
(179, 58, '113.160.226.136', '8af5132dbe521863af177d82a7ff2e83', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1506053520),
(180, 63, '113.160.226.136', '8af5132dbe521863af177d82a7ff2e83', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1506053520),
(181, 68, '113.160.226.136', '8af5132dbe521863af177d82a7ff2e83', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1506053520),
(182, 73, '113.160.226.136', '8af5132dbe521863af177d82a7ff2e83', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1506053520),
(183, 82, '113.160.226.136', '8af5132dbe521863af177d82a7ff2e83', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1506053520),
(184, 95, '113.160.226.136', '8af5132dbe521863af177d82a7ff2e83', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1506053520),
(185, 106, '113.160.226.136', '8af5132dbe521863af177d82a7ff2e83', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1506053520),
(186, 115, '113.160.226.136', '8af5132dbe521863af177d82a7ff2e83', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1506053520),
(187, 127, '113.160.226.136', '8af5132dbe521863af177d82a7ff2e83', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1506053520),
(188, 17, '101.99.58.209', '0d60e619c66e8f7dd66aa52b172cc47d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506258000),
(189, 49, '101.99.58.209', '0d60e619c66e8f7dd66aa52b172cc47d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506258000),
(190, 81, '101.99.58.209', '0d60e619c66e8f7dd66aa52b172cc47d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506258000),
(191, 93, '101.99.58.209', '0d60e619c66e8f7dd66aa52b172cc47d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506258000),
(192, 104, '101.99.58.209', '0d60e619c66e8f7dd66aa52b172cc47d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506258000),
(193, 113, '101.99.58.209', '0d60e619c66e8f7dd66aa52b172cc47d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506258000),
(194, 17, '117.3.0.177', '1e09edfc6a0d7a5e3232a13ebb193851', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506302400),
(195, 49, '117.3.0.177', '1e09edfc6a0d7a5e3232a13ebb193851', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506302400),
(196, 81, '117.3.0.177', '1e09edfc6a0d7a5e3232a13ebb193851', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506302400),
(197, 93, '117.3.0.177', '1e09edfc6a0d7a5e3232a13ebb193851', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506302400),
(198, 104, '117.3.0.177', '1e09edfc6a0d7a5e3232a13ebb193851', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506302400),
(199, 113, '117.3.0.177', '1e09edfc6a0d7a5e3232a13ebb193851', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506302400),
(200, 10, '117.3.0.177', '7704d2218615ce55b179b22648eea624', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506485880),
(201, 92, '117.3.0.177', '7704d2218615ce55b179b22648eea624', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506485880),
(202, 103, '117.3.0.177', '7704d2218615ce55b179b22648eea624', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506485880),
(203, 112, '117.3.0.177', '7704d2218615ce55b179b22648eea624', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506485880),
(204, 125, '117.3.0.177', '7704d2218615ce55b179b22648eea624', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506485880),
(205, 132, '117.3.0.177', 'be033b768202ca4a6f9447d817424906', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 1506498120),
(206, 17, '117.3.0.177', '348745b9f3099b3067be70f9460eb6ec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506569220),
(207, 49, '117.3.0.177', '348745b9f3099b3067be70f9460eb6ec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506569220),
(208, 81, '117.3.0.177', '348745b9f3099b3067be70f9460eb6ec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506569220),
(209, 93, '117.3.0.177', '348745b9f3099b3067be70f9460eb6ec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506569220),
(210, 104, '117.3.0.177', '348745b9f3099b3067be70f9460eb6ec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506569220),
(211, 113, '117.3.0.177', '348745b9f3099b3067be70f9460eb6ec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506569220),
(212, 10, '117.3.0.177', '0941031399a6369ae0afba5be3991f40', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506571200),
(213, 92, '117.3.0.177', '0941031399a6369ae0afba5be3991f40', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506571200),
(214, 103, '117.3.0.177', '0941031399a6369ae0afba5be3991f40', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506571200),
(215, 112, '117.3.0.177', '0941031399a6369ae0afba5be3991f40', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506571260),
(216, 125, '117.3.0.177', '0941031399a6369ae0afba5be3991f40', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506571260),
(217, 17, '117.3.0.177', 'c4fd5e13edd511d6cbb28a7e3c5bc8e7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506587640),
(218, 49, '117.3.0.177', 'c4fd5e13edd511d6cbb28a7e3c5bc8e7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506587640),
(219, 81, '117.3.0.177', 'c4fd5e13edd511d6cbb28a7e3c5bc8e7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506587640),
(220, 93, '117.3.0.177', 'c4fd5e13edd511d6cbb28a7e3c5bc8e7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506587640),
(221, 104, '117.3.0.177', 'c4fd5e13edd511d6cbb28a7e3c5bc8e7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506587640),
(222, 113, '117.3.0.177', 'c4fd5e13edd511d6cbb28a7e3c5bc8e7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506587640),
(223, 151, '117.3.0.177', 'c4fd5e13edd511d6cbb28a7e3c5bc8e7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506587640),
(224, 60, '117.3.0.177', '348745b9f3099b3067be70f9460eb6ec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506589620),
(225, 70, '117.3.0.177', '348745b9f3099b3067be70f9460eb6ec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506589620),
(226, 84, '117.3.0.177', '348745b9f3099b3067be70f9460eb6ec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506589620),
(227, 89, '117.3.0.177', '348745b9f3099b3067be70f9460eb6ec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506589620),
(228, 97, '117.3.0.177', '348745b9f3099b3067be70f9460eb6ec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506589620),
(229, 108, '117.3.0.177', '348745b9f3099b3067be70f9460eb6ec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506589620),
(230, 117, '117.3.0.177', '348745b9f3099b3067be70f9460eb6ec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506589620),
(231, 130, '117.3.0.177', '348745b9f3099b3067be70f9460eb6ec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506589620),
(232, 135, '117.3.0.177', '348745b9f3099b3067be70f9460eb6ec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506589620),
(233, 137, '117.3.0.177', '348745b9f3099b3067be70f9460eb6ec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506589680),
(234, 139, '117.3.0.177', '348745b9f3099b3067be70f9460eb6ec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506589680),
(235, 157, '117.3.0.177', '348745b9f3099b3067be70f9460eb6ec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506589680),
(236, 151, '117.3.0.177', '348745b9f3099b3067be70f9460eb6ec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506592200),
(237, 10, '123.19.167.73', 'c8ecb3bced06a8141cceba5d59aead71', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506628800),
(238, 92, '123.19.167.73', 'c8ecb3bced06a8141cceba5d59aead71', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506628800),
(239, 103, '123.19.167.73', 'c8ecb3bced06a8141cceba5d59aead71', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506628800),
(240, 112, '123.19.167.73', 'c8ecb3bced06a8141cceba5d59aead71', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506628800),
(241, 125, '123.19.167.73', 'c8ecb3bced06a8141cceba5d59aead71', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506628800),
(242, 152, '123.19.167.73', 'c8ecb3bced06a8141cceba5d59aead71', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506628800),
(243, 10, '117.3.0.177', 'dc02a7b35ec74db45399ee41d80bfb03', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506648060),
(244, 92, '117.3.0.177', 'dc02a7b35ec74db45399ee41d80bfb03', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506648060),
(245, 103, '117.3.0.177', 'dc02a7b35ec74db45399ee41d80bfb03', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506648060),
(246, 112, '117.3.0.177', 'dc02a7b35ec74db45399ee41d80bfb03', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506648060),
(247, 125, '117.3.0.177', 'dc02a7b35ec74db45399ee41d80bfb03', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506648060),
(248, 152, '117.3.0.177', 'dc02a7b35ec74db45399ee41d80bfb03', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506648060),
(249, 173, '113.160.247.118', '9edc84768bdccc493589052d5e7c1015', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506651840),
(250, 184, '113.160.247.118', '9edc84768bdccc493589052d5e7c1015', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506652260),
(251, 209, '113.160.247.118', '9edc84768bdccc493589052d5e7c1015', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506652260),
(252, 234, '113.160.247.118', '9edc84768bdccc493589052d5e7c1015', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506652260),
(253, 238, '113.160.247.118', '9edc84768bdccc493589052d5e7c1015', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506652260),
(254, 17, '113.160.247.118', 'cd244719613d6191d729d971629ff972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506653880),
(255, 49, '113.160.247.118', 'cd244719613d6191d729d971629ff972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506653880);
INSERT INTO `olala3w_notify_logs` (`notify_logs_id`, `notify_user`, `ip`, `session`, `agent`, `modified_time`) VALUES
(256, 81, '113.160.247.118', 'cd244719613d6191d729d971629ff972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506653880),
(257, 93, '113.160.247.118', 'cd244719613d6191d729d971629ff972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506653880),
(258, 104, '113.160.247.118', 'cd244719613d6191d729d971629ff972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506653880),
(259, 113, '113.160.247.118', 'cd244719613d6191d729d971629ff972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506653880),
(260, 151, '113.160.247.118', 'cd244719613d6191d729d971629ff972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506653880),
(261, 163, '113.160.247.118', 'cd244719613d6191d729d971629ff972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506653880),
(262, 188, '113.160.247.118', 'cd244719613d6191d729d971629ff972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506653880),
(263, 213, '113.160.247.118', 'cd244719613d6191d729d971629ff972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506653880),
(264, 262, '113.160.247.118', '9edc84768bdccc493589052d5e7c1015', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506653940),
(265, 14, '113.160.247.118', 'cd244719613d6191d729d971629ff972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506654060),
(266, 22, '113.160.247.118', 'cd244719613d6191d729d971629ff972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506654060),
(267, 30, '113.160.247.118', 'cd244719613d6191d729d971629ff972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506654060),
(268, 38, '113.160.247.118', 'cd244719613d6191d729d971629ff972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506654060),
(269, 46, '113.160.247.118', 'cd244719613d6191d729d971629ff972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506654060),
(270, 54, '113.160.247.118', 'cd244719613d6191d729d971629ff972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506654060),
(271, 275, '113.160.247.118', '9edc84768bdccc493589052d5e7c1015', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506654060),
(272, 62, '113.160.247.118', 'cd244719613d6191d729d971629ff972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506654060),
(273, 72, '113.160.247.118', 'cd244719613d6191d729d971629ff972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506654060),
(274, 86, '113.160.247.118', 'cd244719613d6191d729d971629ff972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506654060),
(275, 99, '113.160.247.118', 'cd244719613d6191d729d971629ff972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506654060),
(276, 110, '113.160.247.118', 'cd244719613d6191d729d971629ff972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506654060),
(277, 119, '113.160.247.118', 'cd244719613d6191d729d971629ff972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506654060),
(278, 120, '113.160.247.118', 'cd244719613d6191d729d971629ff972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506654060),
(279, 134, '113.160.247.118', 'cd244719613d6191d729d971629ff972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506654060),
(280, 161, '113.160.247.118', 'cd244719613d6191d729d971629ff972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506654060),
(281, 186, '113.160.247.118', 'cd244719613d6191d729d971629ff972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506654060),
(282, 211, '113.160.247.118', 'cd244719613d6191d729d971629ff972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506654060),
(283, 236, '113.160.247.118', 'cd244719613d6191d729d971629ff972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506654060),
(284, 268, '113.160.247.118', 'cd244719613d6191d729d971629ff972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506654060),
(285, 269, '113.160.247.118', 'cd244719613d6191d729d971629ff972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506654060),
(286, 172, '113.160.247.118', '83bc7ffca5a9844b6b7c8f00c161e804', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506654180),
(287, 197, '113.160.247.118', '83bc7ffca5a9844b6b7c8f00c161e804', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506654180),
(288, 222, '113.160.247.118', '83bc7ffca5a9844b6b7c8f00c161e804', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506654180),
(289, 251, '113.160.247.118', '83bc7ffca5a9844b6b7c8f00c161e804', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506654180),
(290, 262, '113.160.247.118', 'aa6fe3de98aa12b3c24b727fa36dd4ba', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2 like Mac OS X) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0 Mobile/14C92 Safari/602.1', 1506654840),
(291, 275, '113.160.247.118', 'aa6fe3de98aa12b3c24b727fa36dd4ba', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2 like Mac OS X) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0 Mobile/14C92 Safari/602.1', 1506654840),
(292, 305, '113.160.247.118', 'aa6fe3de98aa12b3c24b727fa36dd4ba', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2 like Mac OS X) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0 Mobile/14C92 Safari/602.1', 1506654900),
(293, 128, '113.160.247.118', '392fd757fa1d0b221fa2499150c0cab8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506655440),
(294, 155, '113.160.247.118', '392fd757fa1d0b221fa2499150c0cab8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506655440),
(295, 175, '113.160.247.118', '392fd757fa1d0b221fa2499150c0cab8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506655440),
(296, 200, '113.160.247.118', '392fd757fa1d0b221fa2499150c0cab8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506655440),
(297, 225, '113.160.247.118', '392fd757fa1d0b221fa2499150c0cab8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506655440),
(298, 255, '113.160.247.118', '392fd757fa1d0b221fa2499150c0cab8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506655440),
(299, 277, '113.160.247.118', '392fd757fa1d0b221fa2499150c0cab8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506655440),
(300, 298, '113.160.247.118', '392fd757fa1d0b221fa2499150c0cab8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506655440),
(301, 185, '113.160.247.118', '83bc7ffca5a9844b6b7c8f00c161e804', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506655560),
(302, 210, '113.160.247.118', '83bc7ffca5a9844b6b7c8f00c161e804', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506655560),
(303, 235, '113.160.247.118', '83bc7ffca5a9844b6b7c8f00c161e804', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506655560),
(304, 239, '113.160.247.118', '83bc7ffca5a9844b6b7c8f00c161e804', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506655560),
(305, 266, '113.160.247.118', '83bc7ffca5a9844b6b7c8f00c161e804', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506655560),
(306, 272, '113.160.247.118', '83bc7ffca5a9844b6b7c8f00c161e804', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506655560),
(307, 309, '113.160.247.118', '83bc7ffca5a9844b6b7c8f00c161e804', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506655620),
(308, 322, '113.160.247.118', '83bc7ffca5a9844b6b7c8f00c161e804', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506655620),
(309, 325, '113.160.247.118', 'd37a2759a0678188d5e1481d482d1832', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506655620),
(310, 17, '113.160.247.118', '392fd757fa1d0b221fa2499150c0cab8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506655680),
(311, 49, '113.160.247.118', '392fd757fa1d0b221fa2499150c0cab8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506655680),
(312, 81, '113.160.247.118', '392fd757fa1d0b221fa2499150c0cab8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506655680),
(313, 17, '113.160.247.118', 'd37a2759a0678188d5e1481d482d1832', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506656700),
(314, 49, '113.160.247.118', 'd37a2759a0678188d5e1481d482d1832', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506656700),
(315, 81, '113.160.247.118', 'd37a2759a0678188d5e1481d482d1832', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506656700),
(316, 93, '113.160.247.118', 'd37a2759a0678188d5e1481d482d1832', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506656700),
(317, 104, '113.160.247.118', 'd37a2759a0678188d5e1481d482d1832', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506656700),
(318, 113, '113.160.247.118', 'd37a2759a0678188d5e1481d482d1832', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506656700),
(319, 151, '113.160.247.118', 'd37a2759a0678188d5e1481d482d1832', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506656700),
(320, 163, '113.160.247.118', 'd37a2759a0678188d5e1481d482d1832', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506656700),
(321, 188, '113.160.247.118', 'd37a2759a0678188d5e1481d482d1832', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506656700),
(322, 213, '113.160.247.118', 'd37a2759a0678188d5e1481d482d1832', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506656700),
(323, 285, '113.160.247.118', 'd37a2759a0678188d5e1481d482d1832', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506656700),
(324, 317, '113.160.247.118', '83bc7ffca5a9844b6b7c8f00c161e804', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506656760),
(325, 334, '113.160.247.118', '83bc7ffca5a9844b6b7c8f00c161e804', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506656760),
(326, 373, '113.160.247.118', '83bc7ffca5a9844b6b7c8f00c161e804', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506656820),
(327, 319, '113.160.247.118', 'd37a2759a0678188d5e1481d482d1832', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506656820),
(328, 336, '113.160.247.118', 'd37a2759a0678188d5e1481d482d1832', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506656820),
(329, 374, '113.160.247.118', 'd37a2759a0678188d5e1481d482d1832', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506656820),
(330, 361, '113.160.247.118', 'd37a2759a0678188d5e1481d482d1832', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506658200),
(331, 17, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506658860),
(332, 49, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506658860),
(333, 81, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506658860),
(334, 93, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506658860),
(335, 104, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506658860),
(336, 113, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506658860),
(337, 151, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506658920),
(338, 163, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506658920),
(339, 188, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506658920),
(340, 213, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506658920),
(341, 285, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506658920),
(342, 378, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506658920),
(343, 380, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506658920),
(344, 382, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506658920),
(345, 384, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506658920),
(346, 168, '113.160.247.118', '83bc7ffca5a9844b6b7c8f00c161e804', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506658920),
(347, 193, '113.160.247.118', '83bc7ffca5a9844b6b7c8f00c161e804', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506658920),
(348, 218, '113.160.247.118', '83bc7ffca5a9844b6b7c8f00c161e804', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506658920),
(349, 247, '113.160.247.118', '83bc7ffca5a9844b6b7c8f00c161e804', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506658920),
(350, 290, '113.160.247.118', '83bc7ffca5a9844b6b7c8f00c161e804', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506658920),
(351, 346, '113.160.247.118', '83bc7ffca5a9844b6b7c8f00c161e804', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506658920),
(352, 395, '113.160.247.118', '83bc7ffca5a9844b6b7c8f00c161e804', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506658980),
(353, 60, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659100),
(354, 70, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659100),
(355, 84, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659100),
(356, 89, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659100),
(357, 97, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659100),
(358, 108, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659100),
(359, 117, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659160),
(360, 130, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659160),
(361, 135, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659160),
(362, 137, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659160),
(363, 139, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659160),
(364, 157, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659160),
(365, 180, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659160),
(366, 205, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659160),
(367, 230, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659160),
(368, 260, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659160),
(369, 303, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659160),
(370, 313, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659160),
(371, 330, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659160),
(372, 359, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659160),
(373, 368, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659160),
(374, 408, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659160),
(375, 420, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659160),
(376, 6, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659220),
(377, 11, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659220),
(378, 18, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659220),
(379, 26, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659220),
(380, 34, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659220),
(381, 42, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659220),
(382, 50, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659220),
(383, 58, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659220),
(384, 63, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659220),
(385, 68, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659220),
(386, 73, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659220),
(387, 82, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659220),
(388, 95, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659280),
(389, 106, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659280),
(390, 115, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659280),
(391, 127, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659280),
(392, 154, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659280),
(393, 174, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659280),
(394, 199, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659280),
(395, 224, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659280),
(396, 253, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659280),
(397, 296, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659280),
(398, 352, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659280),
(399, 386, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659280),
(400, 401, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659280),
(401, 428, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659280),
(402, 443, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659280),
(403, 473, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659460),
(404, 14, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659520),
(405, 22, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659520),
(406, 30, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659520),
(407, 38, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659520),
(408, 46, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659520),
(409, 54, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659520),
(410, 62, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659520),
(411, 72, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659520),
(412, 86, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659520),
(413, 99, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659520),
(414, 110, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659520),
(415, 119, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659520),
(416, 133, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659520),
(417, 160, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659520),
(418, 183, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659520),
(419, 208, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659580),
(420, 233, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659580),
(421, 237, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659580),
(422, 265, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659580),
(423, 271, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659580),
(424, 308, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659580),
(425, 321, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659580),
(426, 365, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659580),
(427, 416, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659580),
(428, 458, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659580),
(429, 488, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659580),
(430, 493, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659580),
(431, 128, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659640),
(432, 155, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659640),
(433, 175, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659640),
(434, 200, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659640),
(435, 225, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659640),
(436, 255, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659640),
(437, 277, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659640),
(438, 298, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659640),
(439, 354, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659640),
(440, 403, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659640),
(441, 445, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659640),
(442, 475, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659640),
(443, 499, '113.160.247.118', 'e6fc7e9cac47e87e73bc0e25cd7ecbdc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659640),
(444, 378, '113.160.247.118', 'd37a2759a0678188d5e1481d482d1832', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659700),
(445, 380, '113.160.247.118', 'd37a2759a0678188d5e1481d482d1832', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659700),
(446, 382, '113.160.247.118', 'd37a2759a0678188d5e1481d482d1832', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506659700),
(447, 325, '117.3.0.177', '40a868617cba3086a158a43ca4aefda8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506668040),
(448, 361, '117.3.0.177', '40a868617cba3086a158a43ca4aefda8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506668040),
(449, 410, '117.3.0.177', '40a868617cba3086a158a43ca4aefda8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506668040),
(450, 452, '117.3.0.177', '40a868617cba3086a158a43ca4aefda8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506668040),
(451, 482, '117.3.0.177', '40a868617cba3086a158a43ca4aefda8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506668040),
(452, 496, '117.3.0.177', '40a868617cba3086a158a43ca4aefda8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506668040),
(453, 508, '117.3.0.177', '40a868617cba3086a158a43ca4aefda8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506668040),
(454, 531, '117.3.0.177', '4358baaf34cccd17bc2472cb3e21352c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506738060),
(455, 539, '117.3.0.177', '4358baaf34cccd17bc2472cb3e21352c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506738060),
(456, 325, '117.3.0.177', '4358baaf34cccd17bc2472cb3e21352c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506762120),
(457, 361, '117.3.0.177', '4358baaf34cccd17bc2472cb3e21352c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506762120),
(458, 410, '117.3.0.177', '4358baaf34cccd17bc2472cb3e21352c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506762120),
(459, 452, '117.3.0.177', '4358baaf34cccd17bc2472cb3e21352c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506762120),
(460, 482, '117.3.0.177', '4358baaf34cccd17bc2472cb3e21352c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506762120),
(461, 496, '117.3.0.177', '4358baaf34cccd17bc2472cb3e21352c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506762120),
(462, 508, '117.3.0.177', '4358baaf34cccd17bc2472cb3e21352c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506762120),
(463, 530, '117.3.0.177', '4358baaf34cccd17bc2472cb3e21352c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506762120),
(464, 537, '117.3.0.177', '6b90c04fd7a6fe3dbac542156423f78c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506906780),
(465, 536, '117.3.0.177', '6b90c04fd7a6fe3dbac542156423f78c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506914640),
(466, 544, '117.3.0.177', '6b90c04fd7a6fe3dbac542156423f78c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506914640),
(467, 537, '117.3.0.177', '95be6adb673abe4ab37b469436f37eb9', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506940380),
(468, 537, '117.3.0.177', '4dff5f62de1d7ef959595b2a368d8bbf', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506993660),
(469, 519, '117.3.0.177', '4dff5f62de1d7ef959595b2a368d8bbf', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507002780),
(470, 520, '117.3.0.177', '4dff5f62de1d7ef959595b2a368d8bbf', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507003020),
(471, 536, '117.3.0.177', '4dff5f62de1d7ef959595b2a368d8bbf', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507021740),
(472, 544, '117.3.0.177', '4dff5f62de1d7ef959595b2a368d8bbf', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507021740),
(473, 520, '117.3.0.177', '75dc121fa1743c26e2db6f070c3ddecf', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507108620),
(474, 536, '117.3.0.177', '75dc121fa1743c26e2db6f070c3ddecf', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507108800),
(475, 544, '117.3.0.177', '75dc121fa1743c26e2db6f070c3ddecf', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507108800),
(476, 569, '117.3.0.177', '75dc121fa1743c26e2db6f070c3ddecf', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507108800),
(477, 577, '117.3.0.177', '75dc121fa1743c26e2db6f070c3ddecf', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507108800),
(478, 580, '117.3.0.177', 'f2b7813cdcc98a72231fbe65f20c12b0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507108860),
(479, 580, '117.3.0.177', '75dc121fa1743c26e2db6f070c3ddecf', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507108920),
(480, 536, '117.3.0.177', '0e611877ca2880323f6dca369b19a382', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507186440),
(481, 544, '117.3.0.177', '0e611877ca2880323f6dca369b19a382', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507186440),
(482, 569, '117.3.0.177', '0e611877ca2880323f6dca369b19a382', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507186440),
(483, 520, '117.3.0.177', '66daf58a04fc6b49c3566f10b4af9df3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507187760),
(484, 536, '117.3.0.177', '13ac6a37fe9f2aad41b9476c44d84f9d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507187760),
(485, 544, '117.3.0.177', '13ac6a37fe9f2aad41b9476c44d84f9d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507187760),
(486, 569, '117.3.0.177', '13ac6a37fe9f2aad41b9476c44d84f9d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507187760),
(487, 600, '117.3.0.177', '13ac6a37fe9f2aad41b9476c44d84f9d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507187820),
(488, 600, '117.3.0.177', '0e611877ca2880323f6dca369b19a382', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507187820),
(489, 608, '117.3.0.177', '13ac6a37fe9f2aad41b9476c44d84f9d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507187880),
(490, 608, '117.3.0.177', '0e611877ca2880323f6dca369b19a382', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507187880),
(491, 629, '117.3.0.177', '13ac6a37fe9f2aad41b9476c44d84f9d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507187940),
(492, 629, '117.3.0.177', '0e611877ca2880323f6dca369b19a382', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507187940),
(493, 637, '117.3.0.177', '13ac6a37fe9f2aad41b9476c44d84f9d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507188180),
(494, 637, '117.3.0.177', '0e611877ca2880323f6dca369b19a382', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507188180),
(495, 519, '113.160.247.118', '538e2237afe1d01424d8784df42badb7', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507191000),
(496, 552, '113.160.247.118', '538e2237afe1d01424d8784df42badb7', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507191000),
(497, 583, '113.160.247.118', '538e2237afe1d01424d8784df42badb7', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507191000),
(498, 612, '113.160.247.118', '538e2237afe1d01424d8784df42badb7', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507191000),
(499, 524, '113.160.247.118', 'f61d0611e53afbeda7bc605ad5d0b812', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507191000),
(500, 557, '113.160.247.118', 'f61d0611e53afbeda7bc605ad5d0b812', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507191000),
(501, 588, '113.160.247.118', 'f61d0611e53afbeda7bc605ad5d0b812', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507191000),
(502, 617, '113.160.247.118', 'f61d0611e53afbeda7bc605ad5d0b812', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507191000),
(503, 641, '113.160.247.118', '538e2237afe1d01424d8784df42badb7', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507191420),
(504, 660, '113.160.247.118', 'f61d0611e53afbeda7bc605ad5d0b812', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507191420),
(505, 657, '113.160.247.118', '13ac6a37fe9f2aad41b9476c44d84f9d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507191420),
(506, 533, '113.160.247.118', '13ac6a37fe9f2aad41b9476c44d84f9d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507191420),
(507, 541, '113.160.247.118', '13ac6a37fe9f2aad41b9476c44d84f9d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507191420),
(508, 566, '113.160.247.118', '13ac6a37fe9f2aad41b9476c44d84f9d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507191420),
(509, 574, '113.160.247.118', '13ac6a37fe9f2aad41b9476c44d84f9d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507191420),
(510, 597, '113.160.247.118', '13ac6a37fe9f2aad41b9476c44d84f9d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507191420);
INSERT INTO `olala3w_notify_logs` (`notify_logs_id`, `notify_user`, `ip`, `session`, `agent`, `modified_time`) VALUES
(511, 605, '113.160.247.118', '13ac6a37fe9f2aad41b9476c44d84f9d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507191420),
(512, 626, '113.160.247.118', '13ac6a37fe9f2aad41b9476c44d84f9d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507191420),
(513, 634, '113.160.247.118', '13ac6a37fe9f2aad41b9476c44d84f9d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507191420),
(514, 654, '113.160.247.118', '13ac6a37fe9f2aad41b9476c44d84f9d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507191420),
(515, 663, '113.160.247.118', '13ac6a37fe9f2aad41b9476c44d84f9d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507191480),
(516, 520, '113.160.247.118', '53a75247165f3f501b025e40860fde7e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507191720),
(517, 642, '113.160.247.118', '53a75247165f3f501b025e40860fde7e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507191720),
(518, 669, '113.160.247.118', '53a75247165f3f501b025e40860fde7e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507191720),
(519, 671, '113.160.247.118', '53a75247165f3f501b025e40860fde7e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507191720),
(520, 677, '113.160.247.118', '53a75247165f3f501b025e40860fde7e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507191960),
(521, 679, '113.160.247.118', '53a75247165f3f501b025e40860fde7e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507192020),
(522, 521, '113.160.247.118', 'f61d0611e53afbeda7bc605ad5d0b812', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507192320),
(523, 554, '113.160.247.118', 'f61d0611e53afbeda7bc605ad5d0b812', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507192320),
(524, 585, '113.160.247.118', 'f61d0611e53afbeda7bc605ad5d0b812', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507192320),
(525, 614, '113.160.247.118', 'f61d0611e53afbeda7bc605ad5d0b812', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507192320),
(526, 643, '113.160.247.118', 'f61d0611e53afbeda7bc605ad5d0b812', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507192320),
(527, 523, '113.160.247.118', '53a75247165f3f501b025e40860fde7e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507192380),
(528, 556, '113.160.247.118', '53a75247165f3f501b025e40860fde7e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507192380),
(529, 587, '113.160.247.118', '53a75247165f3f501b025e40860fde7e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507192380),
(530, 616, '113.160.247.118', '53a75247165f3f501b025e40860fde7e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507192380),
(531, 645, '113.160.247.118', '53a75247165f3f501b025e40860fde7e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507192380),
(532, 686, '113.160.247.118', '53a75247165f3f501b025e40860fde7e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507192500),
(533, 682, '113.160.247.118', '538e2237afe1d01424d8784df42badb7', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507192500),
(534, 711, '113.160.247.118', '538e2237afe1d01424d8784df42badb7', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507192620),
(535, 713, '113.160.247.118', 'f61d0611e53afbeda7bc605ad5d0b812', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507192620),
(536, 535, '113.160.247.118', '53a75247165f3f501b025e40860fde7e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194000),
(537, 543, '113.160.247.118', '53a75247165f3f501b025e40860fde7e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194000),
(538, 568, '113.160.247.118', '53a75247165f3f501b025e40860fde7e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194000),
(539, 576, '113.160.247.118', '53a75247165f3f501b025e40860fde7e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194000),
(540, 599, '113.160.247.118', '53a75247165f3f501b025e40860fde7e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194000),
(541, 607, '113.160.247.118', '53a75247165f3f501b025e40860fde7e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194000),
(542, 628, '113.160.247.118', '53a75247165f3f501b025e40860fde7e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194000),
(543, 636, '113.160.247.118', '53a75247165f3f501b025e40860fde7e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194000),
(544, 656, '113.160.247.118', '53a75247165f3f501b025e40860fde7e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194000),
(545, 665, '113.160.247.118', '53a75247165f3f501b025e40860fde7e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194060),
(546, 697, '113.160.247.118', '53a75247165f3f501b025e40860fde7e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194060),
(547, 706, '113.160.247.118', '53a75247165f3f501b025e40860fde7e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194060),
(548, 726, '113.160.247.118', '53a75247165f3f501b025e40860fde7e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194060),
(549, 739, '113.160.247.118', '53a75247165f3f501b025e40860fde7e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194060),
(550, 750, '113.160.247.118', '53a75247165f3f501b025e40860fde7e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194060),
(551, 520, '113.160.247.118', '13ac6a37fe9f2aad41b9476c44d84f9d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194120),
(552, 642, '113.160.247.118', '13ac6a37fe9f2aad41b9476c44d84f9d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194120),
(553, 669, '113.160.247.118', '13ac6a37fe9f2aad41b9476c44d84f9d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194120),
(554, 671, '113.160.247.118', '13ac6a37fe9f2aad41b9476c44d84f9d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194120),
(555, 677, '113.160.247.118', '13ac6a37fe9f2aad41b9476c44d84f9d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194120),
(556, 679, '113.160.247.118', '13ac6a37fe9f2aad41b9476c44d84f9d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194120),
(557, 683, '113.160.247.118', '13ac6a37fe9f2aad41b9476c44d84f9d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194120),
(558, 712, '113.160.247.118', '13ac6a37fe9f2aad41b9476c44d84f9d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194120),
(559, 756, '113.160.247.118', 'f61d0611e53afbeda7bc605ad5d0b812', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194120),
(560, 769, '113.160.247.118', '53a75247165f3f501b025e40860fde7e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194120),
(561, 754, '113.160.247.118', '538e2237afe1d01424d8784df42badb7', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194120),
(562, 778, '113.160.247.118', '53a75247165f3f501b025e40860fde7e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194120),
(563, 782, '113.160.247.118', 'f61d0611e53afbeda7bc605ad5d0b812', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194180),
(564, 784, '113.160.247.118', 'f61d0611e53afbeda7bc605ad5d0b812', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194180),
(565, 786, '113.160.247.118', 'f61d0611e53afbeda7bc605ad5d0b812', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194180),
(566, 788, '113.160.247.118', '13ac6a37fe9f2aad41b9476c44d84f9d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194480),
(567, 791, '113.160.247.118', '53a75247165f3f501b025e40860fde7e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194540),
(568, 796, '113.160.247.118', '13ac6a37fe9f2aad41b9476c44d84f9d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194540),
(569, 800, '113.160.247.118', '13ac6a37fe9f2aad41b9476c44d84f9d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507194540),
(570, 520, '117.3.0.177', '99ae55a45022ebe4fa10099cd5d991c6', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1507197540),
(571, 642, '117.3.0.177', '99ae55a45022ebe4fa10099cd5d991c6', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1507197540),
(572, 669, '117.3.0.177', '99ae55a45022ebe4fa10099cd5d991c6', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1507197540),
(573, 671, '117.3.0.177', '99ae55a45022ebe4fa10099cd5d991c6', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1507197540),
(574, 677, '117.3.0.177', '99ae55a45022ebe4fa10099cd5d991c6', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1507197540),
(575, 679, '117.3.0.177', '99ae55a45022ebe4fa10099cd5d991c6', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1507197540),
(576, 683, '117.3.0.177', '99ae55a45022ebe4fa10099cd5d991c6', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1507197540),
(577, 712, '117.3.0.177', '99ae55a45022ebe4fa10099cd5d991c6', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1507197540),
(578, 789, '117.3.0.177', '99ae55a45022ebe4fa10099cd5d991c6', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1507197540),
(579, 792, '117.3.0.177', '99ae55a45022ebe4fa10099cd5d991c6', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1507197600),
(580, 794, '117.3.0.177', '99ae55a45022ebe4fa10099cd5d991c6', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1507197600),
(581, 798, '117.3.0.177', '99ae55a45022ebe4fa10099cd5d991c6', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1507197600),
(582, 534, '113.160.247.118', 'b80a2f2a70b975430b79c1bb69409d53', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507345260),
(583, 542, '113.160.247.118', 'b80a2f2a70b975430b79c1bb69409d53', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507345260),
(584, 567, '113.160.247.118', 'b80a2f2a70b975430b79c1bb69409d53', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507345260),
(585, 575, '113.160.247.118', 'b80a2f2a70b975430b79c1bb69409d53', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507345260),
(586, 598, '113.160.247.118', 'b80a2f2a70b975430b79c1bb69409d53', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507345260),
(587, 606, '113.160.247.118', 'b80a2f2a70b975430b79c1bb69409d53', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507345260),
(588, 627, '113.160.247.118', 'b80a2f2a70b975430b79c1bb69409d53', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507345260),
(589, 635, '113.160.247.118', 'b80a2f2a70b975430b79c1bb69409d53', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507345260),
(590, 655, '113.160.247.118', 'b80a2f2a70b975430b79c1bb69409d53', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507345260),
(591, 664, '113.160.247.118', 'b80a2f2a70b975430b79c1bb69409d53', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507345260),
(592, 696, '113.160.247.118', 'b80a2f2a70b975430b79c1bb69409d53', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507345260),
(593, 705, '113.160.247.118', 'b80a2f2a70b975430b79c1bb69409d53', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507345260),
(594, 725, '113.160.247.118', 'b80a2f2a70b975430b79c1bb69409d53', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507345260),
(595, 738, '113.160.247.118', 'b80a2f2a70b975430b79c1bb69409d53', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507345260),
(596, 749, '113.160.247.118', 'b80a2f2a70b975430b79c1bb69409d53', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507345260),
(597, 768, '113.160.247.118', 'b80a2f2a70b975430b79c1bb69409d53', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507345260),
(598, 777, '113.160.247.118', 'b80a2f2a70b975430b79c1bb69409d53', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507345260),
(599, 521, '113.160.247.118', 'b69754f586e8d6c655aec4fd4265bf49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1507345380),
(600, 554, '113.160.247.118', 'b69754f586e8d6c655aec4fd4265bf49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1507345380),
(601, 585, '113.160.247.118', 'b69754f586e8d6c655aec4fd4265bf49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1507345380),
(602, 614, '113.160.247.118', 'b69754f586e8d6c655aec4fd4265bf49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1507345380),
(603, 643, '113.160.247.118', 'b69754f586e8d6c655aec4fd4265bf49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1507345380),
(604, 713, '113.160.247.118', 'b69754f586e8d6c655aec4fd4265bf49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1507345380),
(605, 756, '113.160.247.118', 'b69754f586e8d6c655aec4fd4265bf49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1507345380),
(606, 782, '113.160.247.118', 'b69754f586e8d6c655aec4fd4265bf49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1507345380),
(607, 784, '113.160.247.118', 'b69754f586e8d6c655aec4fd4265bf49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1507345380),
(608, 786, '113.160.247.118', 'b69754f586e8d6c655aec4fd4265bf49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1507345380),
(609, 822, '113.160.247.118', 'b80a2f2a70b975430b79c1bb69409d53', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507345560),
(610, 827, '113.160.247.118', 'b80a2f2a70b975430b79c1bb69409d53', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507345620),
(611, 832, '113.160.247.118', 'b69754f586e8d6c655aec4fd4265bf49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1507345680),
(612, 834, '113.160.247.118', 'b69754f586e8d6c655aec4fd4265bf49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1507345740),
(613, 836, '113.160.247.118', 'b69754f586e8d6c655aec4fd4265bf49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1507345800),
(614, 532, '14.174.44.92', 'c2a0a175a2ef16073319ab8014ce9253', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507349340),
(615, 540, '14.174.44.92', 'c2a0a175a2ef16073319ab8014ce9253', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507349340),
(616, 546, '14.174.44.92', 'c2a0a175a2ef16073319ab8014ce9253', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507349340),
(617, 565, '14.174.44.92', 'c2a0a175a2ef16073319ab8014ce9253', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507349340),
(618, 573, '14.174.44.92', 'c2a0a175a2ef16073319ab8014ce9253', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507349340),
(619, 596, '14.174.44.92', 'c2a0a175a2ef16073319ab8014ce9253', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507349340),
(620, 604, '14.174.44.92', 'c2a0a175a2ef16073319ab8014ce9253', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507349400),
(621, 625, '14.174.44.92', 'c2a0a175a2ef16073319ab8014ce9253', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507349400),
(622, 633, '14.174.44.92', 'c2a0a175a2ef16073319ab8014ce9253', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507349400),
(623, 653, '14.174.44.92', 'c2a0a175a2ef16073319ab8014ce9253', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507349400),
(624, 662, '14.174.44.92', 'c2a0a175a2ef16073319ab8014ce9253', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507349400),
(625, 673, '14.174.44.92', 'c2a0a175a2ef16073319ab8014ce9253', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507349400),
(626, 676, '14.174.44.92', 'c2a0a175a2ef16073319ab8014ce9253', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507349400),
(627, 694, '14.174.44.92', 'c2a0a175a2ef16073319ab8014ce9253', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507349400),
(628, 703, '14.174.44.92', 'c2a0a175a2ef16073319ab8014ce9253', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507349400),
(629, 723, '14.174.44.92', 'c2a0a175a2ef16073319ab8014ce9253', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507349400),
(630, 736, '14.174.44.92', 'c2a0a175a2ef16073319ab8014ce9253', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507349400),
(631, 747, '14.174.44.92', 'c2a0a175a2ef16073319ab8014ce9253', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507349400),
(632, 766, '14.174.44.92', 'c2a0a175a2ef16073319ab8014ce9253', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507349400),
(633, 775, '14.174.44.92', 'c2a0a175a2ef16073319ab8014ce9253', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507349400),
(634, 816, '14.174.44.92', 'c2a0a175a2ef16073319ab8014ce9253', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507349400),
(635, 825, '14.174.44.92', 'c2a0a175a2ef16073319ab8014ce9253', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507349400),
(636, 538, '14.174.44.92', 'ab16fcd5e5dad4386c845b18e113d734', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1507351080),
(637, 571, '14.174.44.92', 'ab16fcd5e5dad4386c845b18e113d734', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1507351080),
(638, 602, '14.174.44.92', 'ab16fcd5e5dad4386c845b18e113d734', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1507351080),
(639, 631, '14.174.44.92', 'ab16fcd5e5dad4386c845b18e113d734', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1507351080),
(640, 659, '14.174.44.92', 'ab16fcd5e5dad4386c845b18e113d734', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1507351080),
(641, 700, '14.174.44.92', 'ab16fcd5e5dad4386c845b18e113d734', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1507351080),
(642, 729, '14.174.44.92', 'ab16fcd5e5dad4386c845b18e113d734', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1507351080),
(643, 772, '14.174.44.92', 'ab16fcd5e5dad4386c845b18e113d734', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1507351080),
(644, 819, '14.174.44.92', 'ab16fcd5e5dad4386c845b18e113d734', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1507351080),
(645, 538, '113.174.169.192', '9150442e018fbd593d985fe3cfbf6e71', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1507373340),
(646, 571, '113.174.169.192', '9150442e018fbd593d985fe3cfbf6e71', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1507373340),
(647, 602, '113.174.169.192', '9150442e018fbd593d985fe3cfbf6e71', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1507373340),
(648, 631, '113.174.169.192', '9150442e018fbd593d985fe3cfbf6e71', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1507373340),
(649, 659, '113.174.169.192', '9150442e018fbd593d985fe3cfbf6e71', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1507373340),
(650, 700, '113.174.169.192', '9150442e018fbd593d985fe3cfbf6e71', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1507373340),
(651, 729, '113.174.169.192', '9150442e018fbd593d985fe3cfbf6e71', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1507373340),
(652, 772, '113.174.169.192', '9150442e018fbd593d985fe3cfbf6e71', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1507373340),
(653, 538, '113.174.169.192', '1cf88c49725c7e467dd3293ff16ec84f', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1507373820),
(654, 571, '113.174.169.192', '1cf88c49725c7e467dd3293ff16ec84f', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1507373820),
(655, 602, '113.174.169.192', '1cf88c49725c7e467dd3293ff16ec84f', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1507373820),
(656, 631, '113.174.169.192', '1cf88c49725c7e467dd3293ff16ec84f', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1507373820),
(657, 659, '113.174.169.192', '1cf88c49725c7e467dd3293ff16ec84f', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1507373820),
(658, 700, '113.174.169.192', '1cf88c49725c7e467dd3293ff16ec84f', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1507373820),
(659, 729, '113.174.169.192', '1cf88c49725c7e467dd3293ff16ec84f', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1507373820),
(660, 772, '113.174.169.192', '1cf88c49725c7e467dd3293ff16ec84f', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1507373820),
(661, 532, '14.236.8.41', '8b52e7052bfb53fac3d4e0ec234284d6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507463520),
(662, 540, '14.236.8.41', '8b52e7052bfb53fac3d4e0ec234284d6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507463520),
(663, 546, '14.236.8.41', '8b52e7052bfb53fac3d4e0ec234284d6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507463520),
(664, 565, '14.236.8.41', '8b52e7052bfb53fac3d4e0ec234284d6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507463580),
(665, 573, '14.236.8.41', '8b52e7052bfb53fac3d4e0ec234284d6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507463580),
(666, 596, '14.236.8.41', '8b52e7052bfb53fac3d4e0ec234284d6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507463580),
(667, 604, '14.236.8.41', '8b52e7052bfb53fac3d4e0ec234284d6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507463580),
(668, 625, '14.236.8.41', '8b52e7052bfb53fac3d4e0ec234284d6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507463580),
(669, 633, '14.236.8.41', '8b52e7052bfb53fac3d4e0ec234284d6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507463580),
(670, 653, '14.236.8.41', '8b52e7052bfb53fac3d4e0ec234284d6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507463580),
(671, 662, '14.236.8.41', '8b52e7052bfb53fac3d4e0ec234284d6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507463580),
(672, 673, '14.236.8.41', '8b52e7052bfb53fac3d4e0ec234284d6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507463580),
(673, 676, '14.236.8.41', '8b52e7052bfb53fac3d4e0ec234284d6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507463580),
(674, 694, '14.236.8.41', '8b52e7052bfb53fac3d4e0ec234284d6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507463580),
(675, 703, '14.236.8.41', '8b52e7052bfb53fac3d4e0ec234284d6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507463580),
(676, 723, '14.236.8.41', '8b52e7052bfb53fac3d4e0ec234284d6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507463580),
(677, 736, '14.236.8.41', '8b52e7052bfb53fac3d4e0ec234284d6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507463580),
(678, 775, '14.236.8.41', '8b52e7052bfb53fac3d4e0ec234284d6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507463580),
(679, 816, '14.236.8.41', '8b52e7052bfb53fac3d4e0ec234284d6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507463580),
(680, 520, '117.3.0.177', '4091e83721a0a0546b6a30e3f0c2a235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507539600),
(681, 642, '117.3.0.177', '4091e83721a0a0546b6a30e3f0c2a235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507539600),
(682, 669, '117.3.0.177', '4091e83721a0a0546b6a30e3f0c2a235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507539600),
(683, 671, '117.3.0.177', '4091e83721a0a0546b6a30e3f0c2a235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507539600),
(684, 677, '117.3.0.177', '4091e83721a0a0546b6a30e3f0c2a235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507539600),
(685, 679, '117.3.0.177', '4091e83721a0a0546b6a30e3f0c2a235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507539600),
(686, 683, '117.3.0.177', '4091e83721a0a0546b6a30e3f0c2a235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507539600),
(687, 712, '117.3.0.177', '4091e83721a0a0546b6a30e3f0c2a235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507539600),
(688, 789, '117.3.0.177', '4091e83721a0a0546b6a30e3f0c2a235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507539600),
(689, 792, '117.3.0.177', '4091e83721a0a0546b6a30e3f0c2a235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507539600),
(690, 794, '117.3.0.177', '4091e83721a0a0546b6a30e3f0c2a235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507539600),
(691, 798, '117.3.0.177', '4091e83721a0a0546b6a30e3f0c2a235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507539600),
(692, 806, '117.3.0.177', '4091e83721a0a0546b6a30e3f0c2a235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507539600),
(693, 845, '117.3.0.177', '4091e83721a0a0546b6a30e3f0c2a235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507539600),
(694, 547, '113.160.247.118', '4e5e5a0d35acae77361b41950c56b1eb', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.120 Chrome/60.4.3112.120 Safari/537.36', 1507598880),
(695, 558, '113.160.247.118', '4e5e5a0d35acae77361b41950c56b1eb', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.120 Chrome/60.4.3112.120 Safari/537.36', 1507598880),
(696, 589, '113.160.247.118', '4e5e5a0d35acae77361b41950c56b1eb', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.120 Chrome/60.4.3112.120 Safari/537.36', 1507598880),
(697, 618, '113.160.247.118', '4e5e5a0d35acae77361b41950c56b1eb', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.120 Chrome/60.4.3112.120 Safari/537.36', 1507598880),
(698, 646, '113.160.247.118', '4e5e5a0d35acae77361b41950c56b1eb', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.120 Chrome/60.4.3112.120 Safari/537.36', 1507598880),
(699, 687, '113.160.247.118', '4e5e5a0d35acae77361b41950c56b1eb', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.120 Chrome/60.4.3112.120 Safari/537.36', 1507598880),
(700, 716, '113.160.247.118', '4e5e5a0d35acae77361b41950c56b1eb', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.120 Chrome/60.4.3112.120 Safari/537.36', 1507598880),
(701, 759, '113.160.247.118', '4e5e5a0d35acae77361b41950c56b1eb', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.120 Chrome/60.4.3112.120 Safari/537.36', 1507598880),
(702, 808, '113.160.247.118', '4e5e5a0d35acae77361b41950c56b1eb', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.120 Chrome/60.4.3112.120 Safari/537.36', 1507598880),
(703, 869, '113.160.247.118', '4e5e5a0d35acae77361b41950c56b1eb', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.120 Chrome/60.4.3112.120 Safari/537.36', 1507598880),
(704, 519, '113.160.247.118', '7340deabf84fd8e5f8c940dd8bfb969d', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507601160),
(705, 552, '113.160.247.118', '7340deabf84fd8e5f8c940dd8bfb969d', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507601160),
(706, 583, '113.160.247.118', '7340deabf84fd8e5f8c940dd8bfb969d', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507601160),
(707, 612, '113.160.247.118', '7340deabf84fd8e5f8c940dd8bfb969d', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507601160),
(708, 641, '113.160.247.118', '7340deabf84fd8e5f8c940dd8bfb969d', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507601160),
(709, 682, '113.160.247.118', '7340deabf84fd8e5f8c940dd8bfb969d', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507601160),
(710, 711, '113.160.247.118', '7340deabf84fd8e5f8c940dd8bfb969d', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507601160),
(711, 754, '113.160.247.118', '7340deabf84fd8e5f8c940dd8bfb969d', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507601160),
(712, 803, '113.160.247.118', '7340deabf84fd8e5f8c940dd8bfb969d', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507601160),
(713, 863, '113.160.247.118', '7340deabf84fd8e5f8c940dd8bfb969d', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507601160);

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
(1, 1, 1, 1, 1505379000),
(2, 1, 114, 1, 1505381520),
(3, 1, 115, 1, 1505383320),
(4, 3, 1, 1, 1505536200),
(5, 3, 114, 1, 1505381347),
(6, 3, 117, 0, 1505381347),
(7, 3, 115, 1, 1505383320),
(8, 4, 1, 1, 1505536680),
(9, 4, 114, 1, 1505384580),
(10, 4, 120, 0, 1505843220),
(11, 4, 117, 0, 1505384483),
(12, 4, 115, 1, 1505550600),
(13, 4, 119, 0, 1505384483),
(14, 4, 118, 0, 1505384483),
(15, 5, 1, 1, 1505536800),
(16, 5, 120, 1, 1505843340),
(17, 5, 114, 0, 1505536780),
(18, 5, 117, 0, 1505536780),
(19, 5, 119, 0, 1505536780),
(20, 5, 115, 1, 1505550600),
(21, 5, 121, 0, 1505536780),
(22, 5, 118, 0, 1505536780),
(23, 7, 1, 1, 1505547780),
(24, 7, 120, 1, 1505843340),
(25, 7, 114, 1, 1505546492),
(26, 7, 117, 0, 1505546492),
(27, 7, 119, 0, 1505546492),
(28, 7, 115, 1, 1505550600),
(29, 7, 121, 0, 1505546492),
(30, 7, 118, 0, 1505546492),
(31, 8, 1, 1, 1505547780),
(32, 8, 120, 1, 1505843340),
(33, 8, 114, 1, 1505546460),
(34, 8, 117, 0, 1505546496),
(35, 8, 119, 0, 1505546496),
(36, 8, 115, 1, 1505550600),
(37, 8, 121, 0, 1505546496),
(38, 8, 118, 0, 1505546496),
(39, 9, 1, 1, 1505547900),
(40, 9, 120, 1, 1505843280),
(41, 9, 114, 1, 1505548380),
(42, 9, 117, 0, 1505547934),
(43, 9, 119, 0, 1505547934),
(44, 9, 115, 1, 1505550600),
(45, 9, 121, 0, 1505547934),
(46, 9, 118, 0, 1505547934),
(47, 10, 1, 1, 1505550120),
(48, 10, 120, 1, 1505843280),
(49, 10, 114, 0, 1505548681),
(50, 10, 117, 0, 1505548681),
(51, 10, 119, 0, 1505548681),
(52, 10, 115, 1, 1505550600),
(53, 10, 121, 1, 1505550180),
(54, 10, 118, 0, 1505548681),
(55, 11, 1, 1, 1505898660),
(56, 11, 120, 1, 1505843280),
(57, 11, 114, 1, 1505551545),
(58, 11, 117, 0, 1505551545),
(59, 11, 119, 0, 1505551545),
(60, 11, 115, 0, 1505551545),
(61, 11, 121, 0, 1505551545),
(62, 11, 118, 0, 1505551545),
(63, 12, 117, 0, 1505551642),
(64, 12, 115, 1, 1505551642),
(65, 13, 1, 1, 1505903880),
(66, 13, 120, 1, 1505843280),
(67, 13, 114, 1, 1505794050),
(68, 13, 117, 0, 1505794050),
(69, 13, 119, 0, 1505794050),
(70, 13, 115, 0, 1505794050),
(71, 13, 121, 0, 1505794050),
(72, 13, 118, 0, 1505794050),
(73, 14, 117, 0, 1505796143),
(74, 14, 120, 1, 1505843280),
(75, 15, 120, 1, 1505902440),
(76, 15, 120, 1, 1505902440),
(77, 16, 120, 1, 1505902500),
(78, 16, 120, 1, 1505902500),
(79, 17, 1, 1, 1505902570),
(80, 17, 120, 1, 1505902620),
(81, 17, 114, 0, 1505902570),
(82, 17, 117, 0, 1505902570),
(83, 17, 119, 0, 1505902570),
(84, 17, 115, 0, 1505902570),
(85, 17, 121, 0, 1505902570),
(86, 17, 118, 0, 1505902570),
(87, 18, 120, 1, 1505902680),
(88, 18, 120, 1, 1505902680),
(89, 19, 115, 0, 1505902915),
(90, 19, 1, 1, 1505903880),
(91, 20, 1, 1, 1505964840),
(92, 20, 120, 0, 1505964286),
(93, 20, 114, 0, 1505964286),
(94, 20, 122, 1, 1505964286),
(95, 20, 117, 0, 1505964286),
(96, 20, 119, 0, 1505964286),
(97, 20, 115, 0, 1505964286),
(98, 20, 121, 0, 1505964286),
(99, 20, 118, 0, 1505964286),
(100, 21, 122, 1, 1505964544),
(101, 22, 122, 1, 1506014520),
(102, 23, 1, 1, 1505984580),
(103, 23, 120, 0, 1505984483),
(104, 23, 114, 0, 1505984483),
(105, 23, 122, 0, 1505984483),
(106, 23, 117, 0, 1505984483),
(107, 23, 119, 0, 1505984483),
(108, 23, 115, 0, 1505984483),
(109, 23, 121, 0, 1505984483),
(110, 23, 118, 0, 1505984483),
(111, 24, 1, 1, 1505986800),
(112, 24, 120, 0, 1505986739),
(113, 24, 114, 0, 1505986739),
(114, 24, 122, 0, 1505986739),
(115, 24, 117, 0, 1505986739),
(116, 24, 119, 0, 1505986739),
(117, 24, 115, 0, 1505986739),
(118, 24, 121, 0, 1505986739),
(119, 24, 118, 0, 1505986739),
(120, 25, 118, 0, 1506014969),
(121, 25, 117, 1, 1506014969),
(122, 26, 118, 1, 1506045708),
(123, 27, 1, 0, 1506052732),
(124, 27, 114, 1, 1506052732),
(125, 27, 120, 0, 1506052732),
(126, 27, 122, 0, 1506052732),
(127, 27, 117, 0, 1506052732),
(128, 27, 125, 0, 1506052732),
(129, 27, 119, 0, 1506052732),
(130, 27, 115, 0, 1506052732),
(131, 27, 121, 0, 1506052732),
(132, 27, 123, 0, 1506052732),
(133, 27, 124, 0, 1506052732),
(134, 27, 118, 0, 1506052732),
(135, 28, 115, 0, 1506052831),
(136, 28, 114, 1, 1506052831),
(137, 29, 115, 0, 1506052933),
(138, 29, 114, 1, 1506052933),
(139, 30, 115, 0, 1506052974),
(140, 30, 114, 1, 1506052974),
(141, 31, 114, 1, 1506053032),
(142, 31, 114, 1, 1506053032),
(143, 32, 114, 1, 1506053114),
(144, 32, 114, 1, 1506053114),
(145, 33, 114, 1, 1506054380),
(146, 34, 1, 1, 1506571791),
(147, 34, 1, 1, 1506571791),
(148, 35, 1, 1, 1506571820),
(149, 35, 1, 1, 1506571820),
(150, 36, 1, 1, 1506585462),
(151, 36, 114, 0, 1506585462),
(152, 36, 120, 0, 1506585462),
(153, 36, 122, 0, 1506585462),
(154, 36, 117, 0, 1506585462),
(155, 36, 125, 0, 1506585462),
(156, 36, 119, 0, 1506585462),
(157, 36, 115, 0, 1506585462),
(158, 36, 121, 0, 1506585462),
(159, 36, 123, 0, 1506585462),
(160, 36, 124, 0, 1506585462),
(161, 36, 118, 0, 1506585462),
(162, 37, 1, 1, 1506651882),
(163, 37, 114, 0, 1506651882),
(164, 37, 120, 0, 1506651882),
(165, 37, 122, 0, 1506651882),
(166, 37, 127, 0, 1506651882),
(167, 37, 128, 0, 1506651882),
(168, 37, 129, 0, 1506651882),
(169, 37, 130, 0, 1506651882),
(170, 37, 131, 0, 1506651882),
(171, 37, 132, 0, 1506651882),
(172, 37, 133, 0, 1506651882),
(173, 37, 145, 0, 1506651882),
(174, 37, 117, 0, 1506651882),
(175, 37, 125, 0, 1506651882),
(176, 37, 142, 0, 1506651882),
(177, 37, 143, 0, 1506651882),
(178, 37, 144, 0, 1506651882),
(179, 37, 119, 0, 1506651882),
(180, 37, 115, 0, 1506651882),
(181, 37, 121, 0, 1506651882),
(182, 37, 123, 0, 1506651882),
(183, 37, 124, 0, 1506651882),
(184, 37, 140, 0, 1506651882),
(185, 37, 141, 0, 1506651882),
(186, 37, 118, 0, 1506651882),
(187, 38, 1, 0, 1506652131),
(188, 38, 114, 0, 1506652131),
(189, 38, 120, 0, 1506652131),
(190, 38, 122, 0, 1506652131),
(191, 38, 127, 0, 1506652131),
(192, 38, 128, 0, 1506652131),
(193, 38, 129, 0, 1506652131),
(194, 38, 130, 0, 1506652131),
(195, 38, 131, 0, 1506652131),
(196, 38, 132, 0, 1506652131),
(197, 38, 133, 0, 1506652131),
(198, 38, 145, 1, 1506652131),
(199, 38, 117, 0, 1506652131),
(200, 38, 125, 0, 1506652131),
(201, 38, 142, 0, 1506652131),
(202, 38, 143, 0, 1506652131),
(203, 38, 144, 0, 1506652131),
(204, 38, 119, 0, 1506652131),
(205, 38, 115, 0, 1506652131),
(206, 38, 121, 0, 1506652131),
(207, 38, 123, 0, 1506652131),
(208, 38, 124, 0, 1506652131),
(209, 38, 140, 0, 1506652131),
(210, 38, 141, 0, 1506652131),
(211, 38, 118, 0, 1506652131),
(212, 39, 1, 0, 1506652132),
(213, 39, 114, 0, 1506652132),
(214, 39, 120, 0, 1506652132),
(215, 39, 122, 0, 1506652132),
(216, 39, 127, 0, 1506652132),
(217, 39, 128, 0, 1506652132),
(218, 39, 129, 0, 1506652132),
(219, 39, 130, 0, 1506652132),
(220, 39, 131, 0, 1506652132),
(221, 39, 132, 0, 1506652132),
(222, 39, 133, 0, 1506652132),
(223, 39, 145, 1, 1506652132),
(224, 39, 117, 0, 1506652132),
(225, 39, 125, 0, 1506652132),
(226, 39, 142, 0, 1506652132),
(227, 39, 143, 0, 1506652132),
(228, 39, 144, 0, 1506652132),
(229, 39, 119, 0, 1506652132),
(230, 39, 115, 0, 1506652132),
(231, 39, 121, 0, 1506652132),
(232, 39, 123, 0, 1506652132),
(233, 39, 124, 0, 1506652132),
(234, 39, 140, 0, 1506652132),
(235, 39, 141, 0, 1506652132),
(236, 39, 118, 0, 1506652132),
(237, 40, 124, 0, 1506652235),
(238, 40, 140, 0, 1506652235),
(239, 40, 141, 0, 1506652235),
(240, 40, 1, 1, 1506652235),
(241, 41, 1, 0, 1506653980),
(242, 41, 114, 1, 1506653980),
(243, 41, 120, 0, 1506653980),
(244, 41, 122, 0, 1506653980),
(245, 41, 127, 0, 1506653980),
(246, 41, 128, 0, 1506653980),
(247, 41, 129, 0, 1506653980),
(248, 41, 130, 0, 1506653980),
(249, 41, 131, 0, 1506653980),
(250, 41, 132, 0, 1506653980),
(251, 41, 133, 0, 1506653980),
(252, 41, 145, 0, 1506653980),
(253, 41, 117, 0, 1506653980),
(254, 41, 146, 0, 1506653980),
(255, 41, 125, 0, 1506653980),
(256, 41, 142, 0, 1506653980),
(257, 41, 143, 0, 1506653980),
(258, 41, 144, 0, 1506653980),
(259, 41, 119, 0, 1506653980),
(260, 41, 115, 0, 1506653980),
(261, 41, 140, 0, 1506653980),
(262, 41, 148, 1, 1506654900),
(263, 41, 121, 0, 1506653980),
(264, 41, 123, 0, 1506653980),
(265, 41, 124, 0, 1506653980),
(266, 41, 141, 0, 1506653980),
(267, 41, 147, 0, 1506653980),
(268, 41, 118, 0, 1506653980),
(269, 42, 118, 0, 1506654005),
(270, 42, 114, 1, 1506654005),
(271, 43, 124, 0, 1506654067),
(272, 43, 141, 0, 1506654067),
(273, 43, 140, 0, 1506654067),
(274, 43, 147, 0, 1506654067),
(275, 43, 148, 1, 1506654900),
(276, 43, 118, 1, 1506654067),
(277, 44, 125, 0, 1506654881),
(278, 44, 142, 0, 1506654881),
(279, 44, 143, 0, 1506654881),
(280, 44, 144, 0, 1506654881),
(281, 44, 148, 1, 1506654881),
(282, 45, 118, 0, 1506654932),
(283, 45, 1, 1, 1506654932),
(284, 46, 1, 0, 1506654938),
(285, 46, 114, 0, 1506654938),
(286, 46, 120, 0, 1506654938),
(287, 46, 122, 0, 1506654938),
(288, 46, 127, 0, 1506654938),
(289, 46, 128, 0, 1506654938),
(290, 46, 129, 0, 1506654938),
(291, 46, 130, 0, 1506654938),
(292, 46, 131, 0, 1506654938),
(293, 46, 132, 0, 1506654938),
(294, 46, 133, 1, 1506654938),
(295, 46, 145, 0, 1506654938),
(296, 46, 117, 0, 1506654938),
(297, 46, 146, 0, 1506654938),
(298, 46, 125, 0, 1506654938),
(299, 46, 142, 0, 1506654938),
(300, 46, 143, 0, 1506654938),
(301, 46, 144, 0, 1506654938),
(302, 46, 119, 0, 1506654938),
(303, 46, 115, 0, 1506654938),
(304, 46, 140, 0, 1506654938),
(305, 46, 148, 1, 1506655080),
(306, 46, 121, 0, 1506654938),
(307, 46, 123, 0, 1506654938),
(308, 46, 124, 0, 1506654938),
(309, 46, 141, 0, 1506654938),
(310, 46, 147, 0, 1506654938),
(311, 46, 118, 0, 1506654938),
(312, 47, 133, 1, 1506655151),
(313, 48, 115, 0, 1506655241),
(314, 48, 134, 0, 1506655241),
(315, 48, 135, 0, 1506655241),
(316, 48, 136, 0, 1506655241),
(317, 48, 137, 0, 1506655241),
(318, 48, 138, 0, 1506655241),
(319, 48, 139, 0, 1506655241),
(320, 48, 133, 1, 1506655241),
(321, 49, 124, 0, 1506655652),
(322, 49, 141, 0, 1506655652),
(323, 49, 140, 0, 1506655652),
(324, 49, 147, 0, 1506655652),
(325, 49, 148, 0, 1506655652),
(326, 49, 1, 1, 1506655652),
(327, 50, 133, 1, 1506656051),
(328, 50, 133, 1, 1506656051),
(329, 50, 133, 1, 1506656051),
(330, 51, 115, 0, 1506656066),
(331, 51, 134, 0, 1506656066),
(332, 51, 135, 0, 1506656066),
(333, 51, 136, 0, 1506656066),
(334, 51, 137, 0, 1506656066),
(335, 51, 138, 0, 1506656066),
(336, 51, 139, 0, 1506656066),
(337, 51, 133, 1, 1506656066),
(338, 52, 133, 1, 1506656145),
(339, 52, 133, 1, 1506656145),
(340, 53, 1, 0, 1506656740),
(341, 53, 114, 1, 1506656740),
(342, 53, 120, 0, 1506656740),
(343, 53, 122, 0, 1506656740),
(344, 53, 127, 0, 1506656740),
(345, 53, 128, 0, 1506656740),
(346, 53, 129, 0, 1506656740),
(347, 53, 130, 0, 1506656740),
(348, 53, 131, 0, 1506656740),
(349, 53, 132, 0, 1506656740),
(350, 53, 133, 0, 1506656740),
(351, 53, 145, 0, 1506656740),
(352, 53, 117, 0, 1506656740),
(353, 53, 146, 0, 1506656740),
(354, 53, 125, 0, 1506656740),
(355, 53, 142, 0, 1506656740),
(356, 53, 143, 0, 1506656740),
(357, 53, 144, 0, 1506656740),
(358, 53, 119, 0, 1506656740),
(359, 53, 115, 0, 1506656740),
(360, 53, 140, 0, 1506656740),
(361, 53, 148, 0, 1506656740),
(362, 53, 141, 0, 1506656740),
(363, 53, 121, 0, 1506656740),
(364, 53, 123, 0, 1506656740),
(365, 53, 124, 0, 1506656740),
(366, 53, 147, 0, 1506656740),
(367, 53, 118, 0, 1506656740),
(368, 54, 115, 0, 1506656853),
(369, 54, 134, 0, 1506656853),
(370, 54, 135, 0, 1506656853),
(371, 54, 136, 0, 1506656853),
(372, 54, 138, 0, 1506656853),
(373, 54, 137, 1, 1506657480),
(374, 54, 139, 0, 1506656853),
(375, 54, 114, 1, 1506656853),
(376, 55, 137, 1, 1506657480),
(377, 55, 137, 1, 1506657480),
(378, 56, 114, 0, 1506656885),
(379, 56, 139, 1, 1506656885),
(380, 57, 114, 0, 1506656888),
(381, 57, 139, 1, 1506656888),
(382, 58, 114, 0, 1506656911),
(383, 58, 139, 1, 1506656880),
(384, 59, 114, 0, 1506657562),
(385, 59, 137, 1, 1506657562),
(386, 60, 117, 0, 1506658079),
(387, 60, 146, 0, 1506658079),
(388, 60, 137, 1, 1506658079),
(389, 61, 1, 0, 1506659000),
(390, 61, 114, 1, 1506659000),
(391, 61, 120, 0, 1506659000),
(392, 61, 122, 0, 1506659000),
(393, 61, 127, 0, 1506659000),
(394, 61, 128, 0, 1506659000),
(395, 61, 129, 0, 1506659000),
(396, 61, 130, 0, 1506659000),
(397, 61, 131, 0, 1506659000),
(398, 61, 132, 0, 1506659000),
(399, 61, 133, 0, 1506659000),
(400, 61, 145, 0, 1506659000),
(401, 61, 117, 0, 1506659000),
(402, 61, 146, 0, 1506659000),
(403, 61, 125, 0, 1506659000),
(404, 61, 142, 0, 1506659000),
(405, 61, 143, 0, 1506659000),
(406, 61, 144, 0, 1506659000),
(407, 61, 119, 0, 1506659000),
(408, 61, 115, 0, 1506659000),
(409, 61, 140, 0, 1506659000),
(410, 61, 148, 0, 1506659000),
(411, 61, 141, 0, 1506659000),
(412, 61, 137, 0, 1506659000),
(413, 61, 139, 0, 1506659000),
(414, 61, 121, 0, 1506659000),
(415, 61, 123, 0, 1506659000),
(416, 61, 124, 0, 1506659000),
(417, 61, 147, 0, 1506659000),
(418, 61, 118, 0, 1506659000),
(419, 62, 114, 1, 1506659044),
(420, 63, 115, 0, 1506659112),
(421, 63, 134, 0, 1506659112),
(422, 63, 135, 0, 1506659112),
(423, 63, 136, 0, 1506659112),
(424, 63, 138, 0, 1506659112),
(425, 63, 137, 0, 1506659112),
(426, 63, 139, 0, 1506659112),
(427, 63, 114, 1, 1506659112),
(428, 64, 117, 0, 1506659216),
(429, 64, 146, 0, 1506659216),
(430, 64, 115, 1, 1506659216),
(431, 65, 1, 0, 1506659261),
(432, 65, 114, 0, 1506659261),
(433, 65, 120, 0, 1506659261),
(434, 65, 122, 0, 1506659261),
(435, 65, 127, 0, 1506659261),
(436, 65, 128, 0, 1506659261),
(437, 65, 129, 1, 1506659261),
(438, 65, 130, 0, 1506659261),
(439, 65, 131, 0, 1506659261),
(440, 65, 132, 0, 1506659261),
(441, 65, 133, 0, 1506659261),
(442, 65, 145, 0, 1506659261),
(443, 65, 117, 0, 1506659261),
(444, 65, 146, 0, 1506659261),
(445, 65, 125, 0, 1506659261),
(446, 65, 142, 0, 1506659261),
(447, 65, 143, 0, 1506659261),
(448, 65, 144, 0, 1506659261),
(449, 65, 119, 0, 1506659261),
(450, 65, 115, 0, 1506659261),
(451, 65, 140, 0, 1506659261),
(452, 65, 148, 0, 1506659261),
(453, 65, 141, 0, 1506659261),
(454, 65, 137, 0, 1506659261),
(455, 65, 139, 0, 1506659261),
(456, 65, 121, 0, 1506659261),
(457, 65, 123, 0, 1506659261),
(458, 65, 124, 0, 1506659261),
(459, 65, 147, 0, 1506659261),
(460, 65, 118, 0, 1506659261),
(461, 66, 1, 0, 1506659469),
(462, 66, 114, 0, 1506659469),
(463, 66, 120, 0, 1506659469),
(464, 66, 122, 0, 1506659469),
(465, 66, 127, 0, 1506659469),
(466, 66, 128, 0, 1506659469),
(467, 66, 129, 1, 1506659469),
(468, 66, 130, 0, 1506659469),
(469, 66, 131, 0, 1506659469),
(470, 66, 132, 0, 1506659469),
(471, 66, 133, 0, 1506659469),
(472, 66, 145, 0, 1506659469),
(473, 66, 117, 0, 1506659469),
(474, 66, 146, 0, 1506659469),
(475, 66, 125, 0, 1506659469),
(476, 66, 142, 0, 1506659469),
(477, 66, 143, 0, 1506659469),
(478, 66, 144, 0, 1506659469),
(479, 66, 119, 0, 1506659469),
(480, 66, 115, 0, 1506659469),
(481, 66, 140, 0, 1506659469),
(482, 66, 148, 0, 1506659469),
(483, 66, 141, 0, 1506659469),
(484, 66, 137, 0, 1506659469),
(485, 66, 139, 0, 1506659469),
(486, 66, 121, 0, 1506659469),
(487, 66, 123, 0, 1506659469),
(488, 66, 124, 0, 1506659469),
(489, 66, 147, 0, 1506659469),
(490, 66, 118, 0, 1506659469),
(491, 67, 118, 0, 1506659484),
(492, 67, 117, 1, 1506659484),
(493, 68, 124, 0, 1506659535),
(494, 68, 140, 0, 1506659535),
(495, 68, 147, 0, 1506659535),
(496, 68, 148, 0, 1506659535),
(497, 68, 141, 0, 1506659535),
(498, 68, 118, 1, 1506659535),
(499, 69, 125, 0, 1506659614),
(500, 69, 142, 0, 1506659614),
(501, 69, 143, 0, 1506659614),
(502, 69, 144, 0, 1506659614),
(503, 69, 124, 1, 1506659614),
(504, 70, 129, 1, 1506659686),
(505, 71, 114, 0, 1506659726),
(506, 71, 114, 0, 1506659726),
(507, 71, 118, 0, 1506659726),
(508, 71, 148, 0, 1506659726),
(509, 71, 125, 1, 1506659726),
(510, 72, 115, 0, 1506659825),
(511, 72, 134, 0, 1506659825),
(512, 72, 135, 0, 1506659825),
(513, 72, 136, 0, 1506659825),
(514, 72, 138, 0, 1506659825),
(515, 72, 137, 0, 1506659825),
(516, 72, 139, 0, 1506659825),
(517, 72, 129, 1, 1506659825),
(518, 73, 1, 0, 1506737899),
(519, 73, 167, 0, 1506737899),
(520, 73, 150, 0, 1506737899),
(521, 73, 151, 0, 1506737899),
(522, 73, 152, 0, 1506737899),
(523, 73, 153, 0, 1506737899),
(524, 73, 154, 0, 1506737899),
(525, 73, 155, 1, 1506737899),
(526, 73, 164, 0, 1506737899),
(527, 73, 165, 0, 1506737899),
(528, 73, 166, 0, 1506737899),
(529, 73, 119, 0, 1506737899),
(530, 73, 148, 0, 1506737899),
(531, 73, 156, 0, 1506737899),
(532, 73, 157, 0, 1506737899),
(533, 73, 158, 0, 1506737899),
(534, 73, 159, 0, 1506737899),
(535, 73, 160, 0, 1506737899),
(536, 73, 161, 0, 1506737899),
(537, 73, 162, 0, 1506737899),
(538, 73, 163, 0, 1506737899),
(539, 74, 156, 0, 1506738058),
(540, 74, 157, 0, 1506738058),
(541, 74, 158, 0, 1506738058),
(542, 74, 159, 0, 1506738058),
(543, 74, 160, 0, 1506738058),
(544, 74, 161, 0, 1506738058),
(545, 74, 155, 1, 1506738058),
(546, 75, 157, 0, 1506754602),
(547, 75, 155, 0, 1506754602),
(548, 75, 156, 1, 1506754602),
(549, 76, 1, 0, 1506996290),
(550, 76, 162, 1, 1506996290),
(551, 77, 1, 0, 1507108781),
(552, 77, 167, 0, 1507108781),
(553, 77, 150, 1, 1507108781),
(554, 77, 151, 0, 1507108781),
(555, 77, 152, 0, 1507108781),
(556, 77, 153, 0, 1507108781),
(557, 77, 154, 0, 1507108781),
(558, 77, 155, 0, 1507108781),
(559, 77, 164, 0, 1507108781),
(560, 77, 165, 0, 1507108781),
(561, 77, 166, 0, 1507108781),
(562, 77, 119, 0, 1507108781),
(563, 77, 148, 0, 1507108781),
(564, 77, 156, 0, 1507108781),
(565, 77, 157, 0, 1507108781),
(566, 77, 158, 0, 1507108781),
(567, 77, 159, 0, 1507108781),
(568, 77, 160, 0, 1507108781),
(569, 77, 161, 0, 1507108781),
(570, 77, 162, 0, 1507108781),
(571, 77, 163, 0, 1507108781),
(572, 78, 156, 0, 1507108799),
(573, 78, 157, 0, 1507108799),
(574, 78, 158, 0, 1507108799),
(575, 78, 159, 0, 1507108799),
(576, 78, 160, 0, 1507108799),
(577, 78, 161, 1, 1507108860),
(578, 78, 150, 1, 1507108799),
(579, 78, 150, 1, 1507108799),
(580, 79, 150, 1, 1507108920),
(581, 79, 161, 1, 1507186860),
(582, 80, 1, 0, 1507187854),
(583, 80, 167, 0, 1507187854),
(584, 80, 150, 1, 1507187854),
(585, 80, 151, 0, 1507187854),
(586, 80, 152, 0, 1507187854),
(587, 80, 153, 0, 1507187854),
(588, 80, 154, 0, 1507187854),
(589, 80, 155, 0, 1507187854),
(590, 80, 164, 0, 1507187854),
(591, 80, 165, 0, 1507187854),
(592, 80, 166, 0, 1507187854),
(593, 80, 119, 0, 1507187854),
(594, 80, 148, 0, 1507187854),
(595, 80, 156, 0, 1507187854),
(596, 80, 157, 0, 1507187854),
(597, 80, 158, 0, 1507187854),
(598, 80, 159, 0, 1507187854),
(599, 80, 160, 0, 1507187854),
(600, 80, 161, 1, 1507187820),
(601, 80, 162, 0, 1507187854),
(602, 80, 163, 0, 1507187854),
(603, 81, 156, 0, 1507187890),
(604, 81, 157, 0, 1507187890),
(605, 81, 158, 0, 1507187890),
(606, 81, 159, 0, 1507187890),
(607, 81, 160, 0, 1507187890),
(608, 81, 161, 0, 1507187890),
(609, 81, 150, 1, 1507187890),
(610, 81, 150, 1, 1507187890),
(611, 82, 1, 0, 1507187959),
(612, 82, 167, 0, 1507187959),
(613, 82, 150, 1, 1507187959),
(614, 82, 151, 0, 1507187959),
(615, 82, 152, 0, 1507187959),
(616, 82, 153, 0, 1507187959),
(617, 82, 154, 0, 1507187959),
(618, 82, 155, 0, 1507187959),
(619, 82, 164, 0, 1507187959),
(620, 82, 165, 0, 1507187959),
(621, 82, 166, 0, 1507187959),
(622, 82, 119, 0, 1507187959),
(623, 82, 148, 0, 1507187959),
(624, 82, 156, 0, 1507187959),
(625, 82, 157, 0, 1507187959),
(626, 82, 158, 0, 1507187959),
(627, 82, 159, 0, 1507187959),
(628, 82, 160, 0, 1507187959),
(629, 82, 161, 0, 1507187959),
(630, 82, 162, 0, 1507187959),
(631, 82, 163, 0, 1507187959),
(632, 83, 156, 0, 1507188198),
(633, 83, 157, 0, 1507188198),
(634, 83, 158, 0, 1507188198),
(635, 83, 159, 0, 1507188198),
(636, 83, 160, 0, 1507188198),
(637, 83, 161, 0, 1507188198),
(638, 83, 150, 1, 1507188198),
(639, 83, 150, 1, 1507188198),
(640, 84, 1, 1, 1507191438),
(641, 84, 167, 0, 1507191438),
(642, 84, 150, 0, 1507191438),
(643, 84, 151, 0, 1507191438),
(644, 84, 152, 0, 1507191438),
(645, 84, 153, 0, 1507191438),
(646, 84, 155, 0, 1507191438),
(647, 84, 164, 0, 1507191438),
(648, 84, 165, 0, 1507191438),
(649, 84, 166, 0, 1507191438),
(650, 84, 119, 0, 1507191438),
(651, 84, 148, 0, 1507191438),
(652, 84, 156, 0, 1507191438),
(653, 84, 157, 0, 1507191438),
(654, 84, 158, 0, 1507191438),
(655, 84, 159, 0, 1507191438),
(656, 84, 160, 0, 1507191438),
(657, 84, 161, 0, 1507191438),
(658, 84, 162, 0, 1507191438),
(659, 84, 163, 0, 1507191438),
(660, 84, 154, 0, 1507191438),
(661, 85, 156, 0, 1507191488),
(662, 85, 157, 0, 1507191488),
(663, 85, 158, 1, 1507191720),
(664, 85, 159, 0, 1507191488),
(665, 85, 160, 0, 1507191488),
(666, 85, 161, 0, 1507191488),
(667, 85, 1, 1, 1507191488),
(668, 85, 1, 1, 1507191488),
(669, 86, 150, 0, 1507191548),
(670, 86, 158, 1, 1507191548),
(671, 87, 150, 0, 1507191551),
(672, 87, 158, 1, 1507191551),
(673, 88, 157, 0, 1507191992),
(674, 88, 1, 0, 1507191992),
(675, 88, 158, 1, 1507191992),
(676, 89, 157, 0, 1507191996),
(677, 89, 150, 0, 1507191996),
(678, 89, 158, 1, 1507191996),
(679, 90, 150, 0, 1507192043),
(680, 90, 158, 1, 1507192043),
(681, 91, 1, 0, 1507192538),
(682, 91, 167, 0, 1507192538),
(683, 91, 150, 0, 1507192538),
(684, 91, 151, 1, 1507192538),
(685, 91, 152, 0, 1507192538),
(686, 91, 153, 0, 1507192538),
(687, 91, 155, 0, 1507192538),
(688, 91, 164, 0, 1507192538),
(689, 91, 165, 0, 1507192538),
(690, 91, 166, 0, 1507192538),
(691, 91, 119, 0, 1507192538),
(692, 91, 148, 0, 1507192538),
(693, 91, 156, 0, 1507192538),
(694, 91, 157, 0, 1507192538),
(695, 91, 158, 0, 1507192538),
(696, 91, 159, 0, 1507192538),
(697, 91, 160, 0, 1507192538),
(698, 91, 161, 0, 1507192538),
(699, 91, 162, 0, 1507192538),
(700, 91, 163, 0, 1507192538),
(701, 91, 154, 0, 1507192538),
(702, 92, 156, 0, 1507192611),
(703, 92, 157, 0, 1507192611),
(704, 92, 158, 0, 1507192611),
(705, 92, 159, 0, 1507192611),
(706, 92, 160, 0, 1507192611),
(707, 92, 161, 0, 1507192611),
(708, 92, 151, 1, 1507192611),
(709, 92, 151, 1, 1507192611),
(710, 93, 1, 0, 1507192628),
(711, 93, 167, 0, 1507192628),
(712, 93, 150, 0, 1507192628),
(713, 93, 151, 0, 1507192628),
(714, 93, 152, 0, 1507192628),
(715, 93, 153, 1, 1507192628),
(716, 93, 155, 0, 1507192628),
(717, 93, 164, 0, 1507192628),
(718, 93, 165, 0, 1507192628),
(719, 93, 166, 0, 1507192628),
(720, 93, 119, 0, 1507192628),
(721, 93, 148, 0, 1507192628),
(722, 93, 156, 0, 1507192628),
(723, 93, 157, 0, 1507192628),
(724, 93, 158, 0, 1507192628),
(725, 93, 159, 0, 1507192628),
(726, 93, 160, 0, 1507192628),
(727, 93, 161, 0, 1507192628),
(728, 93, 162, 0, 1507192628),
(729, 93, 163, 0, 1507192628),
(730, 93, 154, 0, 1507192628),
(731, 94, 151, 1, 1507192636),
(732, 94, 151, 1, 1507192636),
(733, 95, 153, 1, 1507192752),
(734, 96, 153, 1, 1507192754),
(735, 97, 156, 0, 1507192802),
(736, 97, 157, 0, 1507192802),
(737, 97, 158, 0, 1507192802),
(738, 97, 159, 0, 1507192802),
(739, 97, 160, 0, 1507192802),
(740, 97, 161, 0, 1507192802),
(741, 97, 151, 1, 1507192802),
(742, 98, 151, 1, 1507192824),
(743, 98, 151, 1, 1507192824),
(744, 99, 151, 1, 1507192913),
(745, 99, 151, 1, 1507192913),
(746, 100, 156, 0, 1507192920),
(747, 100, 157, 1, 1507350000),
(748, 100, 158, 0, 1507192920),
(749, 100, 159, 0, 1507192920),
(750, 100, 160, 0, 1507192920),
(751, 100, 161, 0, 1507192920),
(752, 100, 151, 1, 1507192920),
(753, 101, 1, 0, 1507194160),
(754, 101, 167, 0, 1507194160),
(755, 101, 150, 1, 1507194160),
(756, 101, 151, 0, 1507194160),
(757, 101, 152, 0, 1507194160),
(758, 101, 153, 0, 1507194160),
(759, 101, 155, 0, 1507194160),
(760, 101, 164, 0, 1507194160),
(761, 101, 165, 0, 1507194160),
(762, 101, 166, 0, 1507194160),
(763, 101, 119, 0, 1507194160),
(764, 101, 148, 0, 1507194160),
(765, 101, 156, 0, 1507194160),
(766, 101, 157, 1, 1507350000),
(767, 101, 158, 0, 1507194160),
(768, 101, 159, 0, 1507194160),
(769, 101, 160, 0, 1507194160),
(770, 101, 161, 0, 1507194160),
(771, 101, 162, 0, 1507194160),
(772, 101, 163, 0, 1507194160),
(773, 101, 154, 0, 1507194160),
(774, 102, 156, 0, 1507194177),
(775, 102, 157, 0, 1507194177),
(776, 102, 158, 0, 1507194177),
(777, 102, 159, 0, 1507194177),
(778, 102, 160, 1, 1507194180),
(779, 102, 161, 0, 1507194177),
(780, 102, 150, 1, 1507194177),
(781, 102, 150, 1, 1507194177),
(782, 103, 151, 0, 1507194200),
(783, 103, 160, 1, 1507194200),
(784, 104, 151, 0, 1507194201),
(785, 104, 160, 1, 1507194201),
(786, 105, 151, 0, 1507194202),
(787, 105, 160, 1, 1507194202),
(788, 106, 168, 0, 1507194495),
(789, 106, 150, 0, 1507194495),
(790, 106, 160, 1, 1507194495),
(791, 107, 160, 0, 1507194561),
(792, 107, 150, 0, 1507194561),
(793, 107, 168, 1, 1507194561),
(794, 108, 150, 0, 1507194576),
(795, 108, 160, 1, 1507194576),
(796, 108, 168, 0, 1507194576),
(797, 108, 160, 1, 1507194576),
(798, 109, 150, 0, 1507194587),
(799, 109, 160, 1, 1507194587),
(800, 109, 168, 0, 1507194587),
(801, 109, 160, 1, 1507194587),
(802, 110, 1, 0, 1507345572),
(803, 110, 167, 0, 1507345572),
(804, 110, 151, 1, 1507345572),
(805, 110, 153, 0, 1507345572),
(806, 110, 150, 0, 1507345572),
(807, 110, 152, 0, 1507345572),
(808, 110, 155, 0, 1507345572),
(809, 110, 168, 0, 1507345572),
(810, 110, 164, 0, 1507345572),
(811, 110, 165, 0, 1507345572),
(812, 110, 166, 0, 1507345572),
(813, 110, 119, 0, 1507345572),
(814, 110, 148, 0, 1507345572),
(815, 110, 156, 0, 1507345572),
(816, 110, 157, 0, 1507345572),
(817, 110, 158, 0, 1507345572),
(818, 110, 162, 0, 1507345572),
(819, 110, 163, 1, 1507351560),
(820, 110, 154, 0, 1507345572),
(821, 110, 160, 0, 1507345572),
(822, 110, 159, 0, 1507345572),
(823, 110, 161, 0, 1507345572),
(824, 111, 156, 0, 1507345646),
(825, 111, 157, 1, 1507349940),
(826, 111, 158, 0, 1507345646),
(827, 111, 159, 0, 1507345646),
(828, 111, 161, 0, 1507345646),
(829, 111, 151, 1, 1507345646),
(830, 111, 151, 1, 1507345646),
(831, 112, 156, 0, 1507345691),
(832, 112, 151, 0, 1507345691),
(833, 112, 159, 1, 1507345691),
(834, 113, 151, 0, 1507345785),
(835, 113, 159, 1, 1507345785),
(836, 114, 151, 0, 1507345813),
(837, 114, 159, 1, 1507345813),
(838, 115, 1, 0, 1507349528),
(839, 115, 157, 1, 1507349528),
(840, 115, 157, 1, 1507349528),
(841, 116, 168, 0, 1507349936),
(842, 116, 1, 0, 1507349936),
(843, 116, 157, 1, 1507349936),
(844, 117, 168, 0, 1507350748),
(845, 117, 150, 0, 1507350748),
(846, 117, 157, 1, 1507350748),
(847, 118, 1, 0, 1507351223),
(848, 118, 163, 1, 1507351223),
(849, 119, 1, 0, 1507351381),
(850, 119, 163, 1, 1507351381),
(851, 120, 1, 0, 1507351537),
(852, 120, 163, 1, 1507351537),
(853, 121, 164, 0, 1507351547),
(854, 121, 165, 0, 1507351547),
(855, 121, 166, 0, 1507351547),
(856, 121, 1, 0, 1507351547),
(857, 121, 163, 1, 1507351560),
(858, 122, 164, 0, 1507351669),
(859, 122, 165, 0, 1507351669),
(860, 122, 166, 0, 1507351669),
(861, 122, 1, 0, 1507351669),
(862, 122, 163, 1, 1507351669),
(863, 123, 167, 0, 1507539645),
(864, 123, 1, 0, 1507539645),
(865, 123, 151, 0, 1507539645),
(866, 123, 153, 0, 1507539645),
(867, 123, 150, 1, 1507539645),
(868, 123, 152, 0, 1507539645),
(869, 123, 155, 0, 1507539645),
(870, 123, 168, 0, 1507539645),
(871, 123, 164, 0, 1507539645),
(872, 123, 165, 0, 1507539645),
(873, 123, 166, 0, 1507539645),
(874, 123, 119, 0, 1507539645),
(875, 123, 148, 0, 1507539645),
(876, 123, 156, 0, 1507539645),
(877, 123, 157, 0, 1507539645),
(878, 123, 158, 0, 1507539645),
(879, 123, 162, 0, 1507539645),
(880, 123, 163, 0, 1507539645),
(881, 123, 154, 0, 1507539645),
(882, 123, 160, 0, 1507539645),
(883, 123, 159, 0, 1507539645),
(884, 123, 161, 0, 1507539645);

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
(11389, '117.3.0.177', 1507601357, 'ol=document&op=document_list', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 0),
(11387, '113.160.247.118', 1507601186, '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 0),
(11388, '117.3.0.177', 1507601255, 'ol=document&op=document_list', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 0),
(11380, '117.3.0.177', 1507600903, 'ol=document&op=document_list', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 0),
(11381, '117.3.0.177', 1507600907, 'ol=document&op=document_add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 0),
(11384, '117.3.0.177', 1507600968, 'ol=document&op=document_list', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Mobile Safari/537.36', 0),
(11382, '117.3.0.177', 1507600947, 'ol=document&op=document_add', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Mobile Safari/537.36', 0),
(11383, '113.160.247.118', 1507601174, '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 0),
(11377, '117.3.0.177', 1507600749, '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 0),
(11378, '117.3.0.177', 1507600749, '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 0),
(11379, '117.3.0.177', 1507600756, '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 0),
(11385, '117.3.0.177', 1507600991, 'ol=document&op=document_list', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 0),
(11386, '117.3.0.177', 1507601082, 'ol=document&op=document_list', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 0),
(11376, '117.3.0.177', 1507600749, '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 0),
(11367, '117.3.0.177', 1507600749, '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 0);

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
(32, '2017-09-24', 31),
(31, '2017-09-23', 11),
(30, '2017-09-22', 314),
(29, '2017-09-21', 451),
(28, '2017-09-20', 263),
(27, '2017-09-19', 98),
(26, '2017-09-18', 10),
(25, '2017-09-17', 7),
(24, '2017-09-16', 531),
(23, '2017-09-15', 140),
(22, '2017-09-14', 635),
(21, '2017-09-13', 6),
(20, '2017-09-12', 95),
(19, '2017-09-11', 263),
(18, '2017-09-10', 108),
(33, '2017-09-25', 27),
(34, '2017-09-26', 18),
(35, '2017-09-27', 30),
(36, '2017-09-28', 228),
(37, '2017-09-29', 726),
(38, '2017-09-30', 359),
(39, '2017-10-01', 5),
(40, '2017-10-02', 291),
(41, '2017-10-03', 358),
(42, '2017-10-04', 234),
(43, '2017-10-05', 883),
(44, '2017-10-06', 34),
(45, '2017-10-07', 122),
(46, '2017-10-08', 36),
(47, '2017-10-09', 159),
(48, '2017-10-10', 25);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_product`
--

CREATE TABLE `olala3w_product` (
  `product_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `unit_price` float NOT NULL,
  `type` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `modified_time` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `is_parent` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `olala3w_product`
--

INSERT INTO `olala3w_product` (`product_id`, `name`, `img`, `size`, `comment`, `unit_price`, `type`, `is_active`, `created_time`, `modified_time`, `user_id`, `parent`, `is_parent`) VALUES
(1, 'Set khách sạn', '', '', '', 0, 'Bộ', 1, 1506134054, 0, 1, 0, 1),
(2, 'Set resort', '', '', '', 0, 'Bộ', 1, 1506134100, 0, 1, 0, 1),
(3, 'Set nhà hàng', '', '', '', 0, 'Bộ', 1, 1506134200, 0, 1, 0, 1),
(4, 'Brochure_KS', '', 'A4', '', 300000, 'Quyển', 1, 1506134300, 0, 1, 1, 0),
(5, 'Hộp giấy_KS', '', 'A4', '', 50000, 'Hộp', 1, 1506134400, 0, 1, 1, 0),
(6, 'Lịch_KS', '', 'A4', '', 100000, 'Quyển', 1, 1506134500, 0, 1, 1, 0),
(7, 'Thiệp mời_KS', '', 'A5', '', 2000, 'Cái', 1, 1506134500, 0, 1, 1, 0),
(8, 'Menu_KS', '', 'A4', '', 50000, 'Quyển', 1, 1506134600, 0, 1, 1, 0),
(9, 'Catalogue_KS', '', 'A4', '', 100000, 'Quyển', 1, 1506134600, 0, 1, 1, 0),
(10, 'Poster_KS', '', 'A5', '', 60000, 'Tờ', 1, 1506134700, 0, 1, 1, 0),
(11, 'Profile_RS', '', 'A4', '', 200000, 'Tập', 1, 1506134800, 0, 1, 2, 0),
(12, 'Túi giấy_KS', '', 'A4', '', 20000, 'Cái', 1, 1506134900, 0, 1, 1, 0),
(13, 'Túi giấy_RS', '', 'A4', '', 30000, 'Cái', 1, 1506134900, 0, 1, 2, 0),
(14, 'Profile_KS', '', 'A4', '', 250000, 'Tập', 1, 1506131000, 0, 1, 1, 0),
(15, 'Lịch_RS', '', 'A5', '', 50000, 'Quyển', 1, 1506131010, 0, 1, 2, 0),
(16, 'Bao bì giấy_KS', '', 'A3', '', 4000, 'Cái', 1, 1506131100, 0, 1, 1, 0),
(17, 'Bao bì giấy_RS', '', 'A4', '', 5000, 'Cái', 1, 1506131300, 0, 1, 2, 0),
(18, 'Bao bì giấy_NH', '', 'A3', '', 6000, 'Cái', 1, 1506131300, 0, 1, 3, 0),
(19, 'Lịch_NH', '', 'A5', '', 80000, 'Quyển', 1, 1506131010, 0, 1, 3, 0),
(20, 'Menu_NH', '', 'A4', '', 80000, 'Tập', 1, 1506134600, 0, 1, 3, 0),
(21, 'Túi giấy_NH', '', 'A4', '', 25000, 'Cái', 1, 1506134900, 0, 1, 3, 0),
(22, 'Thiệp mời_RS', '', 'A6', '', 5000, 'Cái', 1, 1506134500, 0, 1, 2, 0),
(23, 'Thiệp mời_NH', '', 'A6', '', 6000, 'Cái', 1, 1506134500, 0, 1, 3, 0),
(24, 'Name Card_KS', '', 'A8', '', 100000, 'Hộp', 1, 1506134400, 0, 1, 1, 0),
(25, 'Name Card_RS', '', 'A8', '', 100000, 'Hộp', 1, 1506134400, 0, 1, 2, 0),
(26, 'Name Card_NH', '', 'A8', '', 100000, 'Hộp', 1, 1506134400, 0, 1, 3, 0),
(28, 'Thiệp mời', '', '', '', 6000, 'Cái', 1, 1506134500, 0, 1, 0, 0),
(29, 'Bao bì giấy', '', '', '', 4000, 'Cái', 1, 1506131100, 0, 1, 0, 0),
(30, 'Brochure', '', '', '', 300000, 'Quyển', 1, 1506134300, 0, 1, 0, 0),
(31, 'Lịch', '', '', '', 100000, 'Quyển', 1, 1506134500, 0, 1, 0, 0),
(32, 'Catalogue', '', '', '', 100000, 'Quyển', 1, 1506134600, 0, 1, 0, 0),
(33, 'Name Card', '', '', '', 100000, 'Hộp', 1, 1506134400, 0, 1, 0, 0),
(34, 'Profile', '', '', '', 200000, 'Hộp', 1, 1506134800, 0, 1, 0, 0),
(35, 'Poster', '', '', '', 60000, 'Tờ', 1, 1506134700, 0, 1, 0, 0),
(36, 'Banner', '', '', '', 500000, 'Cái', 1, 1506134700, 0, 1, 0, 0),
(37, 'Tem', '', '', '', 5000, 'Cái', 1, 1506134700, 0, 1, 0, 0),
(38, 'Hóa đơn VAT', '', '', '', 40000, 'Tập', 1, 1506134700, 0, 1, 0, 0),
(39, 'Vé', '', '', '', 60000, 'Tập', 1, 1506134700, 0, 1, 0, 0),
(40, 'Sách', '', '', '', 100000, 'Quyển', 1, 1506135000, 1507167269, 1, 0, 0),
(41, 'Báo', '', '', '', 20000, 'Quyển', 1, 1506135000, 0, 1, 0, 0),
(42, 'Tạp chí', '', '', '', 200000, 'Quyển', 1, 1506135000, 0, 1, 0, 0),
(48, 'Nhân quá ngu', 'u_1507173773_e9e6c472118e9d1075a43ac8ea477745.jpg', 'A5 (Khổ to)', '<p>Không có ghi chú nhé bạn</p>\r\n', 10, 'Cái', 1, 1507173773, 0, 1, 27, 0),
(49, 'Ngu quá nhân ơi', 'u_1507176772_a5e8d1db07c508bc194d5bb04bf37bef.jpg', 'A10(Có không)', '<p>Không có ghi chú</p>\r\n', 100, 'Cái', 1, 1507176772, 0, 1, 38, 0),
(50, 'Nhân ngu', 'u_1507176883_6445f490fa10268d7aff029b33965ec8.jpg', 'Không', '<p>Hihi</p>\r\n', 90, 'Cái', 1, 1507176883, 0, 1, 31, 0),
(52, 'Nhân khùng', 'u_1507178108_44498b3fa42ddbdc53842e23aa33b6bb.jpg', 'A4(Slide)', '<p>&nbsp;</p>\r\n\r\n<p>Không có hình</p>\r\n', 3, 'Tập', 1, 1507178108, 0, 1, 27, 0),
(53, 'Nhân ngu quá', 'u_1507178364_4aad627312e7606caf62e2fe6ccead41.jpg', 'H2(lấy đâu ra)', '<p>Không có giá trị</p>\r\n', 10, 'ABCD hxl', 1, 1507178364, 0, 1, 27, 0),
(54, 'Ngu ơi là ngu', 'u_1507186171_635fb254382efba214c4c3dcd5f84af2.jpg', 'Không có', '<p>KHÔNG CÓ HÌNH</p>\r\n', 1, 'cái', 1, 1507186171, 0, 1, 27, 0),
(55, 'Ngu quá à', 'u_1507186414_5f7e76e32a9de77b34cd726f5e8e4123.jpg', 'KDH(4K)', '<p>Ko có ghi&nbsp; chú</p>\r\n', 4000, 'Tập', 1, 1507186414, 1507187248, 1, 27, 0);

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

--
-- Dumping data for table `olala3w_product_type`
--

INSERT INTO `olala3w_product_type` (`product_type_id`, `name`, `comment`, `created_time`) VALUES
(1, 'Bộ nhận dạng thương hiệu', '', 1506484120),
(2, 'Bao bì sản phẩm', '', 1506484200),
(3, 'In ấn khác', '', 1506484300);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_proposal`
--

CREATE TABLE `olala3w_proposal` (
  `proposal_id` int(11) NOT NULL,
  `proposing_user_id` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `modified_time` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `is_handled` int(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(374, 2, 119, 1505382645, 1),
(512, 1, 167, 1507002901, 1),
(513, 2, 167, 1507002901, 1),
(514, 3, 167, 1507002901, 1),
(532, 1, 1, 1507539300, 1),
(533, 3, 1, 1507539300, 1),
(534, 3, 150, 1507543048, 1),
(535, 3, 151, 1507543070, 1),
(536, 3, 152, 1507543099, 1),
(537, 3, 153, 1507543127, 1),
(538, 9, 154, 1507543144, 1),
(539, 3, 155, 1507543160, 1),
(540, 4, 156, 1507543202, 1),
(541, 4, 157, 1507543226, 1),
(542, 4, 158, 1507543241, 1),
(543, 4, 159, 1507543256, 1),
(544, 6, 160, 1507543274, 1),
(545, 4, 161, 1507543372, 1),
(546, 7, 162, 1507543436, 1),
(547, 7, 163, 1507543525, 1),
(548, 8, 164, 1507543569, 1),
(549, 8, 165, 1507543598, 1),
(550, 8, 166, 1507543626, 1),
(551, 5, 168, 1507543656, 1),
(552, 7, 148, 1507543682, 1);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_status`
--

CREATE TABLE `olala3w_status` (
  `status_id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_indicator` tinyint(4) NOT NULL DEFAULT '0',
  `agency` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `child` tinyint(4) NOT NULL,
  `color` varchar(125) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `olala3w_status`
--

INSERT INTO `olala3w_status` (`status_id`, `description`, `is_indicator`, `agency`, `child`, `color`) VALUES
(1, 'Đang báo giá', 0, 'kinh doanh', 0, 'lacay'),
(2, 'Đang thiết kế', 0, 'thiết kế', 0, 'hong'),
(3, 'Đang xuất kẽm', 0, 'xuất kẽm', 0, 'cam'),
(4, 'Đang in', 0, 'in', 0, 'xanh'),
(5, 'Đang đóng gói', 0, 'đóng gói', 0, 'do'),
(6, 'Đang giao hàng', 0, 'giao hàng', 0, 'giaohang'),
(7, 'Cho thiết kế', 1, 'thiết kế', 2, 'hong'),
(8, 'Cho xuất kẽm', 1, 'xuất kẽm', 3, 'cam'),
(9, 'Cho in', 1, 'in', 4, 'xanh'),
(10, 'Cho đóng gói', 1, 'đóng gói', 5, 'do'),
(11, 'Cho giao hàng', 1, 'giao hàng', 6, 'giaohang'),
(12, 'Đã giao hàng', 1, '', 12, 'done'),
(13, 'Tạm hoãn', 1, '', 13, 'hoan');

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
(2, 1, 2, 0),
(3, 1, 3, 0),
(4, 1, 4, 0),
(5, 1, 5, 0),
(6, 1, 6, 0),
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
(17, 3, 11, 0),
(18, 4, 2, 1),
(19, 4, 8, 0),
(20, 5, 3, 1),
(21, 5, 9, 0),
(22, 6, 4, 1),
(23, 6, 10, 0),
(24, 7, 5, 1),
(25, 7, 11, 0),
(26, 8, 6, 1),
(27, 8, 12, 0),
(28, 3, 13, 0);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_uploads_tmp`
--

CREATE TABLE `olala3w_uploads_tmp` (
  `upload_id` bigint(20) NOT NULL,
  `id_exhibition` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `list_img` text NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_uploads_tmp`
--

INSERT INTO `olala3w_uploads_tmp` (`upload_id`, `id_exhibition`, `status`, `list_img`, `created_time`) VALUES
(2, 1, 0, '1505381753_2_3a304ab392852fac1b39953b8e62a5da.jpg;1506678509_2_9049fa69fc8ebeb6400ff2b9620eb363.jpg;1506678509_2_dc2f440b6d0ba9697b6b7b3c8bce09b8.jpg;', 1505381745),
(4, 7, 0, '1505960036_4_13037539057d15cb9529595a5941f9dd.jpg;1505962124_4_b4dda96634e06f04da168e157bcde79e.jpg;1505962124_4_4b6112b83cf3b771ba3f6a0b7b60bdef.png;', 1505960025),
(3, 4, 0, '1505549131_3_10f1ac533340b31395488c587e2e99cb.jpg;1505549131_3_a6257ecda7cdd0c4dc2908d9539694c0.jpg;1505549131_3_294069ef7df6ffbdf9ad2615b9ac8f9f.jpg;', 1505549114),
(5, 11, 0, '1506046560_5_c2a6f750b673e3d6dcb43882cfe9125f.jpg;', 1506046503),
(6, 22, 0, '1506657079_6_c68dcfea205cee8513424e5311f91fad.jpg;', 1506657054),
(7, 21, 0, '1506657676_7_9275402afec59897b65a0d57dbea30cd.jpg;1506657676_7_a7f35ffab9f12fbd174467d1dfc80486.jpg;', 1506657631),
(8, 25, 0, '1506738036_8_1433146c8fbc6b1af17e8dcb46d79e5b.jpg;1506738036_8_96701b30c70e01bd332996dabb53fd53.jpg;1507463754_8_6a3ed6981ddb500af4b55c975dd5f45b.jpg;', 1506737978),
(9, 29, 0, '1507349871_9_5d12d62c78c53083c1fbe5a06977253d.png;', 1507191577),
(10, 31, 0, '1507192794_10_9dcfc8a2b3b947d67e3fd2d216f11b87.jpg;', 1507192780),
(11, 28, 0, '1507350659_11_b72170d70aec31ea09cfebf68a4549f1.jpg;', 1507350572),
(12, 30, 0, '', 1507350720);

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
-- Indexes for table `olala3w_commentex`
--
ALTER TABLE `olala3w_commentex`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `olala3w_commodity`
--
ALTER TABLE `olala3w_commodity`
  ADD PRIMARY KEY (`commodity_id`);

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
-- Indexes for table `olala3w_proposal`
--
ALTER TABLE `olala3w_proposal`
  ADD PRIMARY KEY (`proposal_id`);

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
  MODIFY `calendar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `olala3w_calendar_extend`
--
ALTER TABLE `olala3w_calendar_extend`
  MODIFY `calendar_extend_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `olala3w_calendar_user`
--
ALTER TABLE `olala3w_calendar_user`
  MODIFY `calendar_user_id` bigint(20) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `olala3w_commentex`
--
ALTER TABLE `olala3w_commentex`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `olala3w_commodity`
--
ALTER TABLE `olala3w_commodity`
  MODIFY `commodity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `olala3w_constant`
--
ALTER TABLE `olala3w_constant`
  MODIFY `constant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `olala3w_core_privilege`
--
ALTER TABLE `olala3w_core_privilege`
  MODIFY `privilege_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6304;

--
-- AUTO_INCREMENT for table `olala3w_core_role`
--
ALTER TABLE `olala3w_core_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `olala3w_core_user`
--
ALTER TABLE `olala3w_core_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `olala3w_customer`
--
ALTER TABLE `olala3w_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

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
  MODIFY `exhibition_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `olala3w_exhibition_history`
--
ALTER TABLE `olala3w_exhibition_history`
  MODIFY `exhibition_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `olala3w_itemproduct`
--
ALTER TABLE `olala3w_itemproduct`
  MODIFY `itemproduct_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

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
  MODIFY `log_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `olala3w_matches`
--
ALTER TABLE `olala3w_matches`
  MODIFY `matches_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `olala3w_notify`
--
ALTER TABLE `olala3w_notify`
  MODIFY `notify_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `olala3w_notify_logs`
--
ALTER TABLE `olala3w_notify_logs`
  MODIFY `notify_logs_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=714;

--
-- AUTO_INCREMENT for table `olala3w_notify_user`
--
ALTER TABLE `olala3w_notify_user`
  MODIFY `notify_user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=885;

--
-- AUTO_INCREMENT for table `olala3w_online`
--
ALTER TABLE `olala3w_online`
  MODIFY `online_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11390;

--
-- AUTO_INCREMENT for table `olala3w_online_daily`
--
ALTER TABLE `olala3w_online_daily`
  MODIFY `online_daily_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `olala3w_product`
--
ALTER TABLE `olala3w_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `olala3w_product_type`
--
ALTER TABLE `olala3w_product_type`
  MODIFY `product_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `olala3w_proposal`
--
ALTER TABLE `olala3w_proposal`
  MODIFY `proposal_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `olala3w_role_user`
--
ALTER TABLE `olala3w_role_user`
  MODIFY `role_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=553;

--
-- AUTO_INCREMENT for table `olala3w_status`
--
ALTER TABLE `olala3w_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `olala3w_status_role`
--
ALTER TABLE `olala3w_status_role`
  MODIFY `status_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `olala3w_uploads_tmp`
--
ALTER TABLE `olala3w_uploads_tmp`
  MODIFY `upload_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
