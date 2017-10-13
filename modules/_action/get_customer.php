<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if(isset($_POST['val'])) {

	$val = $_POST['val'];

    $db->table = "customer";

	$db->condition = "company_name ='".$val."'";

	$db->order = "customer_id ASC";

	$db->limit = "1";

	$rows = $db->select();

	echo json_encode($rows);

}