<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
$date = new DateClass();
$stringObj = new String();
$current_time = strtotime($date->vnOther(time(), 'Y-m-d'));
$start = isset($_GET['start']) ? strtotime($date->vnOther($_GET['start'], 'Y-m-d')) : $current_time;
$end = isset($_GET['end']) ? strtotime($date->vnOther($_GET['end'], 'Y-m-d')) : $current_time;
//
$ol_agency  = $c_personnel = array();
$ol_agency  = getAgencyToCore($corePrivilegeSlug['op'], '/statistic_matches;/');

$query_cal = " AND `disable` = 0 AND `start_time` < ($end+86400) AND $start < `end_time`";
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
				<a class="current"><?php echo $menu_op[3][1];?></a>
			</li>
		</ul>
	</div>
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<div class="row">
			<form id="_from_statistic_matches"  method="post" onsubmit="return ol_filter('_from_statistic_matches', '_statistic_matches', 'statistic_matches');">
				<div class="input-statistic">
					<input type="text" id="date_start" class="form-control" name="date_start" placeholder="Từ ngày..." autocomplete="off">
					<input type="text" id="date_end" class="form-control" name="date_end" placeholder="đến ngày..." autocomplete="off">
					<!-- <?php echo loadSelectAgencySelect('return change_agency_cal(this.value, \'statistic_matches\');', 0, $ol_agency);?>
					<?php echo loadSelectRoleSelect('return change_role_cal(this.value, \'statistic_matches\');', 0, $ol_agency);?>
					<?php echo loadSelectMember('return load_calendar(0);', 0, $ol_agency);?> -->
					<div class="pull-right">
						<button type="submit" name="list" class="btn btn-primary btn-sm btn-round">Thống kê <i class="fa fa-bar-chart-o"></i></button>
						<button type="button" name="export" class="btn btn-success btn-sm btn-round" onclick="return ol_print_export('_from_statistic_matches', 'statistic_matches_export');">Xuất file <i class="fa fa-file-word-o"></i></button>
					</div>
				</div>
			</form>
		</div>
		<div class="panel panel-no-border f-space10">
			<div class="table-responsive" id="_statistic_matches">
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
					$c_list = implode(',', $ol_agency);
					$db->table = "core_user";
					$db->condition = "`is_show` = 1 AND `agency` IN ($c_list)";
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