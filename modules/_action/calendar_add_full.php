<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if($account["id"]>0) {
	$OK = false;
	$URL = '';
	$personnel = $account["id"];
	$date = new DateClass();
	$stringObj = new String();
	// ---------
	$title = $_POST['title'];
	$level = $_POST['level'] + 0;
	$to = $_POST['list_to'];
	$to_matches = $_POST['to_matches'] + 0;
	$address = $_POST['address'];
	$supervisor = $_POST['supervisor'];
	$supervisor_matches = $_POST['supervisor_matches'] + 0;
	$note = $_POST['note'];
	$start_time = strtotime($date->dmYtoYmd($_POST['start_time']));
	$end_time = strtotime($date->dmYtoYmd($_POST['end_time']));
	$current_time = strtotime($date->vnOther(time(), 'Y-m-d H:i'));
	// ---- FILE
	$file_max_size  = FILE_MAX_SIZE;
	$u_file         = '-no-';
	$dir_dest       = ROOT_DIR . DS . 'uploads' . DS . "document" . DS . 'calendar' . DS;
	$file_type      = $_FILES['files']['type'];
	$file_name      = $_FILES['files']['name'];
	$file_size      = $_FILES['files']['size'];
	$file_type      = trim(strrchr($file_name, '.'));
	$file_full_name = "tmp_" . time() . $file_type;

	// ---- TO
	$to_personal = $to_role = $to_agency = array();
	$to = explode(',', $to);
	for($i = 0; $i < count($to); $i++) {
		$item = explode(';', $to[$i]);
		if ($item[0] == 'u') array_push($to_personal, $item[1]);
		elseif ($item[0] == 'r') array_push($to_role, $item[1]);
		elseif ($item[0] == 'a') array_push($to_agency, $item[1]);
	}
	// ----
	$d_to_personal = $d_to_role = $d_to_agency = array();
	$d_to_personal = implode(';', $to_personal);
	$d_to_role = implode(';', $to_role);
	$d_to_agency = implode(';', $to_agency);
	// ----
	if(count($to_role) > 0) {
		$to_role = implode(',', $to_role);
		$db->table = "role_user";
		$db->condition = "`role` IN ($to_role)";
		$db->order = "";
		$db->limit = "";
		$rows = $db->select();
		if ($db->RowCount > 0) {
			foreach ($rows as $row) {
				$db->table = "core_user";
				$db->condition = "`is_active` = 1 AND `is_show` = 1 AND `user_id` = " . $row['user'];
				$db->order = "`sort` ASC";
				$db->limit = "";
				$db->select();
				if($db->RowCount>0) {
					array_push($to_personal, $row['user']);
				}
			}
		}
	}
	if(count($to_agency) > 0) {
		$list_agency = '';
		for($i=0; $i<count($to_agency); $i++) {
			if($i==0) $list_agency .= getAgencyElementPlus($to_agency[$i]);
			else $list_agency .= ',' . getAgencyElementPlus($to_agency[$i]);
		}
		$db->table = "core_user";
		$db->condition = "`is_active` = 1 AND `is_show` = 1 AND `agency` IN ($list_agency)";
		$db->order = "`sort` ASC";
		$db->limit = "";
		$rows = $db->select();
		if($db->RowCount > 0) {
			foreach($rows as $row) {
				array_push($to_personal, $row['user_id']);
			}
		}
	}
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
	if($start_time<$current_time || $end_time<$current_time || $end_time<$start_time) {
		$OK = 'Thời gian Bắt đầu & Kết thúc công việc không hợp lệ.';
	} else $OK = true;
	// Upload files.
	if($OK===true) {
		if (($file_size > 0) && ($file_size <= $file_max_size)) {
			if ($file_type != "unk") {
				if (@move_uploaded_file($_FILES['files']['tmp_name'], $dir_dest . $file_full_name)) {
					$u_file = 'Manage_' . time() . '_' . substr($stringObj->getSlug($title), 0, 120) . $file_type;
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
				'title'=>$db->clearText($title),
				'level'=>$level,
				'to_personal'=>$d_to_personal,
				'to_role'=>$d_to_role,
				'to_agency'=>$d_to_agency,
				'to_matches'=>$to_matches,
				'address'=>$db->clearText($address),
				'start_time'=>$start_time,
				'end_time'=>$end_time,
				'supervisor'=>$supervisor,
				'supervisor_matches'=>$supervisor_matches,
				'file'=>$db->clearText($u_file),
				'note'=>$db->clearText($note),
				'created_time'=>$current_time,
				'modified_time'=>$current_time,
				'user_id'=>$personnel
		);
		$db->insert($data);
		$id = $db->LastInsertID;
		// ----
		$to_personal = array_keys(array_flip($to_personal));
		for($i=0; $i<count($to_personal); $i++) {
			if(!empty($to_personal[$i])) {
				$db->table = "calendar_user";
				$data = array(
						'calendar' => $id,
						'user_id' => $to_personal[$i]
				);
				$db->insert($data);
			}
		}
		if($db->LastInsertID>0) {
			$OK = true;
			$URL = HOME_URL_LANG . "/?ol=calendar&op=calendar_tracking&start=$start_time&end=$end_time";
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
	echo json_encode( array( "msg_process" => $process, "msg_txt" => $txt ) );

} else echo json_encode(false);