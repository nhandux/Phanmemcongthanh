<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
$id = $_POST['id']+0;

if( $id > 0) {
	$db->table="exhibition";
	$db->condition = "exhibition_id = " . $id;
	$data = array(
		"change_payment" =>0,
	);
	
	$db->update($data);
}
