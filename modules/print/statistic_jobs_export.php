<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if($account["id"]>0) {
	// -- Bảng phân quyền :)
	$corePrivilegeSlug  = array();
	$corePrivilegeSlug  = corePrivilegeSlug($account["id"]);

	$date               = new DateClass();

	$info_user          = array();

	$info_user          = getInfoUser($_SESSION["user_id"]);

	$current_time       = strtotime($date->vnOther(time(), 'Y-m-d H:i'));

	$date_start         = isset($_GET['date_start']) ? strtotime($date->dmYtoYmd($_GET['date_start'])) : 0;

	$date_end           = isset($_GET['date_end']) ? strtotime($date->dmYtoYmd($_GET['date_end'])) : 0;

	$filter             = isset($_GET['filter']) ? $_GET['filter']+0 : 0;

	$member             = isset($_GET['member']) ? $_GET['member']+0 : 0;

	// <--- Phân quyền cấp cho xem lịch cho số nhân viên này.
	$c_query = "";
	$c_personnel = $c_core = array();
	$c_core = getAgencyToCore($corePrivilegeSlug['op'], '/statistic_exhibition;/');
	$c_list = implode(',', $c_core);
	$db->table = "core_user";
	$db->condition = "";
	$db->order = "`sort` ASC";
	$db->limit = "";
	$rows = $db->select();
	if($db->RowCount > 0) {
		foreach($rows as $row) {
			array_push($c_personnel, $row['user_id']);
		}
	}
	
	if(count($c_personnel)>0) {
		$c_calendar = array();
		$c_personnel = implode(',', $c_personnel);
		$db->table = "calendar_user";
		$db->condition = "`user_id` IN ($c_personnel)";
		$db->order = "";
		$db->limit = "";
		$rows = $db->select();
		if($db->RowCount>0) {
			foreach($rows as $row) {
				array_push($c_calendar, $row['calendar']+0);
			}
		}
		if(count($c_calendar)>0) {
			$c_calendar = implode(',', $c_calendar);
			$c_query = "`calendar_id` IN ($c_calendar)";
		} else $c_query = "";

	} else $c_query = "";

	if($date_start==0 && $date_end==0) {
		$date_qr = strtotime($date->vnOther(time(), 'Y-m-d'));
		$query .= "`created_time` < ($date_qr+86400) AND  $date_qr < `date_end`";
		$show_date = 'Thời gian, ngày <strong>' . $date->vnDate($date_qr) . '</strong>';
	} elseif($date_start!=0 && $date_end == 0) {
		$date_qr = $date_start;
		$query .= "`created_time` < ($date_qr+86400) AND  $date_qr < `date_end`";
		$show_date = 'Thời gian, ngày <strong>' . $date->vnDate($date_qr) . '</strong>';
	} elseif($date_start==0 && $date_end != 0) {
		$date_qr = $date_end;
		$query .= "`created_time` < ($date_qr+86400) AND  $date_qr < `date_end`";
		$show_date = 'Thời gian, ngày <strong>' . $date->vnDate($date_qr) . '</strong>';
	} else {
		$query .= "`created_time` < ($date_end+86400)  AND $date_start < `date_end`";
		$show_date = 'Thời gian, từ ngày <strong>' . $date->vnDate($date_start) . '</strong> đến ngày <strong>' . $date->vnDate($date_end) . '</strong>';
	}

	

	if($member != 0){
	        $listram = array();
	        $db->table = "exhibition_history";
			$db->condition = "`creator_id` = $member";
			$db->order = "";
			$db->limit = "";
			$rows = $db->select();
			foreach ($rows as $row1) {
				array_push($listram, $row1['id_exhibition']);
			}
			if($listram != []){
				$listram = array_keys(array_flip($listram));
				$listram = implode(',', $listram);
				$query .= " AND `exhibition_id` IN ($listram)";
			}else{
				$query .= " AND `exhibition_id` IN ('')";
			}


	    }else{
	       $listram = ""; 
	    }
	    

	$show_address_date  = '';
	$show_address_date .= $info_user[14];
	$show_address_date .= ', ngày ' . $date->vnOther($current_time, 'd') . ' tháng ' . $date->vnOther($current_time, 'm') . ' năm ' . $date->vnOther($current_time, 'Y');

	$name_word = '[TKB_CT]_Bang_thong_ke_dong_hang_' . '(' . $date->vnOther($current_time, 'd-m-Y_H-i') . ')';
	header('Content-Type: application/vnd.ms-word; charset=utf-8');
	header('Content-Disposition: attachment;filename="' . $name_word  . '.doc"');
	header('Cache-Control: max-age=0');
	header('Cache-Control: max-age=1');
	header ('Expires: Mon, 26 Jul 1997 05:00:00 GMT');
	header ('Last-Modified: '.gmdate('D, d M Y H:i:s').' GMT');
	header ('Cache-Control: cache, must-revalidate');
	header ('Pragma: public');
	?>
	<!DOCTYPE html>
	<html lang="<?php echo TTH_LANGUAGE; ?>">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="language" content="<?php echo TTH_LANGUAGE; ?>">
		<meta http-equiv="Refresh" content="600">
		<title><?php echo getConstant('title'); ?></title>
		<meta name="description" content="<?php echo getConstant('description'); ?>"/>
		<meta name="keywords" content="<?php echo getConstant('keywords'); ?>"/>
		<meta name="copyright" content="<?php echo getConstant('copyright'); ?>"/>
		<meta name="author" content="DanaWeb.vn">
		<link rel="shortcut icon" href="<?php echo HOME_URL; ?>/favicon.ico" type="image/x-icon">
		<link rel="icon" href="<?php echo HOME_URL; ?>/favicon.ico" type="image/x-icon">
		<style>
			@page Section1{
				size: 21cm 29.7cm;
				margin: 0.5cm 0.6cm;
			}
			.statistic-export {
				font-family: Arial, Helvetica, sans-serif !important;
				page: Section1;
				color: #000000;
				font-size: 10pt;
				line-height: 14pt;
				width: 19.8cm;
				margin: 0.5cm;
			}
			.statistic-export table {
				font-family: Arial, Helvetica, sans-serif;
				font-size: 10pt;
				line-height: 14pt;
				border-collapse: collapse;
				border-spacing: 0;
				width: 100%;
			}
			.statistic-export h4 {
				font-size: 10pt;
				text-decoration: underline;
				margin: 0.5cm 0.1cm 0.1cm;
			}
			.statistic-export p {
				margin: 0 auto;
			}
			table.table-bordered thead tr th,
			table.table-bordered tbody tr th,
			table.table-bordered tfoot tr th,
			table.table-bordered thead tr td,
			table.table-bordered tbody tr td,
			table.table-bordered tfoot tr td,
			table.table-bordered tr td  {
				border: 1px solid #000000;
				padding: 0 0.1cm;
				line-height: 12pt;
				vertical-align: middle;
			}
			table.table thead tr th,
			table.table tbody tr th,
			table.table tfoot tr th {
				font-weight: bold;
				padding: 0.2cm 0.1cm;
			}
			th {
				font-weight: bold;
				line-height: 12pt;
				padding: 0.2cm 0.1cm;
				vertical-align: middle;
			}
			td  {
				padding: 0 0.1cm;
				line-height: 12pt;
				vertical-align: middle;
			}
			.info-top p {
				line-height: 16pt;
			}
		</style>
	</head>
	<body class="print-body">
		<div class="statistic-export">
		<table class="info-top">
			<tr>
				<td style="width: 45%;" align="center">
					<p><strong>CÔNG TY In Ấn </strong></p>
					<p><strong>CÔNG THÀNH Đà Nẵng</strong></p>
					<p>--- oOo ---</p>
				</td>
				<td style="width: 5%;">&nbsp;</td>
				<td style="width: 50%;" align="center">
					<p style="font-style: italic;"><?php echo $show_address_date;?></p>
					<p><strong>BẢNG THỐNG KÊ ĐƠN HÀNG</strong></p>
					<p><?php echo $show_date;?></p>
					<p>--- ### ---</p>
				</td>
			</tr>
		</table>
		<br>
		<table class="table table-bordered" cellspacing="0" cellpadding="0" border="1">
			<thead>
			<tr>
				<tr>
						<th>STT</th>
						<th>Mã đơn hàng</th>
						<th width="20%">Trạng thái</th>
						<th width="20%">Tổng giá trị</th>
						<th>Nhân viên thực hiện</th>
						<th>Ngày lập đơn</th>
						<th>Ngày gửi hàng</th>
					</tr>
			</tr>
			</thead>
			<tbody>
			<?php
			$type = array(
					0 => 'Việc được giao',
					1 => 'Việc cá nhân'
			);

			if($query=='') $query = $c_query;
			else $query = $c_query . " " .$query;

			$db->table = "exhibition";
			$db->condition = $query;
			$db->order = "";
			$db->limit = "";
			$rows = $db->select();
			$i = 0;
			foreach($rows as $row) {
			        $id_us = getLevelRow($row['exhibition_id']);
					$i++;
					?>
					<tr>
						<td align="center"><?php echo $i?></td>
						<td align="center"><?php echo $row['code'];?></td>
						<td><?php echo getVaStatus($row['status']);?></td>
						<td><?php echo number_format($row['money_undiscounted'],'0','','.') ?> VNĐ</td>
						<td align="center"><?= getNameRow($id_us) ?></td>
						<td align="center"><?php echo $date->vnDateTime($row['created_time']);?></td>
						<td align="center"><?php echo $date->vnDateTime($row['date_end']);?></td>
					</tr>
					<?php
			
				
			}
			?>
			</tbody>
		</table>
		</div>
	<!--Core js-->
	<script type="text/javascript" src="<?php echo HOME_URL; ?>/js/jquery.js"></script>
	</body>
	</html>
	<?php
}  else loadPageError('Lỗi! Dữ liệu truy xuất không hợp lệ.', HOME_URL_LANG);