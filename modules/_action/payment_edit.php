<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
$stringObj = new String();
$date = new DateClass();
$id = isset($_POST['id']) ? $_POST['id']+0 : 0;

$prepayment = (isset($_POST['prepayment']))? $_POST['prepayment']: "";
$debtor = (isset($_POST['debtor']))? $_POST['debtor']: "";
$payment_2 = (isset($_POST['payment_2']))? $_POST['payment_2']: "";
$payment_3 = (isset($_POST['payment_3']))? $_POST['payment_3']: "";

if($id > 0 ) {
$db->table = "exhibition";
$db->condition = "`exhibition_id` =  " .$id;
$db->order = "";
$db->limit = 1;
$rows = $db->select();
if($db->RowCount>0 && $account["id"]>0) {
	foreach($rows as $row) {
		
		
	$db->table = "exhibition";
	$db->condition = "exhibition_id = " . $id;
	$data = array(
			'prepayment' => $db->clearText($prepayment),
			'payment_2' => $db->clearText($payment_2),
			'payment_3' => $db->clearText($payment_3),
			'debtor' => $db->clearText($debtor),
			'notifined_time' =>  time(),
			'change_payment' => 1,
	);
	$db->update($data);
	
	}	
	}

	echo json_encode(array("msg_process" => true, "msg_txt" => '/?ol=document&op=document_list', 'id' =>$id)); 
}
