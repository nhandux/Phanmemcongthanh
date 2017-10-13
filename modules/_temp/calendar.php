<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
function calendar($act, $typeFunc, $calendar_id, $title, $level, array $to_personal, array $to_role, array $to_agency, $to_matches, $address, $start_time, $end_time, $supervisor, $supervisor_matches, $file, $note, $error) {
	global $db, $link_ol,  $link_op, $corePrivilegeSlug;
	$ol_agency = $list_title = $list_level = $list_address = array();

	$ol_agency = getAgencyToCore($corePrivilegeSlug['op'], '/calendar_add;/');

	// --- Gợi ý Tên công việc.
	$db->table = "jobs_name";
	$db->condition = "`is_active` = 1 AND `title` NOT LIKE '%\"%'";
	$db->order = "sort ASC";
	$db->limit = "";
	$rows = $db->select('title');
	if($db->RowCount > 0) {
		$i = 0;
		foreach($rows as $row) {
			$list_title[$i] = stripslashes($row['title']);
			$i++;
		}
	}
	$list_title = implode('&quot;,&quot;', $list_title);
	$list_title = '&quot;' . $list_title . '&quot;';

	// --- Chọn Mức độ.
	$db->table = "level";
	$db->condition = "`is_active` = 1";
	$db->order = "sort ASC";
	$db->limit = "";
	$rows = $db->select();
	if($db->RowCount > 0) {
		$i = 0;
		foreach($rows as $row) {
			$selected = '';
			if($row['level_id']==$level) $selected = 'selected';
			$list_level[$i] = '<option value="' . $row['level_id'] . '" ' . $selected . ' data-content="<span class=\'lb-level ' . stripslashes($row['class']) . '\'>' . stripslashes($row['title']) . '</span>">' . stripslashes($row['title']) . '</option>';
			$i++;
		}
	}

	// --- Gợi ý Địa chỉ.
	$db->table = "jobs_address";
	$db->condition = "`is_active` = 1";
	$db->order = "sort ASC";
	$db->limit = "";
	$rows = $db->select('title');
	if($db->RowCount > 0) {
		$i = 0;
		foreach($rows as $row) {
			$list_address[$i] = stripslashes($row['title']);
			$i++;
		}
	}
	$list_address = implode('&quot;,&quot;', $list_address);
	$list_address = '&quot;' . $list_address . '&quot;';

	// --- Người nhận là Nhân viên.
	$query_user = '';
	if(count($ol_agency)>0) {
		$list_core = implode(',', $ol_agency);
		$query_user = " AND `agency` IN ($list_core)";
	}
	$list_to = $list_supervisor = '';
	$db->table = "core_user";
	$db->condition = "`is_active` = 1 AND `is_show` = 1" . $query_user;
	$db->order = "`sort` ASC";
	$db->limit = "";
	$rows = $db->select();
	if($db->RowCount > 0) {
		$list_to .= '<optgroup label="Nhân viên">';
		foreach($rows as $row) {
			$selected = '';
			if(in_array($row['user_id'],$to_personal)) $selected = 'selected';
			$list_to .= '<option value="u;' . $row['user_id'] . '" ' . $selected . '>' . stripslashes($row['full_name']) . '</option>';
			$selected = '';
			if($row['user_id']==$supervisor) $selected = 'selected';
			$list_supervisor .= '<option value="' . $row['user_id'] . '" ' . $selected . '>' . stripslashes($row['full_name']) . '</option>';
		}
		$list_to .= '</optgroup>';
	}
	// --- Người nhận là Nhóm.
	$query_role = '';
	if(count($ol_agency)>0) {
		$list_core = implode(',', $ol_agency);
		$query_role = " AND `agency` IN ($list_core)";
	}
	$to_role = array_filter($to_role);
	$db->table = "core_role";
	$db->condition = "`is_active` = 1 AND `is_show` = 1" . $query_role;
	$db->order = "`role_id` ASC";
	$db->limit = "";
	$rows = $db->select();
	if($db->RowCount > 0) {
		$list_to .= '<optgroup label="Nhóm nhân viên">';
		foreach($rows as $row) {
			$selected = '';
			if(in_array($row['role_id'],$to_role)) $selected = 'selected';
			$list_to .= '<option value="r;' . $row['role_id'] . '" ' . $selected . '>' . stripslashes($row['name']) . '</option>';
		}
		$list_to .= '</optgroup>';
	}
	// --- Người nhận là Đơn vị.
	$to_agency = array_filter($to_agency);
	$selected = $disabled = '';
	if(in_array(0,$to_agency)) $selected = 'selected';
	if(!in_array(0, $ol_agency)) $disabled = ' disabled';
	$list_to .= '<optgroup label="Đơn vị công ty">';
	$list_to .= '<option value="a;0" ' . $selected . $disabled . '>[Corp.] - TỔNG CÔNG TY</option>';
	$list_to .= loadCalendarAgencySelect($db, 0, 0, $to_agency, $ol_agency);
	$list_to .= '</optgroup>';

	// --- Chọn Điểm.
	$list_matches = $list_supervisor_matches = '';
	$db->table = "matches";
	$db->condition = "`is_active` = 1";
	$db->order = "`sort` ASC";
	$db->limit = "";
	$rows = $db->select();
	if($db->RowCount > 0) {
		foreach($rows as $row) {
			$selected = '';
			if($row['number']==$to_matches) $selected = 'selected';
			$list_matches .= '<option value="' . $row['number'] . '" ' . $selected . '>' . $row['number'] . '</option>';
			$selected = '';
			if($row['number']==$supervisor_matches) $selected = 'selected';
			$list_supervisor_matches .= '<option value="' . $row['number'] . '" ' . $selected . '>' . $row['number'] . '</option>';
		}
	}
	?>
	<form action="<?php echo $act?>" method="post" enctype="multipart/form-data">
		<input type="hidden" name="typeFunc" value="<?php echo $typeFunc?>" />
		<input type="hidden" name="calendar_id" value="<?php echo $calendar_id?>" />
		<input type="hidden" name="file" value="<?php echo $file?>" />
		<div class="panel-show-error">
			<?php echo $error?>
		</div>
		<table class="table table-no-border table-ol-3w table-hover">
			<tr>
				<td width="125px"><label class="form-lb-tp">Tên công việc:</label></td>
				<td colspan="3"><input class="form-control" type="text" name="title" maxlength="250" data-provide="typeahead" data-items="8" data-source="[<?php echo $list_title;?>]" placeholder="Nhập công việc (ĐỀ NGHỊ VIẾT NGẮN GỌN)..." value="<?php echo stripslashes($title);?>" autocomplete="off"></td>
			</tr>
			<tr>
				<td><label class="form-lb-tp">Mức độ ưu tiên:</label></td>
				<td colspan="3">
					<label style="max-width: 140px; width: 100%;">
						<select class="selectpicker" name="level">
							<?php
							for($i=0; $i<count($list_level); $i++) {
								echo $list_level[$i];
							}
							?>
						</select>
					</label>
				</td>
			</tr>
			<tr>
				<td width="125px"><label class="form-lb-tp">Người nhận:</label></td>
				<td>
					<div style="max-width: 360px;">
						<select name="to[]" class="selectpicker" multiple data-live-search="true" data-selected-text-format="count" data-live-search-placeholder="Tìm..." title="Chọn nhân viên...">
							<?php echo $list_to;?>
						</select>
					</div>
				</td>
				<td width="110px" align="right"><label class="form-lb-tp">Thưởng/Phạt:</label></td>
				<td width="100px">
					<select name="to_matches" class="selectpicker" data-live-search="true" data-live-search-placeholder="Tìm..." title="Điểm...">
						<?php echo $list_matches;?>
					</select>
				</td>
			</tr>
			<tr>
				<td><label class="form-lb-tp">Địa điểm:</label></td>
				<td colspan="3"><input class="form-control" type="text" name="address" maxlength="250" data-provide="typeahead" data-items="8" data-source="[<?php echo $list_address;?>]" placeholder="Nhập nơi làm việc..." value="<?php echo stripslashes($address);?>" autocomplete="off"></td>
			</tr>
			<tr>
				<td><label class="form-lb-tp">Bắt đầu:</label></td>
				<td colspan="3"><input style="max-width: 140px;" class="form-control" id="time_start" type="text" name="start_time" value="<?php echo $start_time;?>" maxlength="16" required="required" autocomplete="off"></td>
			</tr>
			<tr>
				<td><label class="form-lb-tp">Kết thúc:</label></td>
				<td colspan="3"><input style="max-width: 140px;" class="form-control" id="time_end" type="text" name="end_time" value="<?php echo $end_time;?>" maxlength="16" required="required" <?php if($typeFunc=='edit') echo 'readonly';?> autocomplete="off"></td>
			</tr>
			<tr>
				<td><label class="form-lb-tp">Giám sát:</label></td>
				<td>
					<div style="max-width: 360px;">
						<select name="supervisor" class="selectpicker" data-live-search="true" data-live-search-placeholder="Tìm..." title="Chọn nhân viên...">
							<?php echo $list_supervisor;?>
						</select>
					</div>
				</td>
				<td align="right"><label class="form-lb-tp">Thưởng/Phạt:</label></td>
				<td>
					<select name="supervisor_matches" class="selectpicker" data-live-search="true" data-live-search-placeholder="Tìm..." title="Điểm...">
						<?php echo $list_supervisor_matches;?>
					</select>
				</td>
			</tr>
			<tr>
				<td><label class="form-lb-tp">Têp đính kèm:</label></td>
				<td colspan="3"><input style="width: 100%;" class="form-control file" type="file" name="files" data-show-upload="false" data-show-preview="false" data-max-file-count="1" placeholder="Chọn file đính kèm..." value="<?php echo $file;?>"></td>
			</tr>
			<tr>
				<td class="ver-top"><label class="form-lb-tp">Ghi chú:</label></td>
				<td colspan="3">
					<textarea class="form-control" name="note" rows="5"><?php echo stripslashes($note);?></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="4" class="form-ol-btn-tzc">
					<input type="submit" name="add" class="btn btn-primary" value="Lưu lại"> &nbsp;
					<input type="reset" class="btn btn-warning" value="Nhập lại"> &nbsp;
					<button type="button" class="btn btn-danger" onclick="location.href='<?php echo TTH_PATH_LK . $link_ol[2] . TTH_PATH_OP_LK . $link_op[2][2];?>'">Thoát</button>
				</td>
			</tr>
		</table>
	</form>
	<?php if($typeFunc=='add') { ?>
	<script>
	jQuery(function(){
		$('#time_start').datetimepicker({
			format:'d/m/Y H:i',
			lang:'vi',
			onShow:function( ct ){
				this.setOptions({
					minDate:'+01/01/1970',
					maxDate:$('#time_end').val()?$('#time_end').val():false,
					format:'d/m/Y H:i',
					formatDate:'d/m/Y H:i'
				})
			}
		});
		$('#time_end').datetimepicker({
			format:'d/m/Y H:i',
			lang:'vi',
			onShow:function( ct ){
				this.setOptions({
					minDate:$('#time_start').val()?$('#time_start').val():'+01/01/1970',
					maxDate:false,
					format:'d/m/Y H:i',
					formatDate:'d/m/Y H:i'
				})
			}
		});
	});
	</script>
	<?php } else { ?>
	<script>
		jQuery(function(){
			$('#time_start').datetimepicker({
				format:'d/m/Y H:i',
				lang:'vi',
				onShow:function( ct ){
					this.setOptions({
						minDate: false,
						maxDate:$('#time_end').val()?$('#time_end').val():false,
						format:'d/m/Y H:i',
						formatDate:'d/m/Y H:i'
					})
				}
			});
		});
		$('.file').fileinput({
			<?php if($file !='' && $file !='-no-') echo 'initialPreview: ["' . $file . '"]'; ?>
		});
	</script>
	<?php } ?>
<?php
}