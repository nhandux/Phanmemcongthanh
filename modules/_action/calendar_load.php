<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
// -- Bảng phân quyền :)
// <--- Phân quyền cấp cho xem lịch cho số nhân viên này.
$c_query = "";
$c_personnel = $c_core = $corePrivilegeSlug = array();
$corePrivilegeSlug = corePrivilegeSlug($account["id"]);
$c_core = getAgencyToCore($corePrivilegeSlug['op'], '/calendar_list;/');
if(count($c_core)>0) {
	$c_list = implode(',', $c_core);
	$db->table = "core_user";
	$db->condition = "`agency` IN ($c_list)";
	$db->order = "`sort` ASC";
	$db->limit = "";
	$rows = $db->select();
	if ($db->RowCount > 0) {
		foreach ($rows as $row) {
			array_push($c_personnel, $row['user_id']);
		}
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
		$c_query = "`calendar_id` IN ($c_calendar)";
	} else $c_query = "`calendar_id` = 0";

} else $c_query = "`calendar_id` = 0";

if(isset($_POST['type'])) {
	$date = new DateClass();
	$type   = $_POST['type'];
	$agency = isset($_POST['agency']) ? ($_POST['agency']+0) : 0;
	$role   = isset($_POST['role']) ? ($_POST['role']+0) : 0;
	$member = isset($_POST['member']) ? ($_POST['member']+0) : 0;
	$filter = isset($_POST['filter']) ? ($_POST['filter']+0) : 0;
	$current_time = strtotime($date->vnOther(time(), 'Y-m-d H:i'));
	if($type == 'personal') {
		$personnel              = $account["id"];
		$date                   = new DateClass();
		$calendar = $events     = array();

		// ----
		$db->table = "calendar_user";
		$db->condition = "`user_id` = $personnel";
		$db->order = "";
		$db->limit = "";
		$rows = $db->select();
		if($db->RowCount>0) {
			foreach($rows as $row) {
				array_push($calendar, $row['calendar']+0);
			}
		}

		$calendar = array_keys(array_flip($calendar));
		if(count($calendar)>0) {
			$calendar = implode(',', $calendar);
			$query = "";
			$db->table = "calendar";
			$db->condition = "`disable` = 0 AND `calendar_id` IN ($calendar) OR `supervisor` = $personnel";
			$db->order = "`start_time` ASC";
			$db->limit = "";
			$rows = $db->select();
			if($db->RowCount>0) {
				foreach($rows as $row) {
					$id = $row['calendar_id'];
					if($filter==0) {
						$e = array();
						$e['id'] = $id;
						$e['title'] = stripslashes($row['title']);
						$e['start'] = $date->vnOther($row['start_time'], 'Y-m-d H:i:s');
						$e['end'] = $date->vnOther($row['end_time'], 'Y-m-d H:i:s');
						if($row['status']==1) $e['color'] = '#9c9c9c';
						else $e['color'] = getColorLevel($row['level']);
						$e['allDay'] = false;
						array_push($events, $e);
					} elseif($filter==1) {
						// -- Xem lịch trạng thái QUÁ HẠN
						$end_time = 0;
						$db->table = "calendar_extend";
						$db->condition = "`status` = 1 AND `calendar` = $id";
						$db->order = "`created_time` DESC";
						$db->limit = 1;
						$rows_ex = $db->select();
						if($db->RowCount>0) {
							foreach($rows_ex as $row_ex) {
								$end_time = $row_ex['extend_time'];
							}
						} else $end_time = $row['end_time'];

						if($end_time<$current_time && $row['status']==0) {
							$e = array();
							$e['id'] = $id;
							$e['title'] = stripslashes($row['title']);
							$e['start'] = $date->vnOther($row['start_time'], 'Y-m-d H:i:s');
							$e['end'] = $date->vnOther($row['end_time'], 'Y-m-d H:i:s');
							if($row['status']==1) $e['color'] = '#9c9c9c';
							else $e['color'] = getColorLevel($row['level']);
							$e['allDay'] = false;
							array_push($events, $e);
						}
					} elseif($filter==2) {
						// -- Xem lịch trạng thái SẮP ĐẾN HẠN
						$end_time = 0;
						$db->table = "calendar_extend";
						$db->condition = "`status` = 1 AND `calendar` = $id";
						$db->order = "`created_time` DESC";
						$db->limit = 1;
						$rows_ex = $db->select();
						if($db->RowCount>0) {
							foreach($rows_ex as $row_ex) {
								$end_time = $row_ex['extend_time'];
							}
						} else $end_time = $row['end_time'];

						$warning = getConstant('calendar_warning_endtime')*60;

						if( ($end_time>=$current_time) && ($row['status']==0) && ($end_time-$current_time<=$warning)) {
							$e = array();
							$e['id'] = $id;
							$e['title'] = stripslashes($row['title']);
							$e['start'] = $date->vnOther($row['start_time'], 'Y-m-d H:i:s');
							$e['end'] = $date->vnOther($row['end_time'], 'Y-m-d H:i:s');
							if($row['status']==1) $e['color'] = '#9c9c9c';
							else $e['color'] = getColorLevel($row['level']);
							$e['allDay'] = false;
							array_push($events, $e);
						}
					} elseif($filter==3) {
						// -- Xem lịch trạng thái GIA HẠN
						$db->table = "calendar_extend";
						$db->condition = "`calendar` = $id";
						$db->order = "`created_time` DESC";
						$db->limit = 1;
						$db->select();
						if($db->RowCount>0) {
							$e = array();
							$e['id'] = $id;
							$e['title'] = stripslashes($row['title']);
							$e['start'] = $date->vnOther($row['start_time'], 'Y-m-d H:i:s');
							$e['end'] = $date->vnOther($row['end_time'], 'Y-m-d H:i:s');
							if($row['status']==1) $e['color'] = '#9c9c9c';
							else $e['color'] = getColorLevel($row['level']);
							$e['allDay'] = false;
							array_push($events, $e);
						}
					} elseif($filter==4) {
						// -- Xem lịch trạng thái HOÀN THÀNH
						if($row['status']==1) {
							$e = array();
							$e['id'] = $id;
							$e['title'] = stripslashes($row['title']);
							$e['start'] = $date->vnOther($row['start_time'], 'Y-m-d H:i:s');
							$e['end'] = $date->vnOther($row['end_time'], 'Y-m-d H:i:s');
							if($row['status']==1) $e['color'] = '#9c9c9c';
							else $e['color'] = getColorLevel($row['level']);
							$e['allDay'] = false;
							array_push($events, $e);
						}
					}
				}
			}
		}
		echo json_encode($events);

	} elseif($type == 'manage') {
		$date           = new DateClass();
		$calendar       = $events = array();
		$query = '';
		if($agency>0) {
			$calendar = $personnel = array();
			$list_agency = '';
			$list_agency = getAgencyElementPlus($agency);
			$db->table = "core_user";
			$db->condition = "`agency` IN ($list_agency)";
			$db->order = "`sort` ASC";
			$db->limit = "";
			$rows = $db->select();
			if($db->RowCount > 0) {
				foreach($rows as $row) {
					array_push($personnel, $row['user_id']);
				}
			}

			$personnel = array_keys(array_flip($personnel));
			if(count($personnel)>0) {
				$personnel = implode(',', $personnel);
				$db->table = "calendar_user";
				$db->condition = "`user_id` IN ($personnel)";
				$db->order = "";
				$db->limit = "";
				$rows = $db->select();
				if($db->RowCount>0) {
					foreach($rows as $row) {
						array_push($calendar, $row['calendar']+0);
					}
				} else $query = "`calendar_id` = 0";

			} else $query = "`calendar_id` = 0";
		}

		if($role>0) {
			$calendar = $personnel = array();
			$db->table = "role_user";
			$db->condition = "`role` = $role";
			$db->order = "";
			$db->limit = "";
			$rows = $db->select();
			if($db->RowCount > 0) {
				foreach($rows as $row) {
					array_push($personnel, $row['user']);
				}
			}

			$personnel = array_keys(array_flip($personnel));
			if(count($personnel)>0) {
				$personnel = implode(',', $personnel);
				$db->table = "calendar_user";
				$db->condition = "`user_id` IN ($personnel)";
				$db->order = "";
				$db->limit = "";
				$rows = $db->select();
				if($db->RowCount>0) {
					foreach($rows as $row) {
						array_push($calendar, $row['calendar']+0);
					}
				} else $query = "`calendar_id` = 0";

			} else $query = "`calendar_id` = 0";
		}

		if($member>0) {
			$calendar = array();
			$db->table = "calendar_user";
			$db->condition = "`user_id` = $member";
			$db->order = "";
			$db->limit = "";
			$rows = $db->select();
			if($db->RowCount>0) {
				foreach($rows as $row) {
					array_push($calendar, $row['calendar']+0);
				}
			} else $query = "`calendar_id` = 0";
		}

		$calendar = array_keys(array_flip($calendar));
		if(count($calendar)>0) {
			$calendar = implode(',', $calendar);
			$query = "`calendar_id` IN ($calendar)";
		}

		if($query=='') $query = $c_query;
		else $query = $c_query . " AND " . $query;
		$query = "`disable` = 0 AND " . $query;

		$db->table = "calendar";
		$db->condition = $query;
		$db->order = "`start_time` ASC";
		$db->limit = "";
		$rows = $db->select();
		if($db->RowCount>0) {
			foreach($rows as $row) {
				$list = $e = array();
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
						$name = array();
						$name = explode(' ', trim(stripslashes($rw['full_name'])));
						if(count($name)>0) $name = $name[count($name)-1];
						else $name = '';
						array_push($list_personal, $name);
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
				//---------------------------
				$id = $row['calendar_id'];
				if($filter==0) {
					$e['id'] = $id;
					$e['title'] = '[' . $list . '] ' . stripslashes($row['title']);
					$e['start'] = $date->vnOther($row['start_time'], 'Y-m-d H:i:s');
					$e['end'] = $date->vnOther($row['end_time'], 'Y-m-d H:i:s');
					if ($row['status'] == 1) $e['color'] = '#9c9c9c';
					else $e['color'] = getColorLevel($row['level']);
					$e['allDay'] = false;
					array_push($events, $e);
				} elseif($filter==1) {
					// -- Xem lịch trạng thái QUÁ HẠN
					$end_time = 0;
					$db->table = "calendar_extend";
					$db->condition = "`status` = 1 AND `calendar` = $id";
					$db->order = "`created_time` DESC";
					$db->limit = 1;
					$rows_ex = $db->select();
					if($db->RowCount>0) {
						foreach($rows_ex as $row_ex) {
							$end_time = $row_ex['extend_time'];
						}
					} else $end_time = $row['end_time'];

					if($end_time<$current_time && $row['status']==0) {
						$e['id'] = $id;
						$e['title'] = '[' . $list . '] ' . stripslashes($row['title']);
						$e['start'] = $date->vnOther($row['start_time'], 'Y-m-d H:i:s');
						$e['end'] = $date->vnOther($row['end_time'], 'Y-m-d H:i:s');
						if ($row['status'] == 1) $e['color'] = '#9c9c9c';
						else $e['color'] = getColorLevel($row['level']);
						$e['allDay'] = false;
						array_push($events, $e);
					}
				} elseif($filter==2) {
					// -- Xem lịch trạng thái SẮP ĐẾN HẠN
					$end_time = 0;
					$db->table = "calendar_extend";
					$db->condition = "`status` = 1 AND `calendar` = $id";
					$db->order = "`created_time` DESC";
					$db->limit = 1;
					$rows_ex = $db->select();
					if($db->RowCount>0) {
						foreach($rows_ex as $row_ex) {
							$end_time = $row_ex['extend_time'];
						}
					} else $end_time = $row['end_time'];

					$warning = getConstant('calendar_warning_endtime')*60;

					if( ($end_time>=$current_time) && ($row['status']==0) && ($end_time-$current_time<=$warning)) {
						$e['id'] = $id;
						$e['title'] = '[' . $list . '] ' . stripslashes($row['title']);
						$e['start'] = $date->vnOther($row['start_time'], 'Y-m-d H:i:s');
						$e['end'] = $date->vnOther($row['end_time'], 'Y-m-d H:i:s');
						if ($row['status'] == 1) $e['color'] = '#9c9c9c';
						else $e['color'] = getColorLevel($row['level']);
						$e['allDay'] = false;
						array_push($events, $e);
					}
				} elseif($filter==3) {
					// -- Xem lịch trạng thái GIA HẠN
					$db->table = "calendar_extend";
					$db->condition = "`calendar` = $id";
					$db->order = "`created_time` DESC";
					$db->limit = 1;
					$db->select();
					if($db->RowCount>0) {
						$e['id'] = $id;
						$e['title'] = '[' . $list . '] ' . stripslashes($row['title']);
						$e['start'] = $date->vnOther($row['start_time'], 'Y-m-d H:i:s');
						$e['end'] = $date->vnOther($row['end_time'], 'Y-m-d H:i:s');
						if ($row['status'] == 1) $e['color'] = '#9c9c9c';
						else $e['color'] = getColorLevel($row['level']);
						$e['allDay'] = false;
						array_push($events, $e);
					}
				} elseif($filter==4) {
					// -- Xem lịch trạng thái HOÀN THÀNH
					if($row['status']==1) {
						$e['id'] = $id;
						$e['title'] = '[' . $list . '] ' . stripslashes($row['title']);
						$e['start'] = $date->vnOther($row['start_time'], 'Y-m-d H:i:s');
						$e['end'] = $date->vnOther($row['end_time'], 'Y-m-d H:i:s');
						if ($row['status'] == 1) $e['color'] = '#9c9c9c';
						else $e['color'] = getColorLevel($row['level']);
						$e['allDay'] = false;
						array_push($events, $e);
					}
				}
			}
		}
		echo json_encode($events);

	} elseif($type == 'agency') {
		$date           = new DateClass();
		$calendar       = $events = array();
		$query = '';
		if($agency>0) {
			$calendar = $personnel = array();
			$list_agency = '';
			$list_agency = getAgencyElementPlus($agency);
			$db->table = "core_user";
			$db->condition = "`agency` IN ($list_agency)";
			$db->order = "`sort` ASC";
			$db->limit = "";
			$rows = $db->select();
			if($db->RowCount > 0) {
				foreach($rows as $row) {
					array_push($personnel, $row['user_id']);
				}
			}

			$personnel = array_keys(array_flip($personnel));
			if(count($personnel)>0) {
				$personnel = implode(',', $personnel);
				$db->table = "calendar_user";
				$db->condition = "`user_id` IN ($personnel)";
				$db->order = "";
				$db->limit = "";
				$rows = $db->select();
				if($db->RowCount>0) {
					foreach($rows as $row) {
						array_push($calendar, $row['calendar']+0);
					}
				} else $query = "`calendar_id` = 0";

			} else $query = "`calendar_id` = 0";
		}

		if($role>0) {
			$calendar = $personnel = array();
			$db->table = "role_user";
			$db->condition = "`role` = $role";
			$db->order = "";
			$db->limit = "";
			$rows = $db->select();
			if($db->RowCount > 0) {
				foreach($rows as $row) {
					array_push($personnel, $row['user']);
				}
			}

			$personnel = array_keys(array_flip($personnel));
			if(count($personnel)>0) {
				$personnel = implode(',', $personnel);
				$db->table = "calendar_user";
				$db->condition = "`user_id` IN ($personnel)";
				$db->order = "";
				$db->limit = "";
				$rows = $db->select();
				if($db->RowCount>0) {
					foreach($rows as $row) {
						array_push($calendar, $row['calendar']+0);
					}
				} else $query = "`calendar_id` = 0";

			} else $query = "`calendar_id` = 0";
		}

		if($member>0) {
			$calendar = array();
			$db->table = "calendar_user";
			$db->condition = "`user_id` = $member";
			$db->order = "";
			$db->limit = "";
			$rows = $db->select();
			if($db->RowCount>0) {
				foreach($rows as $row) {
					array_push($calendar, $row['calendar']+0);
				}
			} else $query = "`calendar_id` = 0";
		}

		$calendar = array_keys(array_flip($calendar));
		if(count($calendar)>0) {
			$calendar = implode(',', $calendar);
			$query = "`calendar_id` IN ($calendar)";
		}

		if($query=='') $query = $c_query;
		else $query = $c_query . " AND " . $query;
		$query = "`disable` = 0 AND " . $query;

		$db->table = "calendar";
		$db->condition = $query;
		$db->order = "`start_time` ASC";
		$db->limit = "";
		$rows = $db->select();
		if($db->RowCount>0) {
			foreach($rows as $row) {
				$list = $e = array();
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
						array_push($list_personal, stripslashes($rw['user_name']));
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
				//---------------------------
				$id = $row['calendar_id'];
				if($filter==0) {
					$e['id'] = $id;
					$e['title'] = stripslashes($row['title']);
					$e['start'] = $date->vnOther($row['start_time'], 'Y-m-d H:i:s');
					$e['end'] = $date->vnOther($row['end_time'], 'Y-m-d H:i:s');
					if ($row['status'] == 1) $e['color'] = '#9c9c9c';
					else $e['color'] = getColorLevel($row['level']);
					$e['allDay'] = false;
					array_push($events, $e);
				} elseif($filter==1) {
					// -- Xem lịch trạng thái QUÁ HẠN
					$end_time = 0;
					$db->table = "calendar_extend";
					$db->condition = "`status` = 1 AND `calendar` = $id";
					$db->order = "`created_time` DESC";
					$db->limit = 1;
					$rows_ex = $db->select();
					if($db->RowCount>0) {
						foreach($rows_ex as $row_ex) {
							$end_time = $row_ex['extend_time'];
						}
					} else $end_time = $row['end_time'];

					if($end_time<$current_time && $row['status']==0) {
						$e['id'] = $id;
						$e['title'] = stripslashes($row['title']);
						$e['start'] = $date->vnOther($row['start_time'], 'Y-m-d H:i:s');
						$e['end'] = $date->vnOther($row['end_time'], 'Y-m-d H:i:s');
						if ($row['status'] == 1) $e['color'] = '#9c9c9c';
						else $e['color'] = getColorLevel($row['level']);
						$e['allDay'] = false;
						array_push($events, $e);
					}
				} elseif($filter==2) {
					// -- Xem lịch trạng thái SẮP ĐẾN HẠN
					$end_time = 0;
					$db->table = "calendar_extend";
					$db->condition = "`status` = 1 AND `calendar` = $id";
					$db->order = "`created_time` DESC";
					$db->limit = 1;
					$rows_ex = $db->select();
					if($db->RowCount>0) {
						foreach($rows_ex as $row_ex) {
							$end_time = $row_ex['extend_time'];
						}
					} else $end_time = $row['end_time'];

					$warning = getConstant('calendar_warning_endtime')*60;

					if( ($end_time>=$current_time) && ($row['status']==0) && ($end_time-$current_time<=$warning)) {
						$e['id'] = $id;
						$e['title'] = stripslashes($row['title']);
						$e['start'] = $date->vnOther($row['start_time'], 'Y-m-d H:i:s');
						$e['end'] = $date->vnOther($row['end_time'], 'Y-m-d H:i:s');
						if ($row['status'] == 1) $e['color'] = '#9c9c9c';
						else $e['color'] = getColorLevel($row['level']);
						$e['allDay'] = false;
						array_push($events, $e);
					}
				} elseif($filter==3) {
					// -- Xem lịch trạng thái GIA HẠN
					$db->table = "calendar_extend";
					$db->condition = "`calendar` = $id";
					$db->order = "`created_time` DESC";
					$db->limit = 1;
					$db->select();
					if($db->RowCount>0) {
						$e['id'] = $id;
						$e['title'] = stripslashes($row['title']);
						$e['start'] = $date->vnOther($row['start_time'], 'Y-m-d H:i:s');
						$e['end'] = $date->vnOther($row['end_time'], 'Y-m-d H:i:s');
						if ($row['status'] == 1) $e['color'] = '#9c9c9c';
						else $e['color'] = getColorLevel($row['level']);
						$e['allDay'] = false;
						array_push($events, $e);
					}
				} elseif($filter==4) {
					// -- Xem lịch trạng thái HOÀN THÀNH
					if($row['status']==1) {
						$e['id'] = $id;
						$e['title'] = stripslashes($row['title']);
						$e['start'] = $date->vnOther($row['start_time'], 'Y-m-d H:i:s');
						$e['end'] = $date->vnOther($row['end_time'], 'Y-m-d H:i:s');
						if ($row['status'] == 1) $e['color'] = '#9c9c9c';
						else $e['color'] = getColorLevel($row['level']);
						$e['allDay'] = false;
						array_push($events, $e);
					}
				}
			}
		}
		echo json_encode($events);

	} else echo json_encode(false);
} else echo json_encode(false);