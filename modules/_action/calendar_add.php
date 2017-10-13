<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if($account["id"]>0) {
	$OK                     = false;
	$URL = '';
	$personnel              = $account["id"];
	$date                   = new DateClass();
	$stringObj              = new String();
	// ---------
	$title                  = $_POST['title'];
	$level                  = $_POST['level']+0;
	$address                = $_POST['address'];
	$note                   = $_POST['note'];
	$status                 = isset($_POST['status']) ? $_POST['status']+0 : 0;
	$start_time             = strtotime($date->dmYtoYmd($_POST['start_time']));
	$end_time               = strtotime($date->dmYtoYmd($_POST['end_time']));
	$current_time           = strtotime($date->vnOther(time(), 'Y-m-d H:i'));
	// ---- FILE
	$file_max_size          = FILE_MAX_SIZE;
	$u_file                 = '-no-';
	$dir_dest               = ROOT_DIR . DS . 'uploads' . DS . "document" . DS . 'calendar' . DS;
	$file_type              = $_FILES['files']['type'];
	$file_name              = $_FILES['files']['name'];
	$file_size              = $_FILES['files']['size'];
	$file_type              = trim(strrchr($file_name,'.'));
	$file_full_name         = "tmp_".time().$file_type;

	// Insert jobs name NEW ---
	$count = 0;
	$db->table = "jobs_name";
	$db->condition = "`title` LIKE '$title'";
	$db->order = "`sort` ASC";
	$db->limit = 1;
	$db->select();
	if($db->RowCount==0) {
		$db->table = "jobs_name";
		$db->condition = "";
		$db->order = "";
		$db->limit = "";
		$db->select();
		$count = $db->RowCount;
		//-----
		$slug = $stringObj->getSlug($title);
		$db->table = "jobs_name";
		$data = array(
				'title'=>$db->clearText($title),
				'slug'=>$db->clearText($slug),
				'sort'=>($count+1),
				'created_time'=>time(),
				'modified_time'=>time(),
				'user_id'=>$personnel
		);
		$db->insert($data);
	}

	// Insert jobs address NEW ---
	$count = 0;
	$db->table = "jobs_address";
	$db->condition = "`title` LIKE '$address'";
	$db->order = "`sort` ASC";
	$db->limit = 1;
	$db->select();
	if($db->RowCount==0) {
		$db->table = "jobs_address";
		$db->condition = "";
		$db->order = "";
		$db->limit = "";
		$db->select();
		$count = $db->RowCount;
		//-----
		$slug = $stringObj->getSlug($address);
		$db->table = "jobs_address";
		$data = array(
				'title'=>$db->clearText($address),
				'slug'=>$db->clearText($slug),
				'sort'=>($count+1),
				'created_time'=>time(),
				'modified_time'=>time(),
				'user_id'=>$personnel
		);
		$db->insert($data);
	}

	// Check time input.
	if($end_time<$start_time) {
		$OK = 'Thời gian Bắt đầu & Kết thúc công việc không hợp lệ.';
	} else $OK = true;
	// Upload files.
	if($OK===true) {
		if (($file_size > 0) && ($file_size <= $file_max_size)) {
			if ($file_type != "unk") {
				if (@move_uploaded_file($_FILES['files']['tmp_name'], $dir_dest . $file_full_name)) {
					$u_file = 'Personal_' . time() . '_' . substr($stringObj->getSlug($title), 0, 120) . $file_type;
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
	if($OK===true) {
		$db->table = "calendar";
		$data = array(
			'type'=>1,
			'title'=>$db->clearText($title),
			'level'=>$level,
			'to_personal'=>$personnel,
			'address'=>$db->clearText($address),
			'start_time'=>$start_time,
			'end_time'=>$end_time,
			'file'=>$db->clearText($u_file),
			'note'=>$db->clearText($note),
			'status'=>$status,
			'created_time'=>$current_time,
			'modified_time'=>$current_time,
			'user_id'=>$personnel
		);
		$db->insert($data);
		$id = $db->LastInsertID;
		// ----
		insertNotify($id, array(), $personnel, 8);
		// ----
		$db->table = "calendar_user";
		$data = array(
				'calendar'=>$id,
				'user_id'=>$personnel
		);
		$db->insert($data);
		if($db->LastInsertID>0) {
			$OK = true;
			$URL = "/";
		} else $OK = 'Lỗi hệ thống, không thể thêm công việc.';
	}

	$process = false; $txt = '';
	if($OK===true) {
		$process = true;
		$txt = $URL;
	} else {
		$process = false;
		$txt = $OK;
	}

	echo json_encode(array("msg_process" => $process, "msg_txt" => $txt));

} else echo json_encode(false);