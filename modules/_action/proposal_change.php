<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
$code = $_POST['code']+0;
$new_state = $_POST['new_state']+0;
$list = $_POST['list'];
$list_items = json_decode($list, true);
$date = new DateClass();
$user_id =  $_SESSION["user_id"];
$created_time = getTimeProposal($code);
$stt = 1;
$content = '';
if($code != '' && $new_state > 0) {
	$db->table="proposal";
	$db->condition = "proposal_id = " . $code;	
	$data = array(
		'is_handled' => 1,
		'user_id' => $user_id,
	);
	$db->update($data);		
		$content .= '<div class="row">
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
			<span class="namehoadon">THÔNG TIN ĐỀ XUẤT</span><br>
			<span style="color: #111;font-size:16px;">Số : '.$code. ' </span><br/>
			<span style="color: #111;font-size:16px;">Ngày tạo :  '. $created_time.'</span><br />
			<span style="color: #111;font-size:16px; margin-left: -30%;">Ngày xử lý nhập kho :  '. $date->vnDateTime(time()).'</span><br />
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
	foreach($list_items as $item) {		
		$content .= '<tr class="listds">
								<td>
								<label class="form-lb-tp stt">'.$stt++.'</label>
								</td>
								<td><label class="form-lb-tp">'.$db->clearText($item['name']).'</label></td>
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
								<input type="text"  class="form-control fixsoluong" readonly data-a-sep="." data-a-dec="," data-v-max="999999" data-v-min="0" value="'.number_format($item['number'],0,',','.').'" />
								</label>
								</td>
								<td>
								</td>			 
							</tr>';
	}
	$content .= '</table>';
	
	$db->table = "calendar";
		$data = array(
		'status' => 0,
		'exhibition_id' => 0,
		'user_id' => $account['id'],
		'content' => $content,
		'created_time' => time(),
		'type' => 12,
		'to_role' => 5,
		);
	$db->insert($data);
	$id = $db->LastInsertID;
	$list_users_get_notify = getListUserNotify2(9);	
	$msg = 'Đề xuất đã được bộ phận kế toán xử lý';
	insertNotify4($id, $list_users_get_notify, $account['id'], 12, $msg);
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
		<span class="show-ok">Đã xử lý thành công đề xuất</span>
		<br>Vui lòng đợi giây lát hoặc bấm <a style="font-weight:  bold;" href="/?ol=document&op=document_proposal_list">vào đây</a> để tiếp tục...
	</div>
	<head>
		<meta http-equiv="Refresh" content="1; URL=/?ol=document&op=document_proposal_list">
	</head>';
	
