<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if($account["id"]>0) {
	$type       = isset($_POST['type']) ? $_POST['type'] : '';
	if($type=='load') {
		$user = $account["id"];
		$page = isset($_POST['page']) ? $_POST['page'] + 0 : 0;
		// ---------
		$db->table = "notify_user";
		$db->condition = "`user_id` = $user";
		$db->order = "`notify` DESC";
		$db->limit = $page * 10 . ', ' . 10;
		$rows = $db->select();
		if ($db->RowCount > 0) {
			foreach ($rows as $row) {
				$agent = array();
				$message = $status = $btn_sm = '';
				$created_time = 0;

				$db->table = "notify";
				$db->condition = "`notify_id` = " . $row['notify'];
				$db->order = "";
				$db->limit = 1;
				$rws = $db->select();
				foreach ($rws as $rw) {
					$agent = getInfoUser($rw["user_id"]);
					$created_time = $rw["created_time"];
					$message = $notify_type[$rw["type"]] . ': ' . getTableCalendar($rw["calendar"]);
				}
				if($row['status']==0) {
					$status = ' class="new"';
					$btn_sm = '<i class="fa fa-eye" onclick="return marked_notify($(this), ' . $row['notify'] . ');" data-toggle="tooltip" data-placement="top" title="Chưa xem" rel="1"></i>';
				} else {
					$status = '';
					$btn_sm = '<i class="fa fa-eye-slash" onclick="return marked_notify($(this), ' . $row['notify'] . ');" data-toggle="tooltip" data-placement="top" title="Đã xem" rel="0"></i>';
				}
				echo '<li><a' . $status . ' href="javascript:;" onclick="return open_notify($(this), ' . $row['notify'] . ');"><span class="photo">' . $agent[4] . '</span><span class="subject"><span class="from">' . $agent[0] . '</span><span class="time">' . convertTimeAgo($created_time) . '</span></span><span class="message">' . $message . '</span>' . $btn_sm . '</a></li>';
			}
		}

	} elseif($type=='open') {
		$id             = isset($_POST['id']) ? $_POST['id'] + 0 : 0;
		$user           = $account["id"];
		$date           = new DateClass();
		$calendar       = 0;
		$current_time   = strtotime($date->vnOther(time(), 'Y-m-d H:i'));

		$db->table = "notify_user";
		$data = array(
				'status'=>1,
				'modified_time'=>$current_time,
		);
		$db->condition = "`notify` = $id AND `user_id` = $user";
		$db->update($data);

		$db->table = "notify";
		$db->condition = "`notify_id` = $id";
		$db->order = "";
		$db->limit = 1;
		$rws = $db->select();
		foreach($rws as $rw) {
			$calendar = $rw["calendar"];
		}
		echo $calendar;

	} elseif($type=='marked') {
		$id             = isset($_POST['id']) ? $_POST['id'] + 0 : 0;
		$status         = isset($_POST['status']) ? $_POST['status'] + 0 : 0;
		$user           = $account["id"];
		$date           = new DateClass();
		$current_time   = strtotime($date->vnOther(time(), 'Y-m-d H:i'));

		$db->table = "notify_user";
		$data = array(
				'status'=>$status,
				'modified_time'=>$current_time,
		);
		$db->condition = "`notify` = $id AND `user_id` = $user";
		$db->update($data);
		echo $db->AffectedRows;
	} elseif($type=='header') {
		$user = $account["id"];
		$db->table = "notify_user";
		$db->condition = "`status` = 0 AND `user_id` = $user";
		$db->order = "";
		$db->limit = "";
		$db->select();
		$notify_new = $db->RowCount;

		echo '<a data-toggle="dropdown" class="dropdown-toggle" href="javascript:;"><i class="fa fa-bell"></i>';
		if($notify_new>0) echo '<span class="badge bg-important">' . $notify_new .  '</span>';
		echo '</a>';
		$db->table = "notify_user";
		$db->condition = "`user_id` = $user";
		$db->order = "`notify` DESC";
		$db->limit = 10;
		$rows = $db->select();
		if($db->RowCount>0) {
			echo '<div class="dropdown-menu extended inbox"><ul class="list-notify">';
			foreach($rows as $row) {
				$agent = array();
				$message = $status = $btn_sm = '';
				$created_time = 0;

				$db->table = "notify";
				$db->condition = "`notify_id` = " . $row['notify'];
				$db->order = "";
				$db->limit = 1;
				$rws = $db->select();
				foreach($rws as $rw) {
					$agent = getInfoUser($rw["user_id"]);
					$created_time = $rw["created_time"];
					$message = $notify_type[$rw["type"]] . ': ' . getTableCalendar($rw["calendar"]);
				}
				if($row['status']==0) {
					$status = ' class="new"';
					$btn_sm = '<i class="fa fa-eye" onclick="return marked_notify($(this), ' . $row['notify'] . ');" data-toggle="tooltip" data-placement="top" title="Chưa xem" rel="1"></i>';
				} else {
					$status = '';
					$btn_sm = '<i class="fa fa-eye-slash" onclick="return marked_notify($(this), ' . $row['notify'] . ');" data-toggle="tooltip" data-placement="top" title="Đã xem" rel="0"></i>';
				}
				echo '<li><a' . $status . ' href="javascript:;" onclick="return open_notify($(this), ' . $row['notify'] . ');"><span class="photo">' . $agent[4] . '</span><span class="subject"><span class="from">' . $agent[0] . '</span><span class="time">' . convertTimeAgo($created_time) . '</span></span><span class="message">'. $message . '</span></a>' . $btn_sm . '</li>';
			}
			echo '</ul></div>';
		}
	} elseif($type=='pop') {
		$result = $info_user    = array();
		$user                   = $account["id"];
		$info_user              = getInfoUser($account["id"]);
		if (empty($HTTP_X_FORWARDED_FOR)) $v_ip = getenv("REMOTE_ADDR");
		else $v_ip              = $HTTP_X_FORWARDED_FOR;
		$v_session              = md5(session_id());
		$v_agent                = getenv("HTTP_USER_AGENT");
		$date                   = new DateClass();
		$current_time           = strtotime($date->vnOther(time(), 'Y-m-d H:i'));
		$total                  = 0;

		if($info_user[13]==1) {
			$db->table = "notify_user";
			$db->condition = "`status` = 0 AND `user_id` = $user";
			$db->order = "";
			$db->limit = "";
			$rows = $db->select();
			foreach ($rows as $row) {
				$db->table = "notify_logs";
				$db->condition = "`notify_user` = " . $row['notify_user_id'] . " AND `session` = '$v_session'";
				$db->order = "";
				$db->limit = 1;
				$db->select();
				if ($db->RowCount == 0 && $total<3) {
					$message = $icon = '';
					$calendar = 0;

					$db->table = "notify";
					$db->condition = "`notify_id` = " . $row['notify'];
					$db->order = "";
					$db->limit = 1;
					$rws = $db->select();
					foreach ($rws as $rw) {
						$agent = getInfoUser($rw["user_id"]);
						$calendar = $rw["calendar"];
						$message = '[' . $agent[0] . '] ' . $notify_type[$rw["type"]] . ': ' . getTableCalendar($calendar);
						$icon = $agent[11];
					}

					$db->table = "notify_logs";
					$data = array(
							'notify_user' => $row['notify_user_id'],
							'ip' => $db->clearText($v_ip),
							'session' => $db->clearText($v_session),
							'agent' => $db->clearText($v_agent),
							'modified_time' => $current_time
					);
					$db->insert($data);

					array_push($result, array('title' => "NDN - THỜI KHÓA BIỂU", 'tag' => $row['notify'], 'body' => $message, 'icon' => $icon));
					$total++;
				}
			}
		}
		echo json_encode($result);
	}
} else echo '-Error-';