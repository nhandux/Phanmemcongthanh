<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if(isset($_POST['id'])) {
	$type   = $_POST['type'];
	$id     = $_POST['id']+0;
	$date   = new DateClass();
	$personnel = $account["id"];
	$total_extend = $extend_success = $total_matches = $total_supervisor_matches = 0;

	$db->table = "calendar_extend";
	$db->condition = "`calendar` = $id";
	$db->order = "`created_time` ASC";
	$db->limit = "";
	$rows = $db->select();
	$total_extend = $db->RowCount;
	if($total_extend>0) {
		foreach($rows as $row) {
			if($row['status']==1) {
				$extend_success++;
				if ($row['complete']==1) {
					$total_matches += $row['matches'];
					$total_supervisor_matches += $row['supervisor_matches'];
				} else {
					$total_matches -= $row['matches'];
					$total_supervisor_matches -= $row['supervisor_matches'];
				}
			}
		}
	}

	$db->table = "calendar";
	$db->condition = "`calendar_id` = $id AND `status` = 1";
	$db->order = "";
	$db->limit = 1;
	$rows = $db->select();
	foreach($rows as $row) {
		if($total_extend>0 || $row['report_time']>$row['end_time']) {
			$total_matches -= $row['to_matches'];
			$total_supervisor_matches -= $row['supervisor_matches'];
		} elseif($row['status']==1) {
			$total_matches += $row['to_matches'];
			$total_supervisor_matches += $row['supervisor_matches'];
		}
	?>
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel"><i class="fa fa-calendar"></i> &nbsp;Báo cáo công việc</h4>
			</div>
			<div class="modal-body">
				<div class="form-responsive">
					<input type="hidden" name="id" value="<?php echo $id;?>">
					<table class="table table-no-border table-ol-3w table-hover" style="max-width: 600px;">
						<tr>
							<td width="180px"><label class="form-lb-tp">Tên công việc:</label></td>
							<td><label><?php echo stripslashes($row['title']);?></label></td>
						</tr>
						<tr>
							<td><label class="form-lb-tp">Bắt đầu:</label></td>
							<td><label><?php echo $date->vnFull($row['start_time']);?></label></td>
						</tr>
						<tr>
							<td><label class="form-lb-tp">Kết thúc:</label></td>
							<td><label><?php echo $date->vnFull($row['end_time']);?></label></td>
						</tr>
						<tr>
							<td><label class="form-lb-tp">Gia hạn:</label></td>
							<td><span class="text-extend lg-td"><?php if($total_extend>0 ) echo $extend_success . ' (lần được duyệt)/ '; echo $total_extend . ' (lần)';?></span></td>
						</tr>
						<tr>
							<td><label class="form-lb-tp">Kết quả:</label></td>
							<td><span class="lb-status stt-5">ĐÃ HOÀN THÀNH</span></td>
						</tr>
						<tr>
							<td><label class="form-lb-tp">Tệp đính kèm:</label></td>
							<td>
								<?php
								if(file_exists(ROOT_DIR  . DS . 'uploads' . DS . 'document' . DS . 'calendar' . DS . $row['report_file'])&&($row['report_file']!='')) echo '<a target="_blank" href="' . HOME_URL_LANG . '/uploads/document/calendar/' . $row['report_file'] . '" data-toggle="tooltip" data-placement="top" title="Tải tệp xuống"><i class="fa fa-paperclip fa-lg"></i> (Tải xuống)</a>';
								else echo '&nbsp;';
								?>
							</td>
						</tr>
						<tr>
							<td><label class="form-lb-tp">Ghi chú:</label></td>
							<td><?php echo str_replace(PHP_EOL, '<br>', stripslashes($row['report_note']));?></td>
						</tr>
						<?php if($row['type']==0) { ?>
						<tr>
							<td><label class="form-lb-tp">Thưởng/Phạt người nhận:</label></td>
							<td><label><?php echo $total_matches;?></label> (điểm)</td>
						</tr>
						<?php if($type=='manage' || $row['supervisor']==$personnel) { ?>
						<tr>
							<td><label class="form-lb-tp">Thưởng/Phạt giám sát:</label></td>
							<td><label><?php echo $total_supervisor_matches;?></label> (điểm)</td>
						</tr>
						<?php }} ?>
					</table>
				</div>
			</div>
			<div class="modal-footer">
				<input type="button" class="btn btn-primary btn-sm" onclick="return open_calendar('<?php echo $type;?>', <?php echo $id;?>);" value="Quay lại">
				<input type="button" class="btn btn-danger btn-sm" data-dismiss="modal" value="Đóng">
			</div>
		</div>
	</div>
	<?php
	}
} else echo 'Error--';