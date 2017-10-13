<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
$id = $_POST['id']+0;
$new_agency = $_POST['new_agency']+0;
if( $id > 0 && $new_agency > 0) {
	$db->table="core_user";
	$db->condition = "user_id = " . $id;
	$data = array(
		"current_agency" => $new_agency,
	);
	
	$db->update($data);
}
