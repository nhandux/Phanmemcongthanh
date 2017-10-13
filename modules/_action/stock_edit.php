<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
$stringObj = new String();
$date = new DateClass();
$id = isset($_POST['id']) ? $_POST['id']+0 : 0;
$list_stock = isset($_POST['list_stock']) ? $_POST['list_stock'] : "";
$l_stocks = array();
$l_stocks = json_decode($list_stock, true);
$data = array();

foreach($l_stocks as $l_stock) {
	$data[] = array(
	'real_produced_number' => $l_stock['real_produced_number'],
	'stock_count' => $l_stock['stock_count'],
	
	);
}

for($i = 0; $i < count($l_stocks); $i++) {
	$db->table = "itemproduct";
	$db->condition = "itemproduct_id = " . $l_stocks[$i]['id'];		
	$db->update($data[$i]);		
}

	echo json_encode(array("msg_process" => true, "msg_txt" => '/?ol=document&op=document_list')); 
