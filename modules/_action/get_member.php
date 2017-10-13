<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
// -- Bảng phân quyền :)
$corePrivilegeSlug = array();
$corePrivilegeSlug = corePrivilegeSlug($account["id"]);

if(isset($_POST['type'])) {
	$query = "`is_active` = 1 AND `is_show` = 1";
	$type   = $_POST['type'];
	$agency = isset($_POST['agency']) ? $_POST['agency']+0 : 0;
	$role = isset($_POST['role']) ? $_POST['role'] : '';

	$ol_agency = array();
	$ol_agency = getAgencyToCore($corePrivilegeSlug['op'], '/' . $type . ';/');
	if(count($ol_agency)>0) {
		$list_core = implode(',', $ol_agency);
		$query .= " AND `agency` IN ($list_core)";
	}

	if($agency > 0) {
		$list_agency = getAgencyElementPlus($agency);
		$query .= " AND `agency` IN ($list_agency)";
	}

	if($role > 0) {
		$lis_user = array();
		$db->table = "role_user";
		$db->condition = "`role` = $role";
		$db->order = "";
		$db->limit = "";
		$rows = $db->select();
		foreach ($rows as $row) {
			array_push($lis_user, $row['user']+0);
		}

		if(count($lis_user)>0) {
			$lis_user = implode(',', $lis_user);
			$query .= " AND `user_id` IN ($lis_user)";
		} else $query .= " AND `user_id` IN (0)";
	}

	$string = '<option value="0" selected>Danh sách nhân viên...</option>';
	$db->table = "core_user";
	$db->condition = $query;
	$db->order = "`sort` ASC";
	$db->limit = "";
	$rows = $db->select();
	if ($db->RowCount > 0) {
		foreach ($rows as $row) {
			$string .= '<option value="' . ($row['user_id'] + 0) . '">' . stripslashes($row['user_name']) . ' - ' . stripslashes($row['full_name']) . '</option>';
		}
	}

	echo $string;
}