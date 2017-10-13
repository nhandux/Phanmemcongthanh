<?php

if (!defined('TTH_SYSTEM')) { die('Please stop!'); }

//

?>



<!-- Menu path -->



<?php

	$error = '';

	$stringObj = new String();

	$condition = array();

	$date = new DateClass();

	if(isset($_POST['submit'])) {

	$urgent = (isset($_POST['urgent']) && $_POST['urgent']!= "")? $_POST['urgent']: "";

	$pick_up = (isset($_POST['pick_up']) && $_POST['pick_up']!= "")? $_POST['pick_up']: "";

	$fabricate = (isset($_POST['fabricate']) && $_POST['fabricate']!= "")? $_POST['fabricate']: "";

	$money_undiscounted = (isset($_POST['money_undiscounted']))? $_POST['money_undiscounted']: "";

	$condition[] = $money_undiscounted;

	$status = (isset($_POST['status']) && $_POST['status']!= "")? $_POST['status']+0: 1;

	$discount = (isset($_POST['discount']))? $_POST['discount']: "";

	$into_money = (isset($_POST['into_money']))? $_POST['into_money']: "";	

	$condition[] = $into_money;

	$debtor = (isset($_POST['debtor']) && $_POST['debtor']!= "")? $_POST['debtor']: "";

	$date_end = (isset($_POST['date_end']) && $_POST['date_end']!= "")? $_POST['date_end']: "";

	// $condition[] = $date_end;

	$comment = (isset($_POST['comment']) && $_POST['comment']!= "")? $_POST['comment']: "";

	$order_items = (isset($_POST['order_items']) && $_POST['order_items']!= "")? $_POST['order_items']: "";

	$condition[] = $order_items;

	$code =(isset($_POST['code']) && $_POST['code']!= "")? $_POST['code']: "";

	$condition[] = $code;

	$created_time = $date->vnDateTime(time());

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

	foreach($condition as $cond) {

		if(empty($cond)) {

			$error = '<span class="show-error">Có lỗi trong lúc nhập dữ liệu </span>';

		}

	}

	

	if(empty($error)) {

	//insert to customer table

	$id_query = 0;

	$db->table = "customer";

	$data = array(

			

			'company_name' => $db->clearText($tencongty),

			'tax_code' => $db->clearText($masothue),

			'full_name' => $db->clearText($namenguoidat),

			'phone' => $db->clearText($sodienthoai),

			'email' => $db->clearText($email),

			'address' => $db->clearText($diachi),

			'is_show' => 1,

			'skype' => $db->clearText($skype),

			'created_time' => strtotime($date->dmYtoYmd($created_time)),

	);

	$db->insert($data);

	$id_query = $db->LastInsertID;

	//insert to exhibition table

	$id_query2 = 0;

	$db->table = "exhibition";

	$data = array(

			

			'urgent' => $urgent+0,

			'pick_up' => $pick_up+0,

			'money_undiscounted' => $db->clearText($money_undiscounted),

			'discount' => $db->clearText($discount),

			'into_money' => $db->clearText($into_money),

			'fabricate' => $db->clearText($fabricate),

			'prepayment' => $db->clearText($prepayment),

			'debtor' => $db->clearText($debtor),

			'date_end' => strtotime($date->dmYtoYmd($date_end)),

			'comment' => $db->clearText($comment),

			'user_id' => ($status == 1)? $_SESSION["user_id"]: 0,

			'code' => $db->clearText($code),

			'status' => $status,

			'created_time' => strtotime($date->dmYtoYmd($created_time)),

			'customer_id' => $id_query,

	);

	$db->insert($data);

	$id_query2 = $db->LastInsertID;

	//insert to itemproduct table

	

	$items = json_decode($order_items, true);

	
	$db->table = "commentex";
	$data = array(
			'exhibition_id' => $db->clearText($id_query2),
			'content' => $db->clearText($comment),
			'status' => 0,
			'created_time'=> strtotime($date->dmYtoYmd($created_time)),
			'user_id' => $_SESSION["user_id"],
	);
	$db->insert($data);



	$db->table = "itemproduct";

	$tableitems = '';

	$stt = 1;

	foreach($items as $item) {

		$str = $item['unit'];

		$str = substr($str, 1);

		$data = array(

				'exhibition_id' => $db->clearText($id_query2),

				'product_name' => $db->clearText($item['sp']),

				'size' => $db->clearText($item['size']),

				'unit_price' => $db->clearText($item['chonsubmit']),

				'count_number' => $db->clearText($item['soluongmathang']),

				'total' => $db->clearText($item['thanhtien']),

				'type' => $str,

		);

		$db->insert($data);

		

		$tableitems .= '<tr class="listds">

							<td>

							<label class="form-lb-tp stt">'.$stt++.'</label>

							</td>

							<td><label class="form-lb-tp">'.$db->clearText($item['sp']).'</label></td>

							<td><label class="form-lb-tp">

							<span>'.$db->clearText($item['size']).'</span>

							</label>

							</td>			

						
							<td>

							<label class="form-lb-tp orderqty">

							<span>'.number_format($item['soluongmathang'],0,',','.').'</span>

							</label>

							</td>

							<td>

							</td>			 

						</tr>';

	}

	$id_query_item = $db->LastInsertID;

	$tableitems .= '</table>';

	$db->table = "exhibition_history";

	if($status == 1) $data = array(

		'creator_id' => $_SESSION["user_id"]+0,

        'id_exhibition' => $id_query2,
        
		'created_time' => time(),

	); else if($status > 1)

		 $data = array(

		'creator_id' => $_SESSION["user_id"]+0,

		'sales_id' => $_SESSION["user_id"]+0,

		'id_exhibition' => $id_query2,

		'sales_date_end' => time(),

		'created_time' => time(),

		);

	$db->insert($data);

	// Insert notification

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

			<ul>

			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>

			<li> Mobie: 0987 654 321 - 0123 456 689 </li>

			<li> Email: congthanhprint@gmail.com </li>

			</ul>

			</div>

			</div>

			<div style="text-align: center;width: 100%" class="titlenamein">

			<span class="namehoadon">ĐƠN HÀNG MỚI</span><br>

			<span style="color: #111;font-size:12px;">Số : '.$id_query2.' - '.$code.' </span><br/>

			<span style="color: #111;font-size:12px;">Ngày tạo : '. $created_time.'</span><br/>

			<span style="color: #111;font-size:12px;">Ngày hoàn thành : '. $date->vnDate(strtotime($date->dmYtoYmd($date_end))).'</span>

			</div>

			</div>

			</div>

			</div>

			</div>

			<div class="col-md-12 formcode">

			<div class="row">

			<div class="col-md-6 col-sm-4 col-xs-12">

			<div style="display: inline-block;position: relative;">

			<input type="hidden" name="id" value="<?=$id ;?>" />

			</div>

			</div>				

			</div>

			</div>

			<table class="table table-no-border table-ol-3w table-hover"  style="min-width:800px;">

			<tr class="panel-heading thantran" >

			<th><label class="form-lb-tp">Thứ tự</label></th>

			<th><label class="form-lb-tp">Tên sản phẩm</label></th>

			<th width="150px;"><label class="form-lb-tp">Kích thước</label></th>

			<th><label class="form-lb-tp">Số lượng</label></th>

			<th width="110px;"><label class="form-lb-tp">&nbsp;</label></th>

			</tr>

			';

	$content_insert .= $tableitems;

	$db->table = "calendar";

	$data = array(

		'status' => $status+0,

		'exhibition_id' => ($id_query2)+0,

		'user_id' => $_SESSION["user_id"]+0,

		'content' => $content_insert,

		'created_time' => time(),

		'type' => 2,		

	);

	$db->insert($data);

	$id_calendar = $db->LastInsertID;

	$msg = 'Đơn hàng mới được tạo - Mã số '. $code . (($status > 1)? (' được chuyển đến bộ phận '. getStatusToAgency($status)) : '');

	insertNotify3($id_calendar, array(), $account['id']+0, 2, $msg);

	

	loadPageSuccess("Đã thêm đơn hàng thành công.", TTH_PATH_LK . $link_ol[1] . TTH_PATH_OP_LK . $link_op[1][1]);

	$OK = true;

	

	}

	}

	

	include_once (_F_TEMPLATES . DS . "document.php");

?>

