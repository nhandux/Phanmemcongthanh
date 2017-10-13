<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if($account["id"]>0) {
	$type           = isset($_POST['type']) ? $_POST['type'] : '-no-';
	$val            = isset($_POST['val']) ? $_POST['val']+0 : 0;
	$date           = new DateClass();
	$current_time   = strtotime($date->vnOther(time(), 'Y-m-d H:i'));

	if($type=='notify1') {
		$db->table = "core_user";
		$data = array(
			'btn_notify1' => $val,
			'modified_time' => $current_time,
			'user_id_edit' => $account["id"]
		);
		$db->condition = "`user_id` = " . $account["id"];
		$db->update($data);

		if($val==0) {
			$db->table = "notify_user";
			$data = array(
				'status' => 1,
				'modified_time' => $current_time
			);
			$db->condition = "`user_id` = " . $account["id"];
			$db->update($data);
		}
	} elseif($type=='notify2') {
		$db->table = "core_user";
		$data = array(
			'btn_notify2' => $val,
			'modified_time' => $current_time,
			'user_id_edit' => $account["id"]
		);
		$db->condition = "`user_id` = " . $account["id"];
		$db->update($data);
	} else {}
} else echo 'Error--';