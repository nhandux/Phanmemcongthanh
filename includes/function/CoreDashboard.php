<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//

/** Trạng thái phân quyền chung cho từng loại | Loại phân quyền có tác động cao nhất.
 * @param $role_id
 * @param $slug
 * @return string
 * @throws DatabaseConnException
 */
function showStatusCoreOl($role_id, $slug) {
	global $db;
	$db->table = "core_privilege";
	$db->condition = "`type` = 'ol' and `role_id` = ".$role_id. " and `privilege_slug` = '" . $slug . "'";
	$db->order = "";
	$db->limit = 1;
	$db->select();
	if($db->RowCount>0) {
		return '<div class="btn-event-open" data-toggle="tooltip" data-placement="top" title="Đóng" onclick="edit_core_ol($(this), ' . $role_id . ', \'' . $slug . '\');" rel="0">1</div>';
	} else {
		return '<div class="btn-event-close" data-toggle="tooltip" data-placement="top" title="Mở" onclick="edit_core_ol($(this), ' . $role_id . ', \'' . $slug . '\');" rel="1">0</div>';
	}
}

/** Phân quyền chi tiết: Văn thư.
 * @param $role_id
 * @throws DatabaseConnException
 */
function showCoreDocument($role_id) {
	global $db;

	$privilege = array();
	$db->table = "core_privilege";
	$db->condition = "`role_id` = ".$role_id. " and `type` = 'document'";
	$db->order = "";
	$db->limit = "";
	$rows = $db->select();
	$stt = 0;
	foreach ($rows as $row) {
		$privilege[$stt] = $row['privilege_slug'];
		$stt++;
	}
	?>
	<input type="hidden" name="role_id" value="<?=$role_id?>" />
	<div class="form-group clearfix">
		<div class="col-left-ol">
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('document_add', $privilege)) echo "checked"; ?> value="document_add" > <b>Thêm mới đơn hàng</b>
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('document_design', $privilege)) echo "checked"; ?> value="document_design" > <b> Nhập liệu đơn hàng </b>
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('document_list', $privilege)) echo "checked"; ?> value="document_list" > <b>Danh sách đơn hàng </b>
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('document_finished', $privilege)) echo "checked"; ?> value="document_finished" > <b>Xem danh sách đơn hàng hoàn thành </b>
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('document;edit', $privilege)) echo "checked"; ?> value="document;edit" ><b> Chỉnh sửa đơn hàng</b>
				</label>
			</div>

			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('document_edit', $privilege)) echo "checked"; ?> value="document_edit" ><b> In đơn hàng</b>
				</label>
			</div>

			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('document_view', $privilege)) echo "checked"; ?> value="document_view" > <b>Chi tiết đơn hàng</b>
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('document;note', $privilege)) echo "checked"; ?> value="document;note" > <b>Thêm chú thích</b>
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('document;history', $privilege)) echo "checked"; ?> value="document;history" > <b>Xem lịch sử đơn hàng đơn hàng</b>
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('document;email', $privilege)) echo "checked"; ?> value="document;email" > <b>Xác nhận email</b>
				</label>
			</div>
			


		</div>
		<div class="col-left-ol">
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('document;delete', $privilege)) echo "checked"; ?> value="document;delete" ><b> Xóa đơn hàng</b>
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('document;trip', $privilege)) echo "checked"; ?> value="document;trip" > <b>Theo dõi thanh toán</b>
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('document;status', $privilege)) echo "checked"; ?> value="document;status" > <b>Chuyển trạng thai</b>
				</label>
			</div>
				<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('document;user', $privilege)) echo "checked"; ?> value="document;user" > <b>Chuyển người dùng</b>
				</label>
			</div>


		</div>

	</div>
	<label><button type="submit" class="btn btn-round color-1 material-design themmoiphieu sotunhien"><i class="fa fa-check-circle-o" aria-hidden="true"></i> Xác nhận</button></label>
<?php
}

/** Phân quyền chi tiết: Lịch công việc.
 * @param $role_id
 * @throws DatabaseConnException
 */
function showCoreCalendar($role_id) {
	global $db;

	$privilege = array();
	$db->table = "core_privilege";
	$db->condition = "`role_id` = ".$role_id. " and `type` = 'calendar'";
	$db->order = "";
	$db->limit = "";
	$rows = $db->select();
	$stt = 0;
	foreach ($rows as $row) {
		$privilege[$stt] = $row['privilege_slug'];
		$stt++;
	}
	?>

<?php
}

/** Phân quyền chi tiết: Thống kê.
 * @param $role_id
 * @throws DatabaseConnException
 */
function showCoreStatistic($role_id) {
	global $db;

	$privilege = array();
	$db->table = "core_privilege";
	$db->condition = "`role_id` = ".$role_id. " and `type` = 'statistic'";
	$db->order = "";
	$db->limit = "";
	$rows = $db->select();
	$stt = 0;
	foreach ($rows as $row) {
		$privilege[$stt] = $row['privilege_slug'];
		$stt++;
	}
	?>
	<input type="hidden" name="role_id" value="<?=$role_id?>" />
	<div class="form-group clearfix">
		<div class="col-left-ol">
		<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('statistic_jobs', $privilege)) echo "checked"; ?> value="statistic_jobs"><b> Thống kê công việc</b>
				</label>
			</div>

			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('statistic_jobs_export1', $privilege)) echo "checked"; ?> value="statistic_jobs_export1"><b> Xuất MS Office công việc</b>
				</label>
			</div>


			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('statistic_exhibition', $privilege)) echo "checked"; ?> value="statistic_exhibition" ><b> Thống kê đơn hàng</b>
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('statistic_jobs_export', $privilege)) echo "checked"; ?> value="statistic_jobs_export"><b> Xuất MS Office đơn hàng</b>
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('statistic_chart', $privilege)) echo "checked"; ?> value="statistic_chart"><b> Xem biểu đồ thống kê</b>
				</label>
			</div>	
			
		</div>
	</div>
	<label><button type="submit" class="btn btn-round color-1 material-design themmoiphieu sotunhien"><i class="fa fa-check-circle-o" aria-hidden="true"></i> Xác nhận</button></label>
<?php
}

/** Phân quyền chi tiết: Quản lý chung.
 * @param $role_id
 * @throws DatabaseConnException
 */
function showCoreGeneral($role_id) {
	global $db;

	$privilege = array();
	$db->table = "core_privilege";
	$db->condition = "`role_id` = ".$role_id. " and `type` = 'general'";
	$db->order = "";
	$db->limit = "";
	$rows = $db->select();
	$stt = 0;
	foreach ($rows as $row) {
		$privilege[$stt] = $row['privilege_slug'];
		$stt++;
	}
	?>
	<input type="hidden" name="role_id" value="<?=$role_id?>" />
	<div class="form-group clearfix">
		<div class="col-left-ol">
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('general_level', $privilege)) echo "checked"; ?> value="general_level" > <b>Khách hàng</b>
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('general_level_add', $privilege)) echo "checked"; ?> value="general_level_add"> Thêm mức độ
				</label>
			</div>
			<!-- <div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('general_level_edit', $privilege)) echo "checked"; ?> value="general_level_edit"> Chỉnh sửa mức độ
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('general_level;delete', $privilege)) echo "checked"; ?> value="general_level;delete"> Xóa mức độ
				</label>
			</div>
		</div>
		<div class="col-left-ol">
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('general_warning', $privilege)) echo "checked"; ?> value="general_warning"> <b>Cảnh báo cận lịch</b>
				</label>
			</div>
		</div>
		<div class="col-left-ol">
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('general_matches', $privilege)) echo "checked"; ?> value="general_matches" > <b>Thang điểm thưởng/phạt</b>
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('general_matches_add', $privilege)) echo "checked"; ?> value="general_matches_add"> Thêm điểm
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('general_matches_edit', $privilege)) echo "checked"; ?> value="general_matches_edit"> Chỉnh sửa điểm
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('general_matches;delete', $privilege)) echo "checked"; ?> value="general_matches;delete"> Xóa điểm
				</label>
			</div>
		</div>
		<div class="col-left-ol">
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('general_jobs_name', $privilege)) echo "checked"; ?> value="general_jobs_name" > <b>Tên công việc</b>
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('general_jobs_name_add', $privilege)) echo "checked"; ?> value="general_jobs_name_add"> Thêm công việc
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('general_jobs_name_edit', $privilege)) echo "checked"; ?> value="general_jobs_name_edit"> Chỉnh sửa công việc
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('general_jobs_name;delete', $privilege)) echo "checked"; ?> value="general_jobs_name;delete"> Xóa công việc
				</label>
			</div>
		</div>
		<div class="col-left-ol">
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('general_jobs_address', $privilege)) echo "checked"; ?> value="general_jobs_address" > <b>Địa điểm làm việc</b>
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('general_jobs_address_add', $privilege)) echo "checked"; ?> value="general_jobs_address_add"> Thêm địa điểm
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('general_jobs_address_edit', $privilege)) echo "checked"; ?> value="general_jobs_address_edit"> Chỉnh sửa địa điểm
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('general_jobs_address;delete', $privilege)) echo "checked"; ?> value="general_jobs_address;delete"> Xóa địa điểm
				</label>
			</div>
		</div>
		<div class="col-left-ol">
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('general_document_type', $privilege)) echo "checked"; ?> value="general_document_type" > <b>Loại văn bản</b>
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('general_document_type_add', $privilege)) echo "checked"; ?> value="general_document_type_add"> Thêm loại văn bản
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('general_document_type_edit', $privilege)) echo "checked"; ?> value="general_document_type_edit"> Chỉnh sửa loại văn bản
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('general_document_type;delete', $privilege)) echo "checked"; ?> value="general_document_type;delete"> Xóa loại văn bản
				</label>
			</div> -->
		</div>
	</div>
	<label><button type="submit" class="btn btn-round color-1 material-design themmoiphieu sotunhien"><i class="fa fa-check-circle-o" aria-hidden="true"></i> Xác nhận </button></label>
<?php
}

/** Phân quyền chi tiết: Cấu hình hệ thống.
 * @param $role_id
 * @throws DatabaseConnException
 */
function showCoreConfig($role_id) {
	global $db;

	$privilege = array();
	$db->table = "core_privilege";
	$db->condition = "`role_id` = ".$role_id. " and `type` = 'config'";
	$db->order = "";
	$db->limit = "";
	$rows = $db->select();
	$stt = 0;
	foreach ($rows as $row) {
		$privilege[$stt] = $row['privilege_slug'];
		$stt++;
	}
	?>
	<input type="hidden" name="role_id" value="<?=$role_id?>" />
	<div class="form-group clearfix">
		<div class="col-left-ol">
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('config_general', $privilege)) echo "checked"; ?> value="config_general" > <b>Thông tin chung</b>
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('config_datetime', $privilege)) echo "checked"; ?> value="config_datetime" > <b>Thời gian</b>
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('config_mail', $privilege)) echo "checked"; ?> value="config_mail" > <b>Thư điện tử</b>
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('config_plugins', $privilege)) echo "checked"; ?> value="config_plugins" > <b>Trình cắm bổ sung</b>
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('config_social_network', $privilege)) echo "checked"; ?> value="config_social_network" > <b>Mạng xã hội</b>
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('config_upload', $privilege)) echo "checked"; ?> value="config_upload" > <b>Tệp tin tải lên</b>
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('plugin_page', $privilege)) echo "checked"; ?> value="plugin_page" > <b>Phần bổ sung</b>
				</label>
			</div>
		</div>
	</div>
	<label><button type="submit" class="btn btn-round color-1 material-design themmoiphieu sotunhien"><i class="fa fa-check-circle-o" aria-hidden="true"></i> Xác nhận </button></label>
<?php
}

/** Phân quyền chi tiết: Quản trị hệ thống.
 * @param $role_id
 * @throws DatabaseConnException
 */
function showCoreCore($role_id) {
	global $db;

	$privilege = array();
	$db->table = "core_privilege";
	$db->condition = "`role_id` = ".$role_id. " and `type` = 'core'";
	$db->order = "";
	$db->limit = "";
	$rows = $db->select();
	$stt = 0;
	foreach ($rows as $row) {
		$privilege[$stt] = $row['privilege_slug'];
		$stt++;
	}
	?>
	<input type="hidden" name="role_id" value="<?=$role_id?>" />
	<div class="form-group clearfix">
		<div class="col-left-ol">
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('core_user', $privilege)) echo "checked"; ?> value="core_user" > <b>Quản lý người dùng</b>
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('core_user_add', $privilege)) echo "checked"; ?> value="core_user_add"> Thêm thành viên
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('core_user_edit', $privilege)) echo "checked"; ?> value="core_user_edit"> Chỉnh sửa thành viên
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('core_user;delete', $privilege)) echo "checked"; ?> value="core_user;delete"> Xóa thành viên
				</label>
			</div>
		</div>
		<div class="col-left-ol">
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('core_role', $privilege)) echo "checked"; ?> value="core_role" > <b>Nhóm quản trị</b>
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('core_role_add', $privilege)) echo "checked"; ?> value="core_role_add"> Thêm nhóm
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('core_role_edit', $privilege)) echo "checked"; ?> value="core_role_edit"> Chỉnh sửa nhóm
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('core_role;delete', $privilege)) echo "checked"; ?> value="core_role;delete"> Xóa nhóm
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('core_dashboard', $privilege)) echo "checked"; ?> value="core_dashboard"> Phân quyền quản trị
				</label>
			</div>
		</div>
		<div class="col-left-ol">
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('core_agency', $privilege)) echo "checked"; ?> value="core_agency" > <b>Quản lý đơn vị</b>
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('core_agency_add', $privilege)) echo "checked"; ?> value="core_agency_add"> Thêm đơn vị
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('core_agency_edit', $privilege)) echo "checked"; ?> value="core_agency_edit"> Chỉnh sửa đơn vị
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('core_agency;delete', $privilege)) echo "checked"; ?> value="core_agency;delete"> Xóa đơn vị
				</label>
			</div>
		</div>
	</div>
	<label><button type="submit" class="btn btn-round color-1 material-design themmoiphieu sotunhien"><i class="fa fa-check-circle-o" aria-hidden="true"></i> Xác nhận</button></label>
<?php
}

/** Phân quyền chi tiết: Cơ sở dữ liệu.
 * @param $role_id
 * @throws DatabaseConnException
 */
function showCoreBackup($role_id) {
	global $db;

	$privilege = array();
	$db->table = "core_privilege";
	$db->condition = "`role_id` = ".$role_id. " and `type` = 'backup'";
	$db->order = "";
	$db->limit = "";
	$rows = $db->select();
	$stt = 0;
	foreach ($rows as $row) {
		$privilege[$stt] = $row['privilege_slug'];
		$stt++;
	}
	?>
	<input type="hidden" name="role_id" value="<?=$role_id?>" />
	<div class="form-group clearfix">
		<div class="col-left-ol">
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('backup_process', $privilege)) echo "checked"; ?> value="backup_process" > <b>Tiến trình sao lưu</b>
				</label>
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" name="variable[]" <?php if(in_array('backup_config', $privilege)) echo "checked"; ?> value="backup_config" > <b>Cấu hình sao lưu</b>
				</label>
			</div>
		</div>
	</div>
	<label><button type="submit" class="btn btn-round color-1 material-design themmoiphieu sotunhien"><i class="fa fa-check-circle-o" aria-hidden="true"></i> Xác nhận</button></label>
<?php
}