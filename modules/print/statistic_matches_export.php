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
	$agency             = isset($_GET['agency']) ? $_GET['agency']+0 : 0;
	$role               = isset($_GET['role']) ? $_GET['role']+0 : 0;
	$member             = isset($_GET['member']) ? $_GET['member']+0 : 0;
	$query_cal          = $query_user = $show_date = "";

	// <--- Phân quyền cấp cho xem lịch cho số nhân viên này.
	$c_query = "";
	$c_core = array();
	$c_core = getAgencyToCore($corePrivilegeSlug['op'], '/statistic_matches;/');

	if($date_start==0 && $date_end==0) {
		$date_qr = strtotime($date->vnOther(time(), 'Y-m-d'));
		$query_cal .= " AND `start_time` < ($date_qr+86400) AND  $date_qr < `end_time`";
		$show_date = 'Thời gian, ngày <strong>' . $date->vnDate($date_qr) . '</strong>';
	} elseif($date_start!=0 && $date_end == 0) {
		$date_qr = $date_start;
		$query_cal .= " AND `start_time` < ($date_qr+86400) AND  $date_qr < `end_time`";
		$show_date = 'Thời gian, ngày <strong>' . $date->vnDate($date_qr) . '</strong>';
	} elseif($date_start==0 && $date_end != 0) {
		$date_qr = $date_end;
		$query_cal .= " AND `start_time` < ($date_qr+86400) AND  $date_qr < `end_time`";
		$show_date = 'Thời gian, ngày <strong>' . $date->vnDate($date_qr) . '</strong>';
	} else {
		$query_cal .= " AND `start_time` < ($date_end+86400)  AND $date_start < `end_time`";
		$show_date = 'Thời gian, từ ngày <strong>' . $date->vnDate($date_start) . '</strong> đến ngày <strong>' . $date->vnDate($date_end) . '</strong>';
	}

	if($agency>0) {
		$list_agency = '';
		$list_agency = getAgencyElementPlus($agency);
		$query_user .= " AND `agency` IN ($list_agency)";
	}

	if($role>0) {
		$db->table = "role_user";
		$db->condition = "`role` = $role";
		$db->order = "";
		$db->limit = "";
		$rows = $db->select();
		if($db->RowCount > 0) {
			foreach($rows as $row) {
				array_push($personnel, $row['user']);
			}
		}

		$personnel = array_keys(array_flip($personnel));
		if(count($personnel)>0) {
			$personnel = implode(',', $personnel);
			$query_user .= " AND `user_id` IN ($personnel)";
		} else $query_user .= " AND `user_id` = 0";
	}

	if($member>0) {
		$query_user .= " AND `user_id` = $member";
	}

	$show_address_date  = '';
	$show_address_date .= $info_user[14];
	$show_address_date .= ', ngày ' . $date->vnOther($current_time, 'd') . ' tháng ' . $date->vnOther($current_time, 'm') . ' năm ' . $date->vnOther($current_time, 'Y');

	$name_word = '[TKB_NDN]_Bang_thong_ke_diem_nhan_vien_' . '(' . $date->vnOther($current_time, 'd-m-Y_H-i') . ')';
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
					<p><strong>CÔNG TY CỔ PHẦN</strong></p>
					<p><strong>ĐẦU TƯ PHÁT TRIỂN NHÀ ĐÀ NẴNG</strong></p>
					<p>--- oOo ---</p>
				</td>
				<td style="width: 5%;">&nbsp;</td>
				<td style="width: 50%;" align="center">
					<p style="font-style: italic;"><?php echo $show_address_date;?></p>
					<p><strong>BẢNG THỐNG KÊ ĐIỂM NHÂN VIÊN</strong></p>
					<p><?php echo $show_date;?></p>
					<p>--- ### ---</p>
				</td>
			</tr>
		</table>
		<br>
		<table class="table table-bordered" cellspacing="0" cellpadding="0" border="1">
			<thead>
			<tr>
				<th width="6%">STT</th>
				<th width="28%">Tên nhân viên</th>
				<th width="11%">Việc được giao</th>
				<th width="11%">Việc cá nhân</th>
				<th width="11%">Việc giám sát</th>
				<th width="11%">Hoàn thành</th>
				<th width="11%">Gia hạn</th>
				<th width="11%">Tổng điểm</th>
			</tr>
			</thead>
			<tbody>
			<?php
			$c_list = implode(',', $c_core);
			$db->table = "core_user";
			$db->condition = "`is_show` = 1 AND `agency` IN ($c_list)" . $query_user;
			$db->order = "`sort` ASC";
			$db->limit = "";
			$rows = $db->select();
			$i = 0;
			foreach($rows as $row) {
				$i++;
				$query = '';
				$count_work = $count_personal = $count_supervisor = $count_complete = $count_extend = $total_matches = $total_supervisor_matches = 0;
				$c_calendar = array();
				$db->table = "calendar_user";
				$db->condition = "`user_id` = " . $row['user_id'];
				$db->order = "";
				$db->limit = "";
				$rws_u = $db->select();
				if($db->RowCount>0) {
					foreach($rws_u as $rw_u) {
						array_push($c_calendar, $rw_u['calendar']+0);
					}
				}

				if(count($c_calendar)>0) {
					$c_calendar = implode(',', $c_calendar);
					$query = "`calendar_id` IN ($c_calendar)";
				} else $query = "`calendar_id` = 0";

				$db->table = "calendar";
				$db->condition = $query . $query_cal;
				$db->order = "`modified_time` DESC";
				$db->limit = "";
				$rws_c = $db->select();
				if($db->RowCount>0) {
					foreach($rws_c as $rw_c) {
						if($rw_c['type']==1) {
							$count_personal++;
						} else {
							$count_work++;
						}
						if($rw_c['status']==1) {
							$count_complete++;
						}

						$db->table = "calendar_extend";
						$db->condition = "`status` = 1 AND `calendar` = " . $rw_c['calendar_id'];
						$db->order = "`created_time` ASC";
						$db->limit = "";
						$rws_e = $db->select();
						$count_extend = $db->RowCount;
						if($count_extend>0) {
							foreach($rws_e as $rw_e) {
								if($rw_e['status']==1) {
									if ($rw_e['complete']==1) {
										$total_matches += $rw_e['matches'];
									} else {
										$total_matches -= $rw_e['matches'];
									}
								}
							}
						}

						if($count_extend>0 || $rw_c['report_time']>$rw_c['end_time']) {
							$total_matches -= $rw_c['to_matches'];
						} elseif($rw_c['status']==1) {
							$total_matches += $rw_c['to_matches'];
						} else {
							$total_matches += 0;
						}
					}
				}

				$db->table = "calendar";
				$db->condition = "`supervisor` = " . $row['user_id'] . $query_cal;
				$db->order = "`modified_time` DESC";
				$db->limit = "";
				$rws_s = $db->select();
				$count_supervisor = $db->RowCount;
				if($count_supervisor>0) {
					foreach($rws_s as $rw_s) {
						$db->table = "calendar_extend";
						$db->condition = "`status` = 1 AND `calendar` = " . $rw_s['calendar_id'];
						$db->order = "`created_time` ASC";
						$db->limit = "";
						$rws_e = $db->select();
						if ($db->RowCount > 0) {
							foreach ($rws_e as $rw_e) {
								if ($rw_e['status'] == 1) {
									if ($rw_e['complete'] == 1) {
										$total_supervisor_matches += $rw_e['supervisor_matches'];
									} else {
										$total_supervisor_matches -= $rw_e['supervisor_matches'];
									}
								}
							}
						}

						if($db->RowCount>0 || $rw_s['report_time']>$rw_s['end_time']) {
							$total_supervisor_matches -= $rw_s['supervisor_matches'];
						} elseif($rw_s['status']==1) {
							$total_supervisor_matches += $rw_s['supervisor_matches'];
						} else {
							$total_supervisor_matches += 0;
						}
					}
				}

				$total_matches = $total_matches + $total_supervisor_matches;
				?>
				<tr>
					<td align="center"><?php echo $i?></td>
					<td><?php echo stripslashes($row['full_name']);?></td>
					<td align="right"><?php echo formatNumberVN($count_work)?></td>
					<td align="right"><?php echo formatNumberVN($count_personal)?></td>
					<td align="right"><?php echo formatNumberVN($count_supervisor)?></td>
					<td align="right"><?php echo formatNumberVN($count_complete)?></td>
					<td align="right"><?php echo formatNumberVN($count_extend)?></td>
					<td align="right"><?php echo formatNumberVN($total_matches)?></td>
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