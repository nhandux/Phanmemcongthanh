<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
$stringObj = new String();
$date = new DateClass();
$id = isset($_POST['id']) ? $_POST['id']+0 : 0;
$condition = array();
$urgent = (isset($_POST['urgent']) && $_POST['urgent']!= "")? $_POST['urgent']: "";
$pick_up = (isset($_POST['pick_up']) && $_POST['pick_up']!= "")? $_POST['pick_up']: "";
$fabricate = (isset($_POST['fabricate']) && $_POST['fabricate']!= "")? $_POST['fabricate']: "";
$money_undiscounted = (isset($_POST['money_undiscounted']))? $_POST['money_undiscounted']: "";
$condition[] = $money_undiscounted;

$discount = (isset($_POST['discount']))? $_POST['discount']: "";
$into_money = (isset($_POST['into_money']))? $_POST['into_money']: "";	
$condition[] = $into_money;
$debtor = (isset($_POST['debtor']) && $_POST['debtor']!= "")? $_POST['debtor']: "";
$date_end = (isset($_POST['date_end']) && $_POST['date_end']!= "")? $_POST['date_end']: "";
$condition[] = $date_end;
$comment = (isset($_POST['comment']) && $_POST['comment']!= "")? $_POST['comment']: "";
$order_items = (isset($_POST['order_items']) && $_POST['order_items']!= "")? $_POST['order_items']: "";
$condition[] = $order_items;
$code =(isset($_POST['code']) && $_POST['code']!= "")? $_POST['code']: "";
$condition[] = $code;
$notifined_time = $date->vnDateTime(time());
$tencongty = (isset($_POST['tencongty']) && $_POST['tencongty']!= "")? $_POST['tencongty']: "";
$masothue = (isset($_POST['masothue']) && $_POST['masothue']!= "")? $_POST['masothue']: "";
$skype = (isset($_POST['skype']) && $_POST['skype']!= "")? $_POST['skype']: "";
$email = (isset($_POST['email']) && $_POST['email']!= "")? $_POST['email']: "";
$condition[] = $email;
$sodienthoai = (isset($_POST['sodienthoai']) && $_POST['sodienthoai']!= "")? $_POST['sodienthoai']: "";
$condition[] = $sodienthoai;
$namenguoidat = (isset($_POST['namenguoidat']) && $_POST['namenguoidat']!= "")? $_POST['namenguoidat']: "";
$condition[] = $namenguoidat;
$diachi = (isset($_POST['diachi']) && $_POST['diachi']!= "")? $_POST['diachi']: "";	
$condition[] = $diachi;
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
		
		$db->table = "customer";
		$db->condition = "customer_id = " . $row['customer_id'];
		$data = array(
			
			'company_name' => $db->clearText($tencongty),
			'tax_code' => $db->clearText($masothue),
			'full_name' => $db->clearText($namenguoidat),
			'phone' => $db->clearText($sodienthoai),
			'email' => $db->clearText($email),
			'address' => $db->clearText($diachi),
			'is_show' => 1,
			'skype' => $db->clearText($skype),
			'updated_time' => strtotime($date->dmYtoYmd($notifined_time)),
	);
	$db->update($data);
		$db->table = "itemproduct";
		$db->condition = "exhibition_id = " . $id;
		$db->delete();
		$items = json_decode($order_items, true);	
		foreach($items as $item) {
			$str = $item['unit'];
			$str = substr($str, 1);
			$data = array(
					'exhibition_id' => $id,
					'product_name' => $db->clearText($item['sp']),
					'size' => $db->clearText($item['size']),
					'unit_price' => $db->clearText($item['chonsubmit']),
					'count_number' => $db->clearText($item['soluongmathang']),
					'total' => $db->clearText($item['thanhtien']),
					'type' => $str,
			);
			$db->insert($data);
		}
	
	$db->table = "exhibition";
	$db->condition = "exhibition_id = " . $id;
	$data = array(
			
			'urgent' => $urgent+0,
			'pick_up' => $pick_up+0,
			'comment' => $comment,
			'money_undiscounted' => $db->clearText($money_undiscounted),
			'discount' => $db->clearText($discount),
			'into_money' => $db->clearText($into_money),
			'prepayment' => $db->clearText($prepayment),
			'payment_2' => $db->clearText($payment_2),
			'payment_3' => $db->clearText($payment_3),
			'debtor' => $db->clearText($debtor),
			'date_end' => strtotime($date->dmYtoYmd($date_end)),
			'notifined_time' =>  strtotime($date->dmYtoYmd($notifined_time)),
	);
	$db->update($data);
	
	}	
	}

	
	
	echo json_encode(array("msg_process" => true, "msg_txt" => '/?ol=document&op=document_list')); 
	
	//echo '<h3>Welcome to my world</h3>'; */
}//else echo json_encode(false);
