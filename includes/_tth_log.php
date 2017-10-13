<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
/* Count login of USER. */
$date = new DateClass();
$time = $date->vnOther(time(), 'Y-m-d');
$session = md5(session_id());
$user = $account["id"];
$sum = 0;

if($user>0) {
	$db->table = "log";
	$db->condition = "`user_id` = '$user' AND `date` = '$time'";
	$db->order = "";
	$db->limit = "";
	$rows = $db->select();
	if ($db->RowCount > 0) {
		foreach ($rows as $row) {
			$sum = $row['count'];
			if ($row['session'] != $session) {
				$db->table = "log";
				$data = array(
						'count'=>($sum + 1),
						'session'=>$session
				);
				$db->condition = "`log_id` = " . ($row['log_id'] + 0);
				$db->update($data);
			}
		}
	} else {
		$db->table = "log";
		$data = array(
				'user_id'=>$user,
				'date'=>$time,
				'count'=>1,
				'session'=>$session,
				'modified_time'=>time()
		);
		$db->insert($data);
	}
}