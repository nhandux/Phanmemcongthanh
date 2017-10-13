<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }

    $date = new DateClass();
	$stringObj = new String();
	$list_users = getListUsersOfOrder($id);
	$id = $_POST['id'];
	$list_users = getListUsersOfOrder($id+0);
	$value = $_POST['value'];
	$created_time = $date->vnDate(getTimeCreated($id));
	$end_time = $date->vnDate(getTimeEnd($id));
	$order = getOrderCode($id);
	$items = getOrderItems($id);
	$info_user = getInfoUser($_SESSION["user_id"]);
	 $name =  $info_user[0];
	 $status = getCurrentStatus($id);
	$content = '';
	$content .= '<div class="row">
			<div class="col-lg-12">
			<div class="panel panel-no-border">
			<div class="tieudehoadondm">
			<div>
			<div class="logoin">
			<img src="images/logo.png">
			</div>
			<div class="kihieu">
			<ul>

			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>

			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 Mobile: 0905 034 034 - 0913 404 414 </li>

			<li> Email: incongthanhdanang@gmail.com </li>

			</ul>
			</div>
			</div>
			<div style="text-align: center;width: 100%;padding-top: 15px;" class="titlenamein">
			<span class="namehoadon">THÔNG TIN ĐƠN HÀNG</span><br>
			<span style="color: #111;font-size:16px;">Số : '.$id. ' </span><br/>
			<span style="color: #111;font-size:16px;">Ngày tạo :'. $created_time.'</span><br />
			<span style="color: #111;font-size:16px; margin-left: -30%;">Ngày hoàn thành :'. $end_time.'</span><br />
			</div>
			</div>
			</div>
			</div>
			</div>
			<div class="col-md-12 formcode">
			<div class="row">
			<div class="col-md-6 col-sm-4 col-xs-12">
			<div style="display: inline-block;position: relative;">
			<span style="display: inline-block;position: absolute;left: 10px;top: 5px;">CODE</span>
			<input class="form-control formicon" style="padding-left: 50px;" type="text" name="symbols" maxlength="250" autocomplete="off" disabled="" value="'.$order.'" data-toggle="tooltip" data-placement="top" title="" data-original-title="Mã hàng tự tăng" >
			
			</div>
			</div>				
			</div>
			</div>
			';
	$content .= $items;
	$content .= '<table class="table table-no-border table-ol-3w table-hover tabnhan notenhan" style="max-width: 500px;">
						<tr><td colspan="2" style="padding:5px;">
							 <span style="color:#903030;font-weight: 800;font-size:16px">Ghi chú cho đơn hàng </span>
						</td></tr>
						<tr>
							<td colspan="2">
								<div class="contentnote" style="color:#f00; font-weight:600;font-size:14px">
								<span class="kytuad" style="color: #000;">'.$name.'</span>'.$value.'<small style="color: #000;"><i class="fa fa-clock-o"></i>'.$date->vnDate(time()).'</small>.<br/>
								</div>
							</td>
						</tr>
						<tr>
							
						</tr>
				</table>';
	$msg = '';
	
    $db->table = "commentex";
    $data = array(
        'exhibition_id'      => $id,
        'content'            => $db->clearText($value),
        'status'             => 0,
        'created_time'       => time(),
        'user_id'            => $account["id"],
    ); 
    $db->insert($data);
	$db->table = "calendar";
	$data = array(
		'status' => $status,
		'exhibition_id' => $id,
		'user_id' => $account['id'],
		'content' => $content,
		'created_time' => time(),
		'type' => 14,
		
	);
	$db->insert($data);
	$id_notify = $db->LastInsertID;
	$msg = 'Đơn hàng  mã số: '.$order . ' có thông báo mới : '. $value;
			insertNotify4($id_notify, $list_users, $account['id'], 14, $msg);
    echo date('d/m/Y',time());
?>