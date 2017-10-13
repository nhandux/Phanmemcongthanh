<?php
// -- Bảng phân quyền :)
$corePrivilegeSlug = array();
$corePrivilegeSlug = corePrivilegeSlug($account["id"]);

$date = new DateClass();
$personnel = $account["id"];
$list = array();
$current_time = strtotime($date->vnOther(time(), 'Y-m-d H:i'));
$id = $_POST['id']+0;
$db->table = "calendar";
$db->condition = "`calendar_id` = $id";
$db->order = "";
$db->limit = 1;
$rows = $db->select();
foreach($rows as $row) {
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
		$list_agency = '';
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

	$icon = array(
			0 => '<i class="fa fa-users" data-toggle="tooltip" data-placement="top" title="Công việc được giao"></i> &nbsp;',
			1 => '<i class="fa fa-user" data-toggle="tooltip" data-placement="top" title="Công việc cá nhân"></i> &nbsp;'
	);

	// Danh sách User được tương tác.
	/*$list_privilege = array();
	$db->table = "calendar_user";
	$db->condition = "`calendar` = $id";
	$db->order = "";
	$db->limit = "";
	$rws = $db->select();
	foreach ($rws as $rw) {
		array_push($list_privilege, stripslashes($rw['user_id']));
	}
	array_push($list_privilege, $row['supervisor']);

	$status = $extend = -1;
	$count_extend = $count_extend_s = $extend_time  = $extend_id = 0;

	// Trạng thái gia hạn.
	$db->table = "calendar_extend";
	$db->condition = "`calendar` = $id";
	$db->order = "";
	$db->limit = "";
	$db->select();
	$count_extend = $db->RowCount;
	//---
	$db->table = "calendar_extend";
	$db->condition = "`calendar` = $id";
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
	}*/
	// Trạng thái công việc.
/*if($row['disable']==1) {
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
	}*/
	?>
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header <?php if($row['type']==1) echo ' personal';?>" style="background-color:#007f3d">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel"><i class="fa fa-history"></i>Thông báo</h4>
			</div>
			<div class="modal-body">
				<div class="form-responsive">
					<div class="item-1">
						<?=html_entity_decode($row['content']);?>
					</div>
					
				</div>
			</div>
			<div class="modal-footer">
			<button class="btn btn-round color-1 material-design   btn-nhan" id="guichuthich" type="button" name="login_admin" data-color="#004740" onclick="goBack()"><i class="fa fa-file-text-o" ></i> <span>Quay lại</span></button>
			</div>
		</div>
		<script>

		function savescreen(){
	       window.location = "/?ol=calendar&op=calendar_list"
        }
        function editcreen(){
	       window.location = "/?ol=calendar&op=calendar_tracking"
        }

			$(function(){
				$('.file').fileinput();
				$(".modal-footer .btn-success").click(function(){
					$(".item-1").slideUp();
					$(".item-3").slideUp();
					$(".item-2").slideDown();
				});
				$(".item-2 .item-btn>.btn-default").click(function(){
					$(".item-2").slideUp();
					$(".item-3").slideUp();
					$(".item-1").slideDown();
				});
				$(".modal-footer .btn-info").click(function(){
					$(".item-1").slideUp();
					$(".item-2").slideUp();
					$(".item-3").slideDown();
				});
				$(".item-3 .item-btn>.btn-default").click(function(){
					$(".item-3").slideUp();
					$(".item-2").slideUp();
					$(".item-1").slideDown();
				});
			});
		</script>
	</div>
	<?php
}