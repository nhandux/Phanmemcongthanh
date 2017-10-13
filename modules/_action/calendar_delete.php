<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if(isset($_POST['id'])) {
	$id = $_POST['id'] + 0;
	$date = new DateClass();
	$current_time = strtotime($date->vnOther(time(), 'Y-m-d H:i'));

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
	insertNotify($id, $list_privilege, $account["id"], 3);

	$db->table = "calendar";
	$data = array(
		'disable'=>1,
	);
	$db->condition = "`calendar_id` = $id";
	$db->update($data);

}  echo 'Error--';