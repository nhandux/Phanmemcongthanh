<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
$code = $_POST['code']+0;
$new_employee = $_POST['new_employee']+0;
$state = $_POST['state']+0;
$date = new DateClass();
$user_id =  $_SESSION["user_id"];
$col_names = getHistoryCol($state);
$info_newemployee = getInfoUser($new_employee);
$content = "";
$order = getOrderCode($code);
$items = getOrderItems($code);
$created_time = $date->vnDate(getTimeCreated($code));
$end_time = $date->vnDate(getTimeEnd($code));
$msg = '';
if($code != '' && $new_employee > 0 && $state > 0 ) {
	$db->table="exhibition";
	$db->condition = "exhibition_id = " . $code;
	
	$data = array(
		
		'user_id' => $new_employee,
		'notifined_time' => time(),
	);
	$db->update($data);	
	$db->table="exhibition_history";
	$db->condition = "id_exhibition = " . $code;
	
	$data = array (
			$col_names[1] =>  $new_employee,
			);
	$db->update($data);
	$content .= '<div class="row">
			<div class="col-lg-12">
			<div class="panel panel-no-border">
			<div class="tieudehoadondm">
			<div>
			<div class="logoin">
			<img src="images/logo.png">
			</div>
			<div class="kihieu">
			<ul>

			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>

			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>
			<li> Mobile: 0905 034 034 - 0913 404 414 </li>

			<li> Email: incongthanhdanang@gmail.com </li>

			</ul>
			</div>
			</div>
			<div style="text-align: center;width: 100%;padding-top: 15px;" class="titlenamein">
			<span class="namehoadon">THÔNG TIN ĐƠN HÀNG</span><br>
			<span style="color: #111;font-size:16px;">Số : '.$code. ' </span><br/>
			<span style="color: #111;font-size:16px;">Ngày tạo :'. $created_time.'</span><br />
			<span style="color: #111;font-size:16px; margin-left: -30%;">Ngày hoàn thành :'. $end_time.'</span><br />
			</div>
			</div>
			</div>
			</div>
			</div>';
	$content .= $items;
	$db->table = "calendar";
	$data = array(
		'status' => $state,
		'exhibition_id' => $code,
		'user_id' => $user_id,
		'content' => $content,
		'created_time' => time(),
		'type' => 11,
		'to_personal' => $new_employee,
	);
	$db->insert($data);
	$id = $db->LastInsertID;
	$msg = $msg = 'Đơn hàng mới mã số: '.$order . ' được chuyển cho '. $info_newemployee[0]. ' của phòng '.getStatusToAgency($state);
	
insertNotify4($id, array($new_employee), $user_id, 11, $msg);
}