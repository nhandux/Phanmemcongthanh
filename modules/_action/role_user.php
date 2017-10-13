<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if(isset($_POST['id'])) {
	$id = $_POST['id']+0;
	$type = isset($_POST['type']) ? $_POST['type'] : '-no-';
	if($type=='role') {
		$user = $list = array();
		$db->table = "role_user";
		$db->condition = "`role` = $id";
		$db->order = "";
		$db->limit = "";
		$rows = $db->select();
		foreach ($rows as $row) {
			array_push($user, $row['user']+0);
		}

		if(count($user)>0) $user = implode(',', $user);
		else $user = 0;

		$db->table = "core_user";
		$db->condition = "`user_id` IN ($user)";
		$db->order = "`sort` ASC";
		$db->limit = "";
		$rows = $db->select();
		foreach ($rows as $row) {
			array_push($list, '<strong>' . stripslashes($row['user_name'] . '</strong> - ' . $row['full_name']));
		}

		$list = implode('<br>', $list);
		echo $list;
	} elseif($type=='user') {
		$role = $list = array();
		$db->table = "role_user";
		$db->condition = "`user` = $id";
		$db->limit = "";
		$db->order = "";
		$rows = $db->select();
		foreach ($rows as $row) {
			array_push($role, $row['role']+0);
		}

		if(count($role)>0) $role = implode(',', $role);
		else $role = 0;

		$db->table = "core_role";
		$db->condition = "`role_id` IN ($role)";
		$db->order = "";
		$db->limit = "";
		$rows = $db->select();
		foreach ($rows as $row) {
			array_push($list, stripslashes($row['name']));
		}

		$list = implode('<br>', $list);
		echo $list;

	}

}