<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
$date = new DateClass();
$stringObj = new String();

$current_time = strtotime($date->vnOther(time(), 'Y-m-d'));

$start = isset($_POST['start']) ? strtotime($date->vnOther($_POST['start'], 'Y-m-d')) : $current_time;

$end = isset($_POST['end']) ? strtotime($date->vnOther($_POST['end'], 'Y-m-d')) : $current_time;
//

$query      = "";

$ol_agency  = $c_personnel = array();

// $ol_agency  = getAgencyToCore($corePrivilegeSlug['op'], '/statistic_jobs;/');

$c_list = implode(',', $ol_agency);

if(count($c_personnel)>0) {

	$c_calendar = array();
	$c_personnel = implode(',', $c_personnel);
	$db->table = "exhibition";
	$db->condition = "";
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
	$query = "";
    } else $query = "`exhibition_id` = 0";

} else $query = "`exhibition_id` = 0";

 $query .= " AND `created_time` < ($end+86400) AND $start < `date_end`";


// ----

$show_date = '';

//để hiện ra ngày h thống kê or thời gian thống kê

if($start==$end) $show_date = '<label>' . $date->dateTimeOther($start, 'D, d/m/Y') . '</label>';

else $show_date = '(từ) <label>' . $date->dateTimeOther($start, 'D, d/m/Y') . '</label> (đến) <label>' . $date->dateTimeOther($end, 'D, d/m/Y') . '</label>';
//end hiển thị ngày h thống kê

?>

<div class="row">
	<div class="col-md-12">
		<ul class="breadcrumbs-alt">
			<li>
				<a href="/"><?php echo $menu_ol[0];?></a>
			</li>
			<li>
				<a><?php echo $menu_ol[6];?></a>
			</li>
			<li>
				<a class="current"><?php echo $menu_op[6][1];?></a>
			</li>
		</ul>
	</div>
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<div class="row">
			<form id="_from_statistic_exhibition" method="post" onsubmit="return ol_filter('_from_statistic_exhibition', '_statistic_exhibition', 'statistic_jobs');">
				<div class="input-statistic clearfix formxn">

					<input type="text" id="date_start" class="form-control formngayh ncs" name="date_start" placeholder="Từ ngày..." autocomplete="off" data-toggle="tooltip" data-placement="top" title="" data-original-title="Thống kê từ ngày">
					<input type="text" id="date_end" class="form-control formngayh ncs" name="date_end" placeholder="đến ngày..." autocomplete="off" data-toggle="tooltip" data-placement="top" title="" data-original-title="Thống kê đến ngày">
					
				
                     
					<select name="member" class="tech form-control chaclangu" id="tech3" style="float: left;" onchange=" ol_filter1('_from_statistic_exhibition', '_statistic_exhibition', 'statistic_jobs');">

						<option value="0" selected data-image="<?= HOME_URL;?>/images/icon-cus.png">Chọn nhân viên...</span></option>

						<?php 
                            $db->table = "core_user";
							$db->condition = "";
							$db->order = "`user_id` ASC";
							$db->limit = "";
							$rows = $db->select();
							foreach ($rows as $stat):
						?>
						<option value="<?= $stat['user_id'] ?>" data-image="<?= HOME_URL;?>/images/address.png"><?= $stat['full_name'] ?></option>
						<?php endforeach ?>
					</select>	

					<div class="pull-right custumstatis">
						<button type="submit" name="list" class="btn btn-round color-1 material-design nuthemmuc nutin">Thống kê <i class="fa fa-bar-chart-o"></i></button>
						<button type="button" name="export" class="btn btn-round color-1 material-design nuthemmuc saoluudulieu nutin" onclick="return ol_print_export('_from_statistic_exhibition', 'statistic_jobs_export');">Xuất file <i class="fa fa-file-word-o"></i></button>
					</div>

				</div>

			</form>
		</div>
		<div class="panel panel-no-border f-space10">
			<div class="table-responsive" id="_statistic_exhibition">
				<div class="info-panel-top-ol">
					<p>- Lọc đơn hàng theo lịch: <?php echo $show_date;?></p>
				</div>
				<table class="table display table-bordered dwn" cellspacing="0" cellpadding="0" id="dataTablesList">
					<thead>
					<tr>
						<th>STT</th>
						<th>Nhân viên</th>
						<th>Lập đơn</th>
						<th>Thiết kế</th>
						<th>Xuất kẽm</th>
						<th>In</th>
						<th>Đóng gói</th>
					</tr>
					</thead>
					<tbody>

					<?php

					$type = array(
							0 => '<i class="fa fa-users c-manage" data-toggle="tooltip" data-placement="top" title="Công việc được giao"><span class="txt-hd">0</span></i>',
							1 => '<i class="fa fa-user c-personal" data-toggle="tooltip" data-placement="top" title="Công việc cá nhân"><span class="txt-hd">1</span></i>'
					);

					$db->table = "exhibition";
					$db->condition = $query;
					$db->order = "`date_end` DESC";
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
						
							$list_agency = '[Corp.] - TỔNG CÔNG TY';
					
						if(!empty($list_agency)) array_push($list, $list_agency);
						$list = implode('; ', $list);

					
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
									$extcreated_time = $row_ex['propose_time'];
								} elseif($row_ex['status']==1)  {
									$extend = 1;
									$extcreated_time = $row_ex['extcreated_time'];
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
								if($extcreated_time>=$current_time) {
									$status = 3;
								} else {
									$status = 4;
								}
							} else {
								if($row['created_time']>$current_time) {
									$status = 0;
								} elseif($row['created_time']>=$current_time) {
									$warning = getConstant('calendar_warning_endtime')*60;
									if($row['created_time']-$current_time <= $warning) {
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
							<td align="center"><?php echo $date->vnDateTime($row['created_time']);?></td>
							<td align="center"><?php echo $date->vnDateTime($row['created_time']);?></td>
							<td><?php echo $calendar_status[$status];?></td>
							<td align="center"><?php echo $count_extend . '/' . $success_extend;?></td>
						</tr>
					<?php
					}
					?>
					</tbody>
				</table>
				<script>

				$(document).ready(function(e) {
					$("#payments").msDropdown({visibleRows:4});
					$(".tech").msDropdown().data("dd");//{animStyle:'none'} /{animStyle:'slideDown'} {animStyle:'show'}		
					//no use
					try {
						var pages = $("#pages").msDropdown({on:{change:function(data, ui) {
																var val = data.value;
																if(val!="")
																	window.location = val;
															}}}).data("dd");
						var pagename = document.location.pathname.toString();
						pagename = pagename.split("/");
						pages.setIndexByValue(pagename[pagename.length-1]);
						$("#ver").html(msBeautify.version.msDropdown);
					} catch(e) {
						//console.log(e);	
					}
					$("#ver").html(msBeautify.version.msDropdown);
				});

				$(document).ready(function(e) {
					$("#payments").msDropdown({visibleRows:4});
					$(".tech1").msDropdown().data("dd");//{animStyle:'none'} /{animStyle:'slideDown'} {animStyle:'show'}		
					//no use
					try {
						var pages = $("#pages").msDropdown({on:{change:function(data, ui) {
																var val = data.value;
																if(val!="")
																	window.location = val;
															}}}).data("dd");
						var pagename = document.location.pathname.toString();
						pagename = pagename.split("/");
						pages.setIndexByValue(pagename[pagename.length-1]);
						$("#ver").html(msBeautify.version.msDropdown);
					} catch(e) {
						//console.log(e);	
					}
					
					$("#ver").html(msBeautify.version.msDropdown);

				});


				function rowtotal(value){
				    $.ajax({
				    url:'/action.php',
				    type: 'POST',
				    data: 'url=gettotal&value='+value,
				    
				    success: function(data){
				    	$('.coltotal').html(data)
				    	var setval = $(".tech1").msDropdown().data("dd")
				            setval.refresh()
				        $('#tech2_msdd').css('pointer-events','all !important')
	
				       }
				    })

				  }   
              $(document).ready(function() {
              	$('.dd input').addClass('auto-number')
              });

				$(document).ready(function() {
					$('#dataTablesList').dataTable( {
						"language": {
							"url": "/js/data-tables/de_DE.txt",
							"decimal": ",",
							"thousands": "."
						},
						"paging":   true,
						"info":     true,
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