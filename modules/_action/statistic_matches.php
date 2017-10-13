<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if($account["id"]>0) {
	// -- Bảng phân quyền :)
	$corePrivilegeSlug  = array();
	$corePrivilegeSlug  = corePrivilegeSlug($account["id"]);
	$date               = new DateClass();
	$date_start         = (empty($_POST['date_start'])) ? 0 : strtotime($date->dmYtoYmd($_POST['date_start']));
	$date_end           = (empty($_POST['date_end'])) ? 0 : strtotime($date->dmYtoYmd($_POST['date_end']));
	$agency             = isset($_POST['agency']) ? ($_POST['agency']+0) : 0;
	$role               = isset($_POST['role']) ? ($_POST['role']+0) : 0;
	$member             = isset($_POST['member']) ? ($_POST['member']+0) : 0;
	$query_cal          = $query_user = $show_date = "";
	$current_time       = strtotime($date->vnOther(time(), 'Y-m-d H:i'));

	// <--- Phân quyền cấp cho xem lịch cho số nhân viên này.
	$c_query = "";
	$c_core = array();
	$c_core = getAgencyToCore($corePrivilegeSlug['op'], '/statistic_matches;/');

	if($date_start==0 && $date_end==0) {
		$date_qr = strtotime($date->vnOther(time(), 'Y-m-d'));
		$query_cal .= " AND `start_time` < ($date_qr+86400) AND  $date_qr < `end_time`";
		$show_date = '<label>' . $date->dateTimeOther($date_qr, 'D, d/m/Y') . '</label>';
	} elseif($date_start!=0 && $date_end == 0) {
		$date_qr = $date_start;
		$query_cal .= " AND `start_time` < ($date_qr+86400) AND  $date_qr < `end_time`";
		$show_date = '<label>' . $date->dateTimeOther($date_qr, 'D, d/m/Y') . '</label>';
	} elseif($date_start==0 && $date_end != 0) {
		$date_qr = $date_end;
		$query_cal .= " AND `start_time` < ($date_qr+86400) AND  $date_qr < `end_time`";
		$show_date = '<label>' . $date->dateTimeOther($date_qr, 'D, d/m/Y') . '</label>';
	} else {
		$query_cal .= " AND `start_time` < ($date_end+86400)  AND $date_start < `end_time`";
		$show_date = '(từ) <label>' . $date->dateTimeOther($date_start, 'D, d/m/Y') . '</label> (đến) <label>' . $date->dateTimeOther($date_end, 'D, d/m/Y') . '</label>';
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
	?>
	<div class="info-panel-top-ol">
		<p>- Lọc theo lịch: <?php echo $show_date;?></p>
	</div>
	<table class="table display table-bordered" cellspacing="0" cellpadding="0" id="dataTablesList">
		<thead>
		<tr>
			<th>STT</th>
			<th>Tên nhân viên</th>
			<th>Việc được giao</th>
			<th>Việc cá nhân</th>
			<th>Việc giám sát</th>
			<th>Hoàn thành</th>
			<th>Gia hạn</th>
			<th>Tổng điểm</th>
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
	<script>
		$(document).ready(function() {
			$('#dataTablesList').dataTable( {
				"language": {
					"url": "/js/data-tables/de_DE.txt",
					"decimal": ",",
					"thousands": "."
				},
				"paging":   false,
				"info":     false,
				"order": [[ 0, "asc" ]]
			} );
		});
	</script>
<?php
}