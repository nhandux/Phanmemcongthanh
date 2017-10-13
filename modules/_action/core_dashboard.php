<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if(isset($_POST['role_id'])){
	$category   = array();
	$role       = $_POST['role_id']+0;
	$category   = (isset($_POST['variable'])) ? $_POST['variable'] : '-no-';
	$type       = (isset($_POST['type'])) ? $_POST['type'] : '-no-';

	$db->table = "core_privilege";
	$db->condition = "`role_id` = ".($role) ." and `type` = '" . $db->clearText($type) . "'";
	$db->delete();

	if(count($category)>0){
		for($i=0; $i<count($category); $i++) {
			$db->table = "core_privilege";
			$data = array(
				'role_id' => $role,
				'type' => $db->clearText($type),
				'privilege_slug' => $db->clearText($category[$i])
			);
			$db->insert($data);
		}
	}

	include_once(_F_FUNCTIONS . DS . "CoreDashboard.php");
	echo "<script>alert('Cập nhật quyền quản trị thành công.')</script>";
	if($type == 'document') echo showCoreDocument($role);
	if($type == 'calendar') echo showCoreCalendar($role);
	if($type == 'statistic') echo showCoreStatistic($role);
	if($type == 'general') echo showCoreGeneral($role);
	if($type == 'config') echo showCoreConfig($role);
	if($type == 'core') echo showCoreCore($role);
	if($type == 'backup') echo showCoreBackup($role);

} else echo "<script>alert('Thao tác không hợp lệ.')</script>";