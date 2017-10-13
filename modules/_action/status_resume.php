<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
$code = $_POST['code']+0;
$new_state = $_POST['new_state']+0;
$resume = $_POST['resume'];
$user_id = $account['id'];

$date = new DateClass();
$user_id =  $_SESSION["user_id"];
$to_role = 0;
$list_users_get_notify = array();	
if($resume=='no'){
$new = getStatusAsMove($new_state);
$to_role = getRoleToStatus($new);
		
$list_users_get_notify = getListUserNotify2($to_role);	
 $db->table="exhibition";
 $db->condition= "exhibition_id  = ". $code;
 $data = array(
	"status" => $new,
	"current_status" => $new,
	'user_id' => (count($list_users_get_notify) > 1) ? 0: $list_users_get_notify[0] ,
 );
$db->update($data);	
}
if($resume == 'yes') {
	$current_user = getCurrentUser($code);
	if($current_user == 0) {
		$to_role = getRoleToStatus($new_state);
		$list_users_get_notify = getListUserNotify2($to_role);	
		$db->table="exhibition";
		$db->condition= "exhibition_id  = ". $code;
			$data = array(
			"status" => $new_state,
			"current_status" => $new_state,
			'user_id' => (count($list_users_get_notify) > 1) ? 0: $list_users_get_notify[0] ,
		 );
		$db->update($data);	
	}
	else {
		$db->table="exhibition";
		$db->condition= "exhibition_id  = ". $code;
			$data = array(
			"status" => $new_state,
			"current_status" => $new_state,			
		 );
		$db->update($data);	
	}
}
$content = "";
$order = getOrderCode($code);
$items = getOrderItems($code);
$created_time = $date->vnDate(getTimeCreated($code));
$end_time = $date->vnDate(getTimeEnd($code));
$msg = '';

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
			<span style="color: #111;font-size:16px; margin-left: -30%;">Ngày hoàn thành :'. (($new != 12)? $end_time : $date->vnDate(time())).'</span><br />
			</div>
			</div>
			</div>
			</div>
			</div>
			<div class="col-md-12 formcode">
			<div class="row">
			<div class="col-md-6 col-sm-4 col-xs-12">
			<div style="display: inline-block;position: relative;">
			<span style="display: inline-block;position: absolute;left: 10px;top: 5px;">CODE</span>
			<input class="form-control formicon" style="padding-left: 50px;" type="text" name="symbols" maxlength="250" autocomplete="off" disabled="" value="'.$order.'" data-toggle="tooltip" data-placement="top" title="" data-original-title="Mã hàng tự tăng" >
			
			</div>
			</div>				
			</div>
			</div>
			';
	$content .= $items;
	$db->table = "calendar";
	if($resume == "no")
	$data = array(
		'status' => $new,
		'exhibition_id' => $code,
		'user_id' => $user_id,
		'content' => $content,
		'created_time' => time(),
		'type' => 3,
		'to_role' => $to_role,
	);
	if($resume == "yes")
	$data = array(
		'status' => $new_state,
		'exhibition_id' => $code,
		'user_id' => $user_id,
		'content' => $content,
		'created_time' => time(),
		'type' => 3,
		'to_role' => $to_role,
	);	
	$db->insert($data);
	$id = $db->LastInsertID;
	
	if($resume == "no") {
			
			$msg = 'Đơn hàng  mã số: '.$order . ' tiếp tục thực hiện và được chuyển đến bộ phận '. getStatusToAgency($new);
			insertNotify4($id, $list_users_get_notify, $user_id, 3, $msg);
		}
	else if($resume == "yes" && $current_user == 0) {
		$msg = 'Đơn hàng  mã số: '.$order . ' tiếp tục thực hiện.';
		
		insertNotify4($id, $list_users_get_notify, $user_id, 3, $msg);
	}
	else if($resume == "yes" && $current_user != 0) {
		$msg = 'Đơn hàng  mã số: '.$order . ' tiếp tục thực hiện.';
		
		insertNotify4($id, array($current_user), $user_id, 3, $msg);
	}
