<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if(isset($_POST['role'])) {
	$role = $_POST['role']+0;
	$slug = isset($_POST['slug']) ? $_POST['slug'] : '';
	$status = isset($_POST['status']) ? $_POST['status']+0 : 0;

	if($status==1) {
		$db->table = "core_privilege";
		$data = array(
			'role_id' => $role,
			'type' => 'ol',
			'privilege_slug' => $db->clearText($slug)
		);
		$db->insert($data);
	} else {
		$db->table = "core_privilege";
		$db->condition = "`role_id` = $role and `type` = 'ol' and `privilege_slug` = '$slug'";
		$db->delete();
	}
}