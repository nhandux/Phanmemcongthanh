<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
$code = $_POST['code']+0;
$new_state = $_POST['new_state']+0;
$new = getStatusAsMove($new_state);
$last_state = $_POST['last_state']+0;
$date = new DateClass();
$user_id =  $_SESSION["user_id"];
$to_role = 0;
$list_users_get_notify = array();	
if($new != 12 && $new != 13) {
$to_role = getRoleToStatus($new);
		
$list_users_get_notify = getListUserNotify2($to_role);	
}
$col_names = getHistoryCol($last_state);
$content = "";
$order = getOrderCode($code);
$items = getOrderItems($code);
$created_time = $date->vnDate(getTimeCreated($code));
$end_time = $date->vnDate(getTimeEnd($code));
$msg = '';
if($code != '' && $new_state > 0 && $last_state > 0 ) {
	$db->table="exhibition";
	$db->condition = "exhibition_id = " . $code;	
	if($new != 13) {
	if($new!= 12) $data = array(
					'status' => $new,
					'user_id' => (count($list_users_get_notify) > 1) ? 0: $list_users_get_notify[0] ,
					'current_status' => $new,
				);
			else    $data = array(
					'status' => $new,	
					'current_status' => $new,					
				);      
	$db->update($data);	
	
	$db->table="exhibition_history";
	$db->condition = "id_exhibition = " . $code;
	
	$data = array (
			$col_names[0] =>  time(),
			$col_names[1] =>  $user_id,		
			
			);
	$db->update($data);
	}
	else {
		$data = array(
					'status' => $new,					
				);  
		$db->update($data);			
	}
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
	$data = array(
		'status' => $new,
		'exhibition_id' => $code,
		'user_id' => $user_id,
		'content' => $content,
		'created_time' => time(),
		'type' => 3,
		'to_role' => $to_role,
	);
	$db->insert($data);
	$id = $db->LastInsertID;
	
	if($new != 12 && $new != 13  ) {
			
			$msg = 'Đơn hàng  mã số: '.$order . ' được chuyển đến bộ phận '. getStatusToAgency($new);
			insertNotify4($id, $list_users_get_notify, $user_id, 3, $msg);
		}
	else if($new == 12) {
		$msg = 'Đơn hàng  mã số: '.$order . ' đã được giao. Hoàn tất đơn hàng';
		$list_users_get_notify = getListUserNotify3($code+0);
		insertNotify4($id, $list_users_get_notify, $user_id, 3, $msg);
	}
	else if($new == 13) {
		$msg = 'Đơn hàng  mã số: '.$order . ' bị tạm hoãn.';
		$list_users_get_notify = getListUserNotify3($code+0);
		insertNotify4($id, $list_users_get_notify, $user_id, 3, $msg);
	}
}