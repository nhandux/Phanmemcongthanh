<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
$stringObj = new String();
$date = new DateClass();
$note = (isset($_POST['note']))? $_POST['note']: "";
$proposal_items = (isset($_POST['proposal_items']) && $_POST['proposal_items']!= "")? $_POST['proposal_items']: "";
$db->table = "proposal";
$data = array (
		'note' => $db->clearText($note),
		'proposing_user_id' => $account['id'],
		'created_time' => time(),
	);
$db->insert($data);
$id_query = $db->LastInsertID;
if($id_query > 0) {
	$items = json_decode($proposal_items, true);
	
	$db->table = "commodity";
	$tableitems = '';
	$stt = 1;	
	foreach($items as $item) {
		
		$data = array(
				'proposal_id' => $db->clearText($id_query),
				'material_name' => $db->clearText($item['sp']),
				'size' => $db->clearText($item['size']),
				'unit' => $db->clearText($item['unit']),
				'number' => $db->clearText($item['soluongmathang']),
		);
		$db->insert($data);
		$tableitems .= '<tr class="listds">
							<td>
							<label class="form-lb-tp stt">'.$stt++.'</label>
							</td>
							<td><label class="form-lb-tp">'.$db->clearText($item['sp']).'</label></td>
							<td><label class="form-lb-tp">
							<input type="text" class="form-control fixsize" readonly value="'.$db->clearText($item['size']).'" />
							</label>
							</td>
							<td>
							<label class="form-lb-tp">
							<input type="text" readonly class="layunit" value="'.$db->clearText($item['unit']).'" />
							</label>
							</td>
							<td>
							<label class="form-lb-tp orderqty">
							<input type="text"  class="form-control fixsoluong" readonly data-a-sep="." data-a-dec="," data-v-max="999999" data-v-min="0" value="'.number_format($item['soluongmathang'],0,',','.').'" />
							</label>
							</td>
							<td>
							</td>			 
						</tr>';
	}
		
		$id_query_item = $db->LastInsertID;
		$tableitems .= '</table>';

	
	
	if($id_query_item > 0 ) {
		$content_insert = '';
	$content_insert .= '<div class="row">
			<div class="col-lg-12">
			<div class="panel panel-no-border">
			<div class="tieudehoadondm">
			<div>
			<div class="logoin">
			<img src="images/logo.png">
			</div>
			<div class="kihieu">
			<ul>			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>			<li> Mobile: 0905 034 034 - 0913 404 414 </li>			<li> Email: incongthanhdanang@gmail.com </li>			</ul>
			</div>
			</div>
			<div style="text-align: center;width: 100%;padding-top: 15px;" class="titlenamein">
			<span class="namehoadon">PHIẾU ĐỀ XUẤT MỚI</span><br>
			<span style="color: #111;font-size:16px;">Số : '.$id_query. ' </span><br/>
			<span style="color: #111;font-size:16px;">Ngày tạo : '.$date->vnDateTime(time()).'</span><br/>			
			</div>
			</div>
			</div>
			</div>
			</div>
			
			<table class="table table-no-border table-ol-3w table-hover" >
			<tr class="panel-heading thantran" >
			<th><label class="form-lb-tp">Thứ tự</label></th>
			<th width="200px;"><label class="form-lb-tp">Tên vật liệu</label></th>
			<th width="150px;"><label class="form-lb-tp">Kích thước</label></th>
			<th ><label class="form-lb-tp">Đơn vị</label></th>
			<th width="200px;"><label class="form-lb-tp">Số lượng</label></th>
			<th width="110px;"><label class="form-lb-tp">&nbsp;</label></th>
			</tr>';
		$content_insert .= $tableitems;
		
		$db->table = "calendar";
		$data = array(
		'status' => 0,
		'exhibition_id' => 0,
		'user_id' => $account['id'],
		'content' => $content_insert,
		'created_time' => time(),
		'type' => 12,
		'to_role' => 9,
		);
	$db->insert($data);
	$id = $db->LastInsertID;
	$list_users_get_notify = getListUserNotify2(9);	
	$msg = 'Đề xuất được chuyển đến bộ phận kế toán xử lý';
	insertNotify4($id, $list_users_get_notify, $account['id'], 12, $msg);
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
		<span class="show-ok">Đã gửi đề xuất đến bộ phận kế toán</span>
		<br>Vui lòng đợi giây lát hoặc bấm <a style="font-weight:  bold;" href="/">vào đây</a> để tiếp tục...
	</div>
	<head>
		<meta http-equiv="Refresh" content="1; URL=/">
	</head>';