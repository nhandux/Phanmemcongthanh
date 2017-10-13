<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
$type           = isset($_POST['type']) ? $_POST['type'] : '-no-';
$id             = isset($_POST['id']) ? $_POST['id']+0 : 0;
$date           = new DateClass();
$current_time   = strtotime($date->vnOther(time(), 'Y-m-d H:i'));
if($type=='agree') {
	$OK                 = false;
	$extend_id          = isset($_POST['extend_id']) ? $_POST['extend_id']+0 : 0;
	$extend_time        = strtotime($date->dmYtoYmd($_POST['extend_time']));
	$request            = isset($_POST['request']) ? $_POST['request'] : '';
	$matches            = isset($_POST['matches']) ? $_POST['matches']+0 : 0;
	$supervisor_matches = isset($_POST['supervisor_matches']) ? $_POST['supervisor_matches']+0 : 0;

	// Check time input.
	if($extend_time<$current_time) {
		$OK = 'Thời gian kết thúc công việc không hợp lệ.';
	} else $OK = true;

	// Update Database.
	if ($OK === true) {
		$db->table = "calendar_extend";
		$data = array(
				'status' => 1,
				'extend_time' => $extend_time,
				'request' => $db->clearText($request),
				'matches' => $matches,
				'supervisor_matches' => $supervisor_matches,
				'handlers_user' => $account["id"],
				'modified_time' => $current_time
		);
		$db->condition = "calendar_extend_id = $extend_id";
		$db->update($data);
		if($db->AffectedRows>0) {
			// --- Notify
			$list_privilege = array();
			$db->table = "calendar";
			$db->condition = "`calendar_id` = $id";
			$db->order = "";
			$db->limit = 1;
			$rws = $db->select();
			foreach($rws as $rw) {
				array_push($list_privilege, $rw['supervisor']);
			}
			$db->table = "calendar_user";
			$db->condition = "`calendar` = $id";
			$db->order = "";
			$db->limit = "";
			$rws = $db->select();
			foreach ($rws as $rw) {
				array_push($list_privilege, stripslashes($rw['user_id']));
			}
			insertNotify($id, $list_privilege, $account["id"], 6);

			$OK = true;
		} else $OK = 'Lỗi hệ thống, không thể cập nhật dữ liệu.';
	}

	$process = false;
	$txt = '';
	if ($OK === true) {
		$process = true;
		$txt = $id;
	} else {
		$process = false;
		$txt = $OK;
	}
	echo json_encode(array("msg_process" => $process, "msg_txt" => $txt));

} elseif($type=='disagree') {
	$OK                 = true;
	$extend_id          = isset($_POST['extend_id']) ? $_POST['extend_id']+0 : 0;

	// Update Database.
	if ($OK === true) {
		$db->table = "calendar_extend";
		$data = array(
				'status' => 2,
				'handlers_user' => $account["id"],
				'modified_time' => $current_time
		);
		$db->condition = "calendar_extend_id = $extend_id";
		$db->update($data);
		if($db->AffectedRows>0) {
			// --- Notify
			$list_privilege = array();
			$db->table = "calendar";
			$db->condition = "`calendar_id` = $id";
			$db->order = "";
			$db->limit = 1;
			$rws = $db->select();
			foreach($rws as $rw) {
				array_push($list_privilege, $rw['supervisor']);
			}
			$db->table = "calendar_user";
			$db->condition = "`calendar` = $id";
			$db->order = "";
			$db->limit = "";
			$rws = $db->select();
			foreach ($rws as $rw) {
				array_push($list_privilege, stripslashes($rw['user_id']));
			}
			insertNotify($id, $list_privilege, $account["id"], 7);

			$OK = true;
		} else $OK = 'Lỗi hệ thống, không thể cập nhật dữ liệu.';
	}

	$process = false;
	$txt = '';
	if ($OK === true) {
		$process = true;
		$txt = $id;
	} else {
		$process = false;
		$txt = $OK;
	}
	echo json_encode(array("msg_process" => $process, "msg_txt" => $txt));

} else echo json_encode(false);