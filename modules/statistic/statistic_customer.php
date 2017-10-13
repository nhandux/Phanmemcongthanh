<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
$date = new DateClass();
$stringObj = new String();
$current_time = strtotime($date->vnOther(time(), 'Y-m-d'));
$start = isset($_GET['start']) ? strtotime($date->vnOther($_GET['start'], 'Y-m-d')) : $current_time;
$end = isset($_GET['end']) ? strtotime($date->vnOther($_GET['end'], 'Y-m-d')) : $current_time;
//
$query      = "";
$ol_agency  = $c_personnel = array();
$ol_agency  = getAgencyToCore($corePrivilegeSlug['op'], '/statistic_jobs;/');

$c_list = implode(',', $ol_agency);
$db->table = "core_user";
$db->condition = "`agency` IN ($c_list)";
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
		$query = "`calendar_id` IN ($c_calendar)";
	} else $query = "`calendar_id` = 0";

} else $query = "`calendar_id` = 0";

$query .= " AND `disable` = 0 AND `start_time` < ($end+86400) AND $start < `end_time`";
// ----
$show_date = '';
if($start==$end) $show_date = '<label>' . $date->dateTimeOther($start, 'D, d/m/Y') . '</label>';
else $show_date = '(từ) <label>' . $date->dateTimeOther($start, 'D, d/m/Y') . '</label> (đến) <label>' . $date->dateTimeOther($end, 'D, d/m/Y') . '</label>';
?>
<!-- Menu path -->
<div class="row">
	<div class="col-md-12">
		<ul class="breadcrumbs-alt">
			<li>
				<a href="/"><?php echo $menu_ol[0];?></a>
			</li>
			<li>
				<a><?php echo $menu_ol[3];?></a>
			</li>
			<li>
				<a class="current"><?php echo $menu_op[3][0];?></a>
			</li>
		</ul>
	</div>
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<div class="row">
			<form id="_from_statistic_jobs" method="post" onsubmit="return ol_filter('_from_statistic_jobs', '_statistic_jobs', 'statistic_jobs');">
				<div class="input-statistic clearfix">
					<input type="text" id="date_start" class="form-control ncs" name="date_start" placeholder="Từ ngày..." autocomplete="off">
					<input type="text" id="date_end" class="form-control ncs" name="date_end" placeholder="đến ngày..." autocomplete="off">
					<select class="form-control" name="filter">
						<option value="0" selected>Chọn trạng thái...</option>
						<option value="1">QUÁN HẠN</option>
						<option value="2">SẮP ĐẾN HẠN</option>
						<option value="3">GIA HẠN</option>
						<option value="4">HOÀN THÀNH</option>
					</select>
					<?php echo loadSelectAgencySelect('return change_agency_cal(this.value, \'statistic_jobs\');', 0, $ol_agency);?>
					<?php echo loadSelectRoleSelect('return change_role_cal(this.value, \'statistic_jobs\');', 0, $ol_agency);?>
					<?php echo loadSelectMember('return load_calendar(0);', 0, $ol_agency);?>
					<div class="pull-right">
						<button type="submit" name="list" class="btn btn-primary btn-sm btn-round">Thống kê <i class="fa fa-bar-chart-o"></i></button>
						<button type="button" name="export" class="btn btn-success btn-sm btn-round" onclick="return ol_print_export('_from_statistic_jobs', 'statistic_jobs_export');">Xuất file <i class="fa fa-file-word-o"></i></button>
					</div>
				</div>
			</form>
		</div>
		<div class="panel panel-no-border f-space10">
			<div class="table-responsive" id="_statistic_jobs">
				<div class="info-panel-top-ol">
					<p>- Lọc công việc theo lịch: <?php echo $show_date;?></p>
				</div>
				<table class="table display table-bordered" cellspacing="0" cellpadding="0" id="dataTablesList">
					<thead>
					<tr>
						<th>STT</th>
						<th>Loại</th>
						<th width="25%">Tên công việc</th>
						<th width="25%">Người nhận</th>
						<th>Ưu tiên</th>
						<th>Bắt đầu</th>
						<th>Kết thúc</th>
						<th>Trạng thái</th>
						<th>Gia hạn</th>
					</tr>
					</thead>
					<tbody>
					<?php
					$type = array(
							0 => '<i class="fa fa-users c-manage" data-toggle="tooltip" data-placement="top" title="Công việc được giao"><span class="txt-hd">0</span></i>',
							1 => '<i class="fa fa-user c-personal" data-toggle="tooltip" data-placement="top" title="Công việc cá nhân"><span class="txt-hd">1</span></i>'
					);

					$db->table = "calendar";
					$db->condition = $query;
					$db->order = "`modified_time` DESC";
					$db->limit = "";
					$rows = $db->select();
					$i = 0;
					foreach($rows as $row) {
						$i++;
						$list = array();
						$list_personal = $list_role = $list_agency = array();
						// ---- Personal
						$to_personal = $row['to_personal'];
						$to_personal = str_replace(';', ',', $to_personal);
						if($to_personal!='') {
							$db->table = "core_user";
							$db->condition = "`user_id` IN ($to_personal)";
							$db->order = "";
							$db->limit = "";
							$rws = $db->select();
							foreach ($rws as $rw) {
								array_push($list_personal, stripslashes($rw['full_name']));
							}
						}
						$list_personal = implode('; ', $list_personal);
						if(!empty($list_personal)) array_push($list, $list_personal);
						// ---- Role
						$to_role = $row['to_role'];
						$to_role = str_replace(';', ',', $to_role);
						if($to_role!='') {
							$db->table = "core_role";
							$db->condition = "`role_id` IN ($to_role)";
							$db->order = "";
							$db->limit = "";
							$rws = $db->select();
							foreach($rws as $rw) {
								array_push($list_role, stripslashes($rw['name']));
							}
						}
						$list_role = implode('; ', $list_role);
						if(!empty($list_role)) array_push($list, $list_role);
						// ---- Agency
						$to_agency = $row['to_agency'];
						if($to_agency==0 && $to_agency!="") {
							$list_agency = '[Corp.] - TỔNG CÔNG TY';
						} else {
							$to_agency = str_replace(';', ',', $to_agency);
							if($to_agency!='') {
								$db->table = "agency";
								$db->condition = "`agency_id` IN ($to_agency)";
								$db->order = "";
								$db->limit = "";
								$rws = $db->select();
								foreach($rws as $rw) {
									array_push($list_agency, stripslashes($rw['name']));
								}
							}
							$list_agency = implode('; ', $list_agency);
						}
						if(!empty($list_agency)) array_push($list, $list_agency);
						$list = implode('; ', $list);

						// Trạng thái gia hạn.
						$count_extend = $success_extend = 0;
						$db->table = "calendar_extend";
						$db->condition = "`calendar` = " . $row['calendar_id'];
						$db->order = "";
						$db->limit = "";
						$rws_ex = $db->select();
						$count_extend = $db->RowCount;
						if($count_extend>0) {
							foreach ($rws_ex as $rw_ex) {
								if ($row['status'] == 1) {
									$success_extend++;
								}
							}
						}
						//---
						$db->table = "calendar_extend";
						$db->condition = "`calendar` = " . $row['calendar_id'];
						$db->order = "`created_time` DESC";
						$db->limit = 1;
						$rows_ex = $db->select();
						if($db->RowCount>0) {
							foreach($rows_ex as $row_ex) {
								if($row_ex['status']==0) {
									$extend = 0;
									$extend_time = $row_ex['propose_time'];
								} elseif($row_ex['status']==1)  {
									$extend = 1;
									$extend_time = $row_ex['extend_time'];
								} else {
									$extend = 2;
								}
							}
						}
						// Trạng thái công việc.
						if($row['disable']==1) {
							$status = 6;
						} elseif($row['status']==1) {
							$status = 5;
						} else {
							if($count_extend>0) {
								if($extend_time>=$current_time) {
									$status = 3;
								} else {
									$status = 4;
								}
							} else {
								if($row['start_time']>$current_time) {
									$status = 0;
								} elseif($row['end_time']>=$current_time) {
									$warning = getConstant('calendar_warning_endtime')*60;
									if($row['end_time']-$current_time <= $warning) {
										$status = 2;
									} else {
										$status = 1;
									}
								} else {
									$status = 4;
								}
							}
						}
						?>
						<tr>
							<td align="center"><?php echo $i?></td>
							<td align="center"><?php echo $type[$row['type']];?></td>
							<td><?php echo stripslashes($row['title']);?></td>
							<td><?php echo $list?></td>
							<td align="center"><span class="lb-level txt-hd <?php echo getTableLevel($row['level']);?>"><?php echo $row['level'];?></span></td>
							<td align="center"><?php echo $date->vnDateTime($row['start_time']);?></td>
							<td align="center"><?php echo $date->vnDateTime($row['end_time']);?></td>
							<td><?php echo $calendar_status[$status];?></td>
							<td align="center"><?php echo $count_extend . '/' . $success_extend;?></td>
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
			</div>
			<!-- /.table-responsive -->
		</div>
	</div>
	<!-- /.col-lg-12 -->
</div>
<script>
	jQuery(function(){
		$('#date_start').datetimepicker({
			format:'<?php echo TTH_DATE_FORMAT;?>',
			lang:'vi',
			closeOnDateSelect:true,
			timepicker: false,
			onShow:function( ct ){
				this.setOptions({
					maxDate:$('#date_end').val()?$('#date_end').val():false,
					format:'<?php echo TTH_DATE_FORMAT;?>',
					formatDate:'<?php echo TTH_DATE_FORMAT;?>'
				})
			}
		});
		$('#date_end').datetimepicker({
			format:'<?php echo TTH_DATE_FORMAT;?>',
			lang:'vi',
			closeOnDateSelect:true,
			timepicker: false,
			onShow:function( ct ){
				this.setOptions({
					minDate:$('#date_start').val()?$('#date_start').val():false,
					format:'<?php echo TTH_DATE_FORMAT;?>',
					formatDate:'<?php echo TTH_DATE_FORMAT;?>'
				})
			}
		});
	});
	$(".ol-bus-not-core").boxes('alert', 'Bạn không được phân quyền với chức năng này.');
</script>