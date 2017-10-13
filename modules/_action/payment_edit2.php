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

	echo '<div align="center">
		<div id="spinningSquaresG">
			<div id="spinningSquaresG_1" class="spinningSquaresG">
			</div>
			<div id="spinningSquaresG_2" class="spinningSquaresG">
			</div>
			<div id="spinningSquaresG_3" class="spinningSquaresG">
			</div>
			<div id="spinningSquaresG_4" class="spinningSquaresG">
			</div>
			<div id="spinningSquaresG_5" class="spinningSquaresG">
			</div>
			<div id="spinningSquaresG_6" class="spinningSquaresG">
			</div>
			<div id="spinningSquaresG_7" class="spinningSquaresG">
			</div>
			<div id="spinningSquaresG_8" class="spinningSquaresG">
			</div>
		</div>
		<span class="show-ok">Đã chỉnh sửa đơn hàng thành công</span>
		<br>Vui lòng đợi giây lát hoặc bấm <a style="font-weight:  bold;" href="/?ol=document&op=document_list_accountant">vào đây</a> để tiếp tục...
	</div>
	<head>
		<meta http-equiv="Refresh" content="1; URL=/?ol=document&op=document_list_accountant">
	</head>';
}
