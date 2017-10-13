<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if(isset($_POST['list'])) {
	$date               = new DateClass();
	$current_time       = strtotime($date->vnOther(time(), 'Y-m-d H:i'));
	$idDel              = (isset($_POST['idDel'])) ? $_POST['idDel'] : 0;

	// Thực hiện xóa lịch...
	for($i=0; $i<count($idDel); $i++) {
		$id = $idDel[$i];
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
		insertNotify($id, $list_privilege, $account["id"], 3);

		$db->table = "calendar";
		$data = array(
				'disable'=>1,
		);
		$db->condition = "`calendar_id` = $id";
		$db->update($data);
	}
	// -- Bảng phân quyền :)
	$corePrivilegeSlug  = array();
	$corePrivilegeSlug  = corePrivilegeSlug($account["id"]);
	$date_start         = (empty($_POST['date_start'])) ? 0 : strtotime($date->dmYtoYmd($_POST['date_start']));
	$date_end           = (empty($_POST['date_end'])) ? 0 : strtotime($date->dmYtoYmd($_POST['date_end']));
	$agency             = isset($_POST['agency']) ? ($_POST['agency']+0) : 0;
	$role               = isset($_POST['role']) ? ($_POST['role']+0) : 0;
	$member             = isset($_POST['member']) ? ($_POST['member']+0) : 0;
	$filter             = isset($_POST['filter']) ? ($_POST['filter']+0) : 0;
	$query              = $show_date = "";

	// <--- Phân quyền cấp cho xem lịch cho số nhân viên này.
	$c_query = "";
	$c_personnel = $c_core = array();
	$c_core = getAgencyToCore($corePrivilegeSlug['op'], '/calendar_tracking;/');
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

	if($date_start==0 && $date_end==0) {
		$date_qr = strtotime($date->vnOther(time(), 'Y-m-d'));
		$query .= "`start_time` < ($date_qr+86400) AND  $date_qr < `end_time`";
		$show_date = '<label>' . $date->dateTimeOther($date_qr, 'D, d/m/Y') . '</label>';
	} elseif($date_start!=0 && $date_end == 0) {
		$date_qr = $date_start;
		$query .= "`start_time` < ($date_qr+86400) AND  $date_qr < `end_time`";
		$show_date = '<label>' . $date->dateTimeOther($date_qr, 'D, d/m/Y') . '</label>';
	} elseif($date_start==0 && $date_end != 0) {
		$date_qr = $date_end;
		$query .= "`start_time` < ($date_qr+86400) AND  $date_qr < `end_time`";
		$show_date = '<label>' . $date->dateTimeOther($date_qr, 'D, d/m/Y') . '</label>';
	} else {
		$query .= "`start_time` < ($date_end+86400)  AND $date_start < `end_time`";
		$show_date = '(từ) <label>' . $date->dateTimeOther($date_start, 'D, d/m/Y') . '</label> (đến) <label>' . $date->dateTimeOther($date_end, 'D, d/m/Y') . '</label>';
	}

	$calendar       = $events = array();
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
			} else $query .= " AND `calendar_id` = 0";

		} else $query .= " AND `calendar_id` = 0";
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
			} else $query .= " AND `calendar_id` = 0";

		} else $query .= " AND `calendar_id` = 0";
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
		} else $query .= " AND `calendar_id` = 0";
	}

	$calendar = array_keys(array_flip($calendar));
	if(count($calendar)>0) {
		$calendar = implode(',', $calendar);
		$query .= " AND `calendar_id` IN ($calendar)";
	}
	?>
	<div class="info-panel-top-ol">
		<p>- Lọc công việc theo lịch: <?php echo $show_date;?></p>
	</div>
	<table class="table display table-bordered" cellspacing="0" cellpadding="0" id="dataTablesList">
		<thead>
		<tr>
			<th>STT</th>
			<th width="15%">Người nhận</th>
			<th width="30%">Tên công việc</th>
			<th>Loại</th>
			<th>Bắt đầu</th>
			<th>Kết thúc</th>
			<th>Ưu tiên</th>
			<th>Trạng thái</th>
			<th>Chức năng</th>
		</tr>
		</thead>
		<tbody>
		<?php
		$type = array(
				0 => '<i class="fa fa-users c-manage" data-toggle="tooltip" data-placement="top" title="Công việc được giao"><span class="txt-hd">0</span></i>',
				1 => '<i class="fa fa-user c-personal" data-toggle="tooltip" data-placement="top" title="Công việc cá nhân"><span class="txt-hd">1</span></i>'
		);

		if($query=='') $query = $c_query;
		else $query = $c_query . " AND " .$query;
		$query = "`disable` = 0 AND " . $query;

		$db->table = "calendar";
		$db->condition = $query;
		$db->order = "`modified_time` DESC";
		$db->limit = "";
		$rows = $db->select();
		$i = 0;
		foreach($rows as $row) {
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

			$id = $row['calendar_id'];

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
			}
			// Trạng thái công việc.
			if($row['disable']==1) {
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
			}
			if($filter==0) {
				$i++;
				?>
				<tr>
					<td align="center"><?php echo $i ?></td>
					<td><?php echo $list ?></td>
					<td><?php echo stripslashes($row['title']); ?></td>
					<td align="center"><?php echo $type[$row['type']]; ?></td>
					<td align="center"><?php echo $date->vnDate($row['start_time']); ?></td>
					<td align="center"><?php echo $date->vnDate($row['end_time']); ?></td>
					<td align="center"><span class="lb-level txt-hd <?php echo getTableLevel($row['level']); ?>"><?php echo $row['level']; ?></span>
					</td>
					<td><?php echo $calendar_status[$status];?></td>
					<td class="details-control" align="center">
						<?php
						if(in_array("calendar_edit", $corePrivilegeSlug['op']))
							echo '<a href="' . TTH_PATH_LK . 'calendar' . TTH_PATH_OP_LK . 'calendar_edit&id=' . $row['calendar_id'] . '" class="btn btn-pink btn-xs" data-toggle="tooltip" data-placement="left" title="Chỉnh sửa"><i class="fa fa-cog"></i></a>&nbsp;';
						else
							echo '<a href="javascript:;" class="btn btn-pink btn-xs ol-alert-core" data-toggle="tooltip" data-placement="left" title="Chỉnh sửa"><i class="fa fa-cog"></i></a>&nbsp;';
						if(in_array("calendar;eye", $corePrivilegeSlug['op']))
							echo '<button type="button" class="btn btn-danger btn-xs" data-toggle="tooltip" data-placement="right" title="Xem lịch" onclick="return open_calendar(\'manage\', ' . $row['calendar_id'] . ');"><i class="fa fa-eye"></i></button> &nbsp;';
						else
							echo '<button type="button" class="btn btn-danger btn-xs ol-alert-core" data-toggle="tooltip" data-placement="right" title="Xem lịch"><i class="fa fa-eye"></i></button> &nbsp;';
						?>
						<label class="checkbox-inline">
							<input type="checkbox" data-toggle="tooltip" data-placement="top" title="Xóa"
							       class="ol-checkbox-js" name="idDel[]" value="<?php echo $id ?>">
						</label>
					</td>
				</tr>
				<?php
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
					$i++;
					?>
					<tr>
						<td align="center"><?php echo $i ?></td>
						<td><?php echo $list ?></td>
						<td><?php echo stripslashes($row['title']); ?></td>
						<td align="center"><?php echo $type[$row['type']]; ?></td>
						<td align="center"><?php echo $date->vnDate($row['start_time']); ?></td>
						<td align="center"><?php echo $date->vnDate($row['end_time']); ?></td>
						<td align="center"><span class="lb-level txt-hd <?php echo getTableLevel($row['level']); ?>"><?php echo $row['level']; ?></span>
						</td>
						<td><?php echo $calendar_status[$status];?></td>
						<td class="details-control" align="center">
							<?php
							if(in_array("calendar_edit", $corePrivilegeSlug['op']))
								echo '<a href="' . TTH_PATH_LK . 'calendar' . TTH_PATH_OP_LK . 'calendar_edit&id=' . $row['calendar_id'] . '" class="btn btn-pink btn-xs" data-toggle="tooltip" data-placement="left" title="Chỉnh sửa"><i class="fa fa-cog"></i></a>&nbsp;';
							else
								echo '<a href="javascript:;" class="btn btn-pink btn-xs ol-alert-core" data-toggle="tooltip" data-placement="left" title="Chỉnh sửa"><i class="fa fa-cog"></i></a>&nbsp;';
							if(in_array("calendar;eye", $corePrivilegeSlug['op']))
								echo '<button type="button" class="btn btn-danger btn-xs" data-toggle="tooltip" data-placement="right" title="Xem lịch" onclick="return open_calendar(\'manage\', ' . $row['calendar_id'] . ');"><i class="fa fa-eye"></i></button> &nbsp;';
							else
								echo '<button type="button" class="btn btn-danger btn-xs ol-alert-core" data-toggle="tooltip" data-placement="right" title="Xem lịch"><i class="fa fa-eye"></i></button> &nbsp;';
							?>
							<label class="checkbox-inline">
								<input type="checkbox" data-toggle="tooltip" data-placement="top" title="Xóa"
								       class="ol-checkbox-js" name="idDel[]" value="<?php echo $id ?>">
							</label>
						</td>
					</tr>
					<?php
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
					$i++;
					?>
					<tr>
						<td align="center"><?php echo $i ?></td>
						<td><?php echo $list ?></td>
						<td><?php echo stripslashes($row['title']); ?></td>
						<td align="center"><?php echo $type[$row['type']]; ?></td>
						<td align="center"><?php echo $date->vnDate($row['start_time']); ?></td>
						<td align="center"><?php echo $date->vnDate($row['end_time']); ?></td>
						<td align="center"><span class="lb-level txt-hd <?php echo getTableLevel($row['level']); ?>"><?php echo $row['level']; ?></span>
						</td>
						<td><?php echo $calendar_status[$status];?></td>
						<td class="details-control" align="center">
							<?php
							if(in_array("calendar_edit", $corePrivilegeSlug['op']))
								echo '<a href="' . TTH_PATH_LK . 'calendar' . TTH_PATH_OP_LK . 'calendar_edit&id=' . $row['calendar_id'] . '" class="btn btn-pink btn-xs" data-toggle="tooltip" data-placement="left" title="Chỉnh sửa"><i class="fa fa-cog"></i></a>&nbsp;';
							else
								echo '<a href="javascript:;" class="btn btn-pink btn-xs ol-alert-core" data-toggle="tooltip" data-placement="left" title="Chỉnh sửa"><i class="fa fa-cog"></i></a>&nbsp;';
							if(in_array("calendar;eye", $corePrivilegeSlug['op']))
								echo '<button type="button" class="btn btn-danger btn-xs" data-toggle="tooltip" data-placement="right" title="Xem lịch" onclick="return open_calendar(\'manage\', ' . $row['calendar_id'] . ');"><i class="fa fa-eye"></i></button> &nbsp;';
							else
								echo '<button type="button" class="btn btn-danger btn-xs ol-alert-core" data-toggle="tooltip" data-placement="right" title="Xem lịch"><i class="fa fa-eye"></i></button> &nbsp;';
							?>
							<label class="checkbox-inline">
								<input type="checkbox" data-toggle="tooltip" data-placement="top" title="Xóa"
								       class="ol-checkbox-js" name="idDel[]" value="<?php echo $id ?>">
							</label>
						</td>
					</tr>
					<?php
				}
			} elseif($filter==3) {
				// -- Xem lịch trạng thái GIA HẠN
				$db->table = "calendar_extend";
				$db->condition = "`calendar` = $id";
				$db->order = "`created_time` DESC";
				$db->limit = 1;
				$db->select();
				if($db->RowCount>0 && $row['status']==0) {
					$i++;
					?>
					<tr>
						<td align="center"><?php echo $i ?></td>
						<td><?php echo $list ?></td>
						<td><?php echo stripslashes($row['title']); ?></td>
						<td align="center"><?php echo $type[$row['type']]; ?></td>
						<td align="center"><?php echo $date->vnDate($row['start_time']); ?></td>
						<td align="center"><?php echo $date->vnDate($row['end_time']); ?></td>
						<td align="center"><span class="lb-level txt-hd <?php echo getTableLevel($row['level']); ?>"><?php echo $row['level']; ?></span>
						</td>
						<td><?php echo $calendar_status[$status];?></td>
						<td class="details-control" align="center">
							<?php
							if(in_array("calendar_edit", $corePrivilegeSlug['op']))
								echo '<a href="' . TTH_PATH_LK . 'calendar' . TTH_PATH_OP_LK . 'calendar_edit&id=' . $row['calendar_id'] . '" class="btn btn-pink btn-xs" data-toggle="tooltip" data-placement="left" title="Chỉnh sửa"><i class="fa fa-cog"></i></a>&nbsp;';
							else
								echo '<a href="javascript:;" class="btn btn-pink btn-xs ol-alert-core" data-toggle="tooltip" data-placement="left" title="Chỉnh sửa"><i class="fa fa-cog"></i></a>&nbsp;';
							if(in_array("calendar;eye", $corePrivilegeSlug['op']))
								echo '<button type="button" class="btn btn-danger btn-xs" data-toggle="tooltip" data-placement="right" title="Xem lịch" onclick="return open_calendar(\'manage\', ' . $row['calendar_id'] . ');"><i class="fa fa-eye"></i></button> &nbsp;';
							else
								echo '<button type="button" class="btn btn-danger btn-xs ol-alert-core" data-toggle="tooltip" data-placement="right" title="Xem lịch"><i class="fa fa-eye"></i></button> &nbsp;';
							?>
							<label class="checkbox-inline">
								<input type="checkbox" data-toggle="tooltip" data-placement="top" title="Xóa"
								       class="ol-checkbox-js" name="idDel[]" value="<?php echo $id ?>">
							</label>
						</td>
					</tr>
					<?php
				}
			} elseif($filter==4) {
				// -- Xem lịch trạng thái HOÀN THÀNH
				if($row['status']==1) {
					$i++;
					?>
					<tr>
						<td align="center"><?php echo $i ?></td>
						<td><?php echo $list ?></td>
						<td><?php echo stripslashes($row['title']); ?></td>
						<td align="center"><?php echo $type[$row['type']]; ?></td>
						<td align="center"><?php echo $date->vnDate($row['start_time']); ?></td>
						<td align="center"><?php echo $date->vnDate($row['end_time']); ?></td>
						<td align="center"><span class="lb-level txt-hd <?php echo getTableLevel($row['level']); ?>"><?php echo $row['level']; ?></span>
						</td>
						<td><?php echo $calendar_status[$status];?></td>
						<td class="details-control" align="center">
							<?php
							if(in_array("calendar_edit", $corePrivilegeSlug['op']))
								echo '<a href="' . TTH_PATH_LK . 'calendar' . TTH_PATH_OP_LK . 'calendar_edit&id=' . $row['calendar_id'] . '" class="btn btn-pink btn-xs" data-toggle="tooltip" data-placement="left" title="Chỉnh sửa"><i class="fa fa-cog"></i></a>&nbsp;';
							else
								echo '<a href="javascript:;" class="btn btn-pink btn-xs ol-alert-core" data-toggle="tooltip" data-placement="left" title="Chỉnh sửa"><i class="fa fa-cog"></i></a>&nbsp;';
							if(in_array("calendar;eye", $corePrivilegeSlug['op']))
								echo '<button type="button" class="btn btn-danger btn-xs" data-toggle="tooltip" data-placement="right" title="Xem lịch" onclick="return open_calendar(\'manage\', ' . $row['calendar_id'] . ');"><i class="fa fa-eye"></i></button> &nbsp;';
							else
								echo '<button type="button" class="btn btn-danger btn-xs ol-alert-core" data-toggle="tooltip" data-placement="right" title="Xem lịch"><i class="fa fa-eye"></i></button> &nbsp;';
							?>
							<label class="checkbox-inline">
								<input type="checkbox" data-toggle="tooltip" data-placement="top" title="Xóa"
								       class="ol-checkbox-js" name="idDel[]" value="<?php echo $id ?>">
							</label>
						</td>
					</tr>
					<?php
				}
			}
		}
		?>
		</tbody>
	</table>
	<div class="row">
		<div class="col-sm-12" align="right">
			<label class="radio-inline"><input type="checkbox" id="_ol_select_all" data-toggle="tooltip" data-placement="top" title="Chọn xóa tất cả" ></label>
			<input type="button" class="btn btn-primary btn-xs <?php if(in_array("calendar;delete", $corePrivilegeSlug['op'])) echo 'ol-confirm'; else echo "ol-alert-core";?>" value="Xóa" name="delete">
		</div>
	</div>
	<script>
		$(document).ready(function() {
			$('#dataTablesList').dataTable( {
				"language": {
					"url": "/js/data-tables/de_DE.txt",
					"decimal": ",",
					"thousands": "."
				},
				"aoColumnDefs" : [ {
					"bSortable" : false,
					"aTargets" : [8, "no-sort" ]
				} ],
				"paging":   false,
				"info":     false,
				"order": [[ 0, "asc" ]]
			} );
			$('#dataTablesList').find('input[type="checkbox"]').shiftSelectable();
			$('#_ol_select_all').change(function () {
				$("input.ol-checkbox-js").prop('checked', $(this).prop("checked"));
			});
		});
		$(".ol-confirm").click(function() {
			confirm("Tất cả các dữ liệu liên quan sẽ được xóa và không thể phục hồi.\nBạn có muốn thực hiện không?", function() {
				if(this.data == true) return ol_filter('_from_calendar_tracking', '_calendar_tracking', 'calendar_tracking_delete');
			});
		});
		$(".ol-alert-core").boxes('alert', 'Bạn không được phân quyền với chức năng này.');
	</script>
	<?php
}