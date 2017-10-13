<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
?>

<!-- Menu path -->

<?php



$stringObj = new String();
$date = new DateClass();



	$code = (isset($_POST['code']) && $_POST['code']!= '')? $_POST['code'] : '';
	$urgent = (isset($_POST['urgent']) && $_POST['urgent']!= '')? $_POST['urgent'] : '';
	$pick_up = (isset($_POST['pick_up']) && $_POST['pick_up']!= '')? $_POST['pick_up'] : '';
	$discount = (isset($_POST['discount']) && $_POST['discount']!= '')? $_POST['discount'] : '';
	$money_undiscounted = (isset($_POST['money_undiscounted']) && $_POST['money_undiscounted']!= '')? $_POST['money_undiscounted'] : '';
	$into_money = (isset($_POST['into_money']) && $_POST['into_money']!= '')? $_POST['into_money'] : '';
	$fabricate = (isset($_POST['fabricate']) && $_POST['fabricate']!= '')? $_POST['fabricate'] : '';
	$date_end = (isset($_POST['date_end']) && $_POST['date_end']!= '')? $_POST['date_end'] : '';
	$order_items = (isset($_POST['order_items']) && $_POST['order_items']!= '')? $_POST['order_items'] : '';
	
	

	
	

		
			$id_query = 0;
			$db->table = "exhibition";
			$data = array(
					
					'urgent' => $urgent + 0,
					'pick_up' => $pick_up + 0,
					'money_undiscounted' => $db->clearText($money_undiscounted),
					'discount' => $db->clearText($discount),
					'into_money' => $db->clearText($into_money),
					'fabricate' => $db->clearText($fabricate),
					'debtor' => 1,
					'date_end' => strtotime($date->dmYtoYmd($date_end)),
					'comment' => $db->clearText($comment),
					'user_id' => $_SESSION["user_id"],
					'code' => $db->clearText($code),
					'status' => 1,
					'notifined_time' => 30303030,
					'created_time' => strtotime($date->dmYtoYmd($created_time)),
					'customer_id' => 200
			);
			$db->insert($data);
			$id_query = $db->LastInsertID;
			echo $id_query; echo $id_query;echo $id_query;echo $id_query;echo $id_query;echo $id_query;echo $id_query;echo $id_query;echo $id_query;echo $id_query;echo $id_query;echo $id_query;
			$items = json_decode($order_items);
			$db->table = "itemproduct";
			foreach($items as $item) {
				$data = array(
						'product_name' => $db->clearText($item['sp']),
						'size' => $db->clearText($item['size']),
						'unit_price' => $db->clearText($item['chonsubmit']),
						'count_number' => $db->clearText($item['soluongmathang']),
						'total' => $db->clearText($item['thanhtien']),
						'type' => $db->clearText($item['unit']),
				);
				$db->insert($data);
				$id_query_item = $db->LastInsertID;
			}
			
			loadPageSuccess("Đã thêm dữ liệu thành công.", TTH_PATH_LK . $link_ol[1] . TTH_PATH_OP_LK . $link_op[1][1]);
			
	


	
	
?>