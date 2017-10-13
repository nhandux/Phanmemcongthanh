<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
// -- Bảng phân quyền :)
$corePrivilegeSlug = array();
$corePrivilegeSlug = corePrivilegeSlug($account["id"]);

if(isset($_POST['type'])) {
	$query = "`is_active` = 1";
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

	$string = '<option value="0" selected>Danh sách nhóm...</option>';
	$db->table = "core_role";
	$db->condition = $query;
	$db->order = "`role_id` ASC";
	$db->limit = "";
	$rows = $db->select();
	if($db->RowCount > 0) {
		foreach ($rows as $row) {
			$string .= '<option value="' . ($row['role_id'] + 0) . '">' . stripslashes($row['name']) . '</option>';
		}
	}

	echo $string;
}