<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
$type = isset($_POST['type']) ? $_POST['type'] : '-no-';
if($account["id"]>0 && $type=='complete') {
	$OK = true;
	$personnel = $account["id"];
	$date = new DateClass();
	$stringObj = new String();
	// ---------
	$id = $_POST['id'] + 0;
	$title = getTableCalendar($id);
	$note = $_POST['note'];
	$current_time = strtotime($date->vnOther(time(), 'Y-m-d H:i'));
	// ---- FILE
	$file_max_size = FILE_MAX_SIZE;
	$u_file = '-no-';
	$dir_dest = ROOT_DIR . DS . 'uploads' . DS . "document" . DS. 'calendar' . DS;
	$file_type = $_FILES['files']['type'];
	$file_name = $_FILES['files']['name'];
	$file_size = $_FILES['files']['size'];
	$file_type = trim(strrchr($file_name, '.'));
	$file_full_name = "tmp_" . time() . $file_type;

	// Upload files.
	if ($OK === true) {
		if (($file_size > 0) && ($file_size <= $file_max_size)) {
			if ($file_type != "unk") {
				if (@move_uploaded_file($_FILES['files']['tmp_name'], $dir_dest . $file_full_name)) {
					$u_file = 'Complete_' . time() . '_' . substr($stringObj->getSlug($title), 0, 120) . $file_type;
					@rename($dir_dest . $file_full_name, $dir_dest . $u_file);
					$OK = true;
				} else $OK = 'Lỗi không thể tải tệp tin lên.';
			} else $OK = 'Sai định dạng tệp - Không thể tải tệp tin lên.';
		} else {
			if ($file_size == 0) $u_file = '-no-';
			else $OK = 'Tệp tin của bạn chọn vượt quá kích thước cho phép.';
		}
	}
	// Insert Database.
	if ($OK === true) {
		$db->table = "calendar";
		$data = array(
				'report_time' => $current_time,
				'report_file' => $db->clearText($u_file),
				'report_note' => $db->clearText($note),
				'report_user' => $personnel,
				'status' => 1,
				'modified_time' => $current_time,
		);
		$db->condition = "calendar_id = " . $id;
		$db->update($data);
		if ($db->AffectedRows > 0) {
			// --- Notify
			$list_privilege = array();
			$db->table = "calendar";
			$db->condition = "`calendar_id` = $id";
			$db->order = "";
			$db->limit = 1;
			$rws = $db->select();
			foreach($rws as $rw) {
				array_push($list_privilege, $rw['supervisor']);
			}
			$db->table = "calendar_user";
			$db->condition = "`calendar` = $id";
			$db->order = "";
			$db->limit = "";
			$rws = $db->select();
			foreach ($rws as $rw) {
				array_push($list_privilege, stripslashes($rw['user_id']));
			}
			insertNotify($id, $list_privilege, $personnel, 4);

			// --- Cập nhật trạng thái hoàn thành cho lần GIA HẠN cuối.
			$extend_id = 0;
			$db->table = "calendar_extend";
			$db->condition = "`status` = 1 AND `calendar` = $id";
			$db->order = "`created_time` DESC";
			$db->limit = 1;
			$rows = $db->select();
			foreach($rows as $row) {
				$extend_id = $row['calendar_extend_id']+0;
			}
			// ---
			$db->table = "calendar_extend";
			$data = array(
					'complete' => 1,
					'modified_time' => $current_time
			);
			$db->condition = "calendar_extend_id = $extend_id";
			$db->update($data);

			$OK = true;
		} else $OK = 'Lỗi hệ thống, không thể cập nhật dữ liệu.';
	}

	$process = false;
	$txt = '';
	if ($OK === true) {
		$process = true;
		$txt = $id;
	} else {
		$process = false;
		$txt = $OK;
	}

	echo json_encode(array("msg_process" => $process, "msg_txt" => $txt));
} elseif($account["id"]>0 && $type=='extend') {
	$OK = false;
	$personnel = $account["id"];
	$date = new DateClass();
	$stringObj = new String();
	// ---------
	$id = $_POST['id'] + 0;
	$title = getTableCalendar($id);
	$note = $_POST['note'];
	$extend_time = strtotime($date->dmYtoYmd($_POST['extend_time']));
	$current_time = strtotime($date->vnOther(time(), 'Y-m-d H:i'));
	// ---- FILE
	$file_max_size = FILE_MAX_SIZE;
	$u_file = '-no-';
	$dir_dest = ROOT_DIR . DS . 'uploads' . DS . "document" . DS. 'calendar' . DS;
	$file_type = $_FILES['files']['type'];
	$file_name = $_FILES['files']['name'];
	$file_size = $_FILES['files']['size'];
	$file_type = trim(strrchr($file_name, '.'));
	$file_full_name = "tmp_" . time() . $file_type;

	// Check time input.
	if($extend_time<$current_time) {
		$OK = 'Thời gian kết thúc công việc không hợp lệ.';
	} else $OK = true;
	// Upload files.
	if ($OK === true) {
		if (($file_size > 0) && ($file_size <= $file_max_size)) {
			if ($file_type != "unk") {
				if (@move_uploaded_file($_FILES['files']['tmp_name'], $dir_dest . $file_full_name)) {
					$u_file = 'Extend_' . time() . '_' . substr($stringObj->getSlug($title), 0, 120) . $file_type;
					@rename($dir_dest . $file_full_name, $dir_dest . $u_file);
					$OK = true;
				} else $OK = 'Lỗi không thể tải tệp tin lên.';
			} else $OK = 'Sai định dạng tệp - Không thể tải tệp tin lên.';
		} else {
			if ($file_size == 0) $u_file = '-no-';
			else $OK = 'Tệp tin của bạn chọn vượt quá kích thước cho phép.';
		}
	}
	// Insert Database.
	if ($OK === true) {
		$db->table = "calendar_extend";
		$data = array(
				'calendar' => $id,
				'propose_time' => $extend_time,
				'file' => $db->clearText($u_file),
				'note' => $db->clearText($note),
				'propose_user' => $personnel,
				'created_time' => $current_time,
		);
		$db->insert($data);
		if($db->LastInsertID>0) {
			// --- Notify
			$list_privilege = array();
			$db->table = "calendar";
			$db->condition = "`calendar_id` = $id";
			$db->order = "";
			$db->limit = 1;
			$rws = $db->select();
			foreach($rws as $rw) {
				array_push($list_privilege, $rw['supervisor']);
			}
			$db->table = "calendar_user";
			$db->condition = "`calendar` = $id";
			$db->order = "";
			$db->limit = "";
			$rws = $db->select();
			foreach ($rws as $rw) {
				array_push($list_privilege, stripslashes($rw['user_id']));
			}
			insertNotify($id, $list_privilege, $personnel, 5);

			$OK = true;
		} else $OK = 'Lỗi hệ thống, không thể cập nhật dữ liệu.';
	}

	$process = false;
	$txt = '';
	if ($OK === true) {
		$process = true;
		$txt = $id;
	} else {
		$process = false;
		$txt = $OK;
	}

	echo json_encode(array("msg_process" => $process, "msg_txt" => $txt));
} else echo json_encode(false);