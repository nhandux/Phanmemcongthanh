<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if($account["id"]>0) {
	
	
	$date                   = new DateClass();
	$stringObj              = new String();
	// ---------
	$id            			= $_POST['id'];
	
	// ---- FILE
	
	// Insert jobs name NEW ---
	
	$db->table = "exhibition";
	$db->condition = "exhibition_id = ".($id+0);
	$db->order = "";
	$db->limit = 1;
	$rows = $db->select();
	if($db->RowCount==0) {
		loadPageError("Không thấy đơn hàng.", "/?ol=document&op=document_list");
	} else {
		//Delete
		foreach($rows as $row) {
		$db->table = "customer";
		$db->condition = "customer_id = ". ($row['customer_id']+0);
		$db->order = "";
		$db->limit = 1;
		
		$db->delete();
		
		
		$db->table = "itemproduct";
		$db->condition = "exhibition_id = ". ($row['exhibition_id']+0);
		$db->order = "";
		$db->limit = "";
		
		$db->delete();
		
		
		}
		$db->table = "exhibition";
		$db->condition = "exhibition_id = ".($id+0);
		$db->order = "";
		$db->limit = 1;
		$db->delete();
		
		loadPageSuccess("Đã xóa dữ liệu thành công.", "/?ol=document&op=document_list");
		
	
	}

	

} else {}