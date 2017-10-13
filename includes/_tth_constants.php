<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
define('FILE_MAX_SIZE', getConstant('upload_max_size'));
define('TTH_TIMEZONE', getConstant('timezone'));
define('TTH_DATE_FORMAT', getConstant('date'));
define('TTH_TIME_FORMAT', getConstant('time'));
define('TTH_DATETIME_FORMAT', TTH_DATE_FORMAT . ' ' . TTH_TIME_FORMAT);
define('TTH_FULL_DATE_FORMAT', getConstant('fulldate'));

$tth_bus['type'] = array(
	'1' => 'Giường nằm - 42 chỗ',
	'2' => 'Giường nằm - 38 chỗ',
	'3' => 'Ghế nằm - 28 chỗ',
	'4' => 'Ghế ngã - 45 chỗ',
	'5' => 'Ghế ngồi - 28 chỗ'
);

$tth_bus['seat'] = array(
	'1' => '42 + 2(DP)',
	'2' => '38 + 2(DP)',
	'3' => '28 + 2(DP)',
	'4' => '45 + 2(DP)',
	'5' => '28 + 2(DP)'
);

$tth_bus['available'] = array(
	'1' => '42',
	'2' => '38',
	'3' => '28',
	'4' => '45',
	'5' => '28'
);

$tth_datetime['day'] = array(
	'00' => '00',
	'01' => '01',
	'02' => '02',
	'03' => '03',
	'04' => '04',
	'05' => '05'
);

$tth_datetime['hour'] = array(
	'00' => '00',
	'01' => '01',
	'02' => '02',
	'03' => '03',
	'04' => '04',
	'05' => '05',
	'06' => '06',
	'07' => '07',
	'08' => '08',
	'09' => '09',
	'10' => '10',
	'11' => '11',
	'12' => '12',
	'13' => '13',
	'14' => '14',
	'15' => '15',
	'16' => '16',
	'17' => '17',
	'18' => '18',
	'19' => '19',
	'20' => '20',
	'21' => '21',
	'22' => '22',
	'23' => '23'
);
$tth_datetime['minute'] = array(
	'00' => '00',
	'01' => '01',
	'02' => '02',
	'03' => '03',
	'04' => '04',
	'05' => '05',
	'06' => '06',
	'07' => '07',
	'08' => '08',
	'09' => '09',
	'10' => '10',
	'11' => '11',
	'12' => '12',
	'13' => '13',
	'14' => '14',
	'15' => '15',
	'16' => '16',
	'17' => '17',
	'18' => '18',
	'19' => '19',
	'20' => '20',
	'21' => '21',
	'22' => '22',
	'23' => '23',
	'24' => '24',
	'25' => '25',
	'26' => '26',
	'27' => '27',
	'28' => '28',
	'29' => '29',
	'30' => '30',
	'31' => '31',
	'32' => '32',
	'33' => '33',
	'34' => '34',
	'35' => '35',
	'36' => '36',
	'37' => '37',
	'38' => '38',
	'39' => '39',
	'40' => '40',
	'41' => '41',
	'42' => '42',
	'43' => '43',
	'44' => '44',
	'45' => '45',
	'46' => '46',
	'47' => '47',
	'48' => '48',
	'49' => '49',
	'50' => '50',
	'51' => '51',
	'52' => '52',
	'53' => '53',
	'54' => '54',
	'55' => '55',
	'56' => '56',
	'57' => '57',
	'58' => '58',
	'59' => '59'
);

$tth_pay = array(
	'0' => 'Chưa thanh toán',
	'1' => 'Đã thanh toán'
);

$tth_province = array(
	'Hà Nội',
	'Hồ Chí Minh',
	'Đà Nẵng',
	'Hải Phòng',
	'An Giang',
	'Bà Rịa Vũng Tàu',
	'Bắc Giang',
	'Bắc Kạn',
	'Bạc Liêu',
	'Bắc Ninh',
	'Bến Tre',
	'Bình Định',
	'Bình Dương',
	'Bình Phước',
	'Bình Thuận',
	'Cà Mau',
	'Cần Thơ',
	'Cao Bằng',
	'Đắk Lắk',
	'Đắk Nông',
	'Điện Biên',
	'Đồng Nai',
	'Đồng Tháp',
	'Gia Lai',
	'Hà Giang',
	'Hà Nam',
	'Hà Tĩnh',
	'Hải Dương',
	'Hậu Giang',
	'Hòa Bình',
	'Huế',
	'Hưng Yên',
	'Khánh Hòa',
	'Kiên Giang',
	'Kon Tum',
	'Lai châu',
	'Lâm Đồng',
	'Lạng Sơn',
	'Lào Cai',
	'Long An',
	'Nam Định',
	'Nghệ An',
	'Ninh Bình',
	'Ninh Thuận',
	'Phú Thọ',
	'Phú Yên',
	'Quảng Bình',
	'Quảng Nam',
	'Quảng Ngãi',
	'Quảng Ninh',
	'Quảng Trị',
	'Sóc Trăng',
	'Sơn La',
	'Tây Ninh',
	'Thái Bình',
	'Thái Nguyên',
	'Thanh Hóa',
	'Tiền Giang',
	'Trà Vinh',
	'Tuyên Quang',
	'Vĩnh Long',
	'Vĩnh Phúc',
	'Yên Bái',
);

$level_color = '<style>';
$db->table = "level";
$db->condition = "`is_active` = 1";
$db->order = "sort ASC";
$db->limit = "";
$rows = $db->select();
foreach($rows as $row) {
	$level_color .= '.lb-level.' . $row['class'] . ' { background-color: ' . $row['color'] . ' }';
}
$level_color .= '</style>';

$calendar_status = array(
	0 => 'Việc đã giao',
	1 => 'Đang tiến hành',
	2 => 'Sắp đến hạn',
	3 => 'Gia hạn',
	4 => 'Quá hạn',
	5 => 'Đã hoàn thành',
	6 => 'Đã xóa'
);
$calendar_extend = array(
	0 => '<i class="fa fa-spinner fa-spin"></i> Chờ xác nhận gia hạn',
	1 => '<i class="fa fa-thumbs-o-up"></i> Đã chấp nhận gia hạn',
	2 => '<i class="fa fa-thumbs-o-down"></i> Không chấp nhận gia hạn'
);

$notify_type = array(
		0 => '-no-',
		1 => 'Thêm công việc',
		2 => 'Thêm đơn hàng mới',
		3 => 'Chuyển trạng thái đơn hàng',
		4 => 'Báo cáo công việc',
		5 => 'Đề nghị gia hạn',
		6 => 'Đã chấp nhận gia hạn',
		7 => 'Không chấp nhận gia hạn',
		8 => 'Thêm công việc cá nhân',
		9 => 'Chỉnh sửa công việc cá nhân',
		10 =>'Thêm đơn hàng',
		11 =>'Chuyển đơn hàng cho nhân viên',
		12 =>'Đề xuất',				14 =>'Thông báo',
);
