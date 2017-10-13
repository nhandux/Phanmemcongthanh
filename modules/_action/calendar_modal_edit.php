<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if(isset($_POST['id'])) {
	$id = $_POST['id']+0;
	$db->table = "calendar";
	$db->condition = "`calendar_id` = $id";
	$db->order = "";
	$db->limit = 1;
	$rows = $db->select();
	foreach($rows as $row) {
		$date = new DateClass();

		$list_title = $list_level = $list_address = array();
		$db->table = "jobs_name";
		$db->condition = "is_active = 1";
		$db->order = "sort ASC";
		$db->limit = "";
		$rows_it = $db->select('title');
		if ($db->RowCount > 0) {
			$i = 0;
			foreach ($rows_it as $row_it) {
				$list_title[$i] = stripslashes($row_it['title']);
				$i++;
			}
		}
		$list_title = implode('&quot;,&quot;', $list_title);
		$list_title = '&quot;' . $list_title . '&quot;';
		//--------------------
		$db->table = "level";
		$db->condition = "is_active = 1";
		$db->order = "sort ASC";
		$db->limit = "";
		$rows_it = $db->select();
		if ($db->RowCount > 0) {
			$i = 0;
			foreach ($rows_it as $row_it) {
				$selected = '';
				if($row_it['level_id']==$row['level']) $selected = 'selected';
				$list_level[$i] = '<option value="' . $row_it['level_id'] . '" ' . $selected . ' data-content="<span class=\'lb-level ' . stripslashes($row_it['class']) . '\'>' . stripslashes($row_it['title']) . '</span>">' . stripslashes($row_it['title']) . '</option>';
				$i++;
			}
		}
		//--------------------
		$db->table = "jobs_address";
		$db->condition = "is_active = 1";
		$db->order = "sort ASC";
		$db->limit = "";
		$rows_it = $db->select('title');
		if ($db->RowCount > 0) {
			$i = 0;
			foreach ($rows_it as $row_it) {
				$list_address[$i] = stripslashes($row_it['title']);
				$i++;
			}
		}
		$list_address = implode('&quot;,&quot;', $list_address);
		$list_address = '&quot;' . $list_address . '&quot;';

		$file = '';
		if(file_exists(ROOT_DIR  . DS . 'uploads' . DS . 'document' . DS . 'calendar' . DS . $row['file']) && ($row['file']!='')) $file = $row['file'];
		?>
		<div class="modal-dialog">
			<form id="_form_calendar" method="post" onsubmit="return add_calendar('_form_calendar', 'calendar_edit');" enctype="multipart/form-data">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel"><i class="fa fa-calendar"></i> &nbsp;Chỉnh sửa công việc</h4>
					</div>
					<div class="modal-body">
						<div class="form-responsive">
							<input type="hidden" name="id" value="<?php echo $row['calendar_id'];?>">
							<table class="table table-no-border table-ol-3w table-hover" style="max-width: 450px;">
								<tr>
									<td width="120px"><label class="form-lb-tp">Tên công việc:</label></td>
									<td><input class="form-control" type="text" name="title" maxlength="250" data-provide="typeahead" data-items="8" data-source="[<?php echo $list_title;?>]" placeholder="Nhập công việc..." value="<?php echo stripslashes($row['title']);?>" required="required" autocomplete="off"></td>
								</tr>
								<tr>
									<td><label class="form-lb-tp">Mức độ ưu tiên:</label></td>
									<td>
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
									<td><label class="form-lb-tp">Địa điểm:</label></td>
									<td><input class="form-control" type="text" name="address" value="<?php echo stripslashes($row['address']);?>" maxlength="250" data-provide="typeahead" data-items="8" data-source="[<?php echo $list_address;?>]" placeholder="Nhập nơi làm việc..." required="required" autocomplete="off"></td>
								</tr>
								<tr>
									<td><label class="form-lb-tp">Bắt đầu:</label></td>
									<td><input style="max-width: 140px;" class="form-control" id="time_start" type="text" name="start_time" value="<?php echo $date->vnDateTime($row['start_time']);?>" maxlength="16" required="required" autocomplete="off"></td>
								</tr>
								<tr>
									<td><label class="form-lb-tp">Kết thúc:</label></td>
									<td><input style="max-width: 140px;" class="form-control" id="time_end" type="text" name="end_time" value="<?php echo $date->vnDateTime($row['end_time']);?>" maxlength="16" required="required" autocomplete="off" readonly></td>
								</tr>
								<tr>
									<td><label class="form-lb-tp">Têp đính kèm:</label></td>
									<td><input class="form-control file" type="file" name="files" data-show-upload="false" data-show-preview="false" data-max-file-count="1" value="<?php echo $file;?>" placeholder="Chọn file đính kèm..."></td>
								</tr>
								<tr>
									<td class="ver-top"><label class="form-lb-tp">Ghi chú:</label></td>
									<td>
										<textarea class="form-control" name="note" rows="5"><?php echo stripslashes($row['note']);?></textarea>
									</td>
								</tr>
							</table>
						</div>
					</div>
					<div class="modal-footer">
						<input type="submit" name="add" class="btn btn-primary btn-sm" value="Lưu lại">
						<input type="reset" class="btn btn-warning btn-sm" value="Nhập lại">
						<input type="button" class="btn btn-danger btn-sm" data-dismiss="modal" value="Đóng">
					</div>
				</div>
			</form>
			<script>
				$('.selectpicker').selectpicker();
				$('.file').fileinput({
					<?php if($file !='') echo 'initialPreview: ["' . $file . '"]'; ?>
				});
				jQuery(function(){
					$('#time_start').datetimepicker({
						format:'d/m/Y H:i',
						lang:'vi',
						onShow:function( ct ){
							this.setOptions({
								minDate:false,
								maxDate:$('#time_end').val()?$('#time_end').val():false,
								format:'d/m/Y H:i',
								formatDate:'d/m/Y H:i'
							})
						}
					});
				});
			</script>
		</div>
	<?php
	}
} else echo 'Error--';