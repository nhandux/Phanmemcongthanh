<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if(isset($_POST['id'])) {
	$type   = $_POST['type'];
	$id     = $_POST['id']+0;
	$date   = new DateClass();
	$personnel = $account["id"];
	if($type=='confirm') {
		$cal_title = $cal_start_time = $cal_end_time = '';
		$cal_type = 0;
		$db->table = "calendar";
		$db->condition = "`calendar_id` = $id";
		$db->order = "";
		$db->limit = 1;
		$rows = $db->select();
		foreach($rows as $row) {
			$cal_title = stripslashes($row['title']);
			$cal_start_time = $date->vnFull($row['start_time']);
			$cal_end_time = $date->vnFull($row['end_time']);
			$cal_type = $row['type'];
		}

		if($db->RowCount>0) {
		?>
		<div class="modal-dialog">
			<form id="_form_extend" method="post">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel"><i class="fa fa-calendar"></i> &nbsp;Xác nhận gia hạn công việc</h4>
					</div>
					<div class="modal-body">
						<div class="form-responsive">
							<input type="hidden" name="id" value="<?php echo $id;?>">
							<table class="table table-no-border table-ol-3w table-hover" style="max-width: 600px;">
								<tr>
									<td width="110px"><label class="form-lb-tp">Tên công việc:</label></td>
									<td><label><?php echo $cal_title;?></label></td>
								</tr>
								<tr>
									<td><label class="form-lb-tp">Bắt đầu:</label></td>
									<td><label><?php echo $cal_start_time;?></label></td>
								</tr>
								<tr>
									<td><label class="form-lb-tp">Kết thúc:</label></td>
									<td><label><?php echo $cal_end_time;?></label></td>
								</tr>
								<tr>
									<td colspan="2" style="background-color: #f7f4c9; padding: 10px; text-align: center; text-transform: uppercase;">Gia hạn</td>
								</tr>
								<?php
								$db->table = "calendar_extend";
								$db->condition = "`calendar` = $id";
								$db->order = "`created_time` ASC";
								$db->limit = "";
								$rows = $db->select();
								$total = $db->RowCount;
								$count = 0;
								foreach($rows as $row) {
									$count++;
								?>
								<tr>
									<td style="background-color: #f7f4c9; border-bottom: 1px solid #ffffff; text-align: right; vertical-align: top;"><label class="form-lb-tp" style="text-decoration: underline;">Lần <?php echo $count;?>:</label></td>
									<td style="border-bottom: 1px solid #f7f4c9;">
										<p>- Kết thúc (đề nghị): <label><?php echo $date->vnFull($row['propose_time']);?></label></p>
										<p>- Têp đính kèm:
											<?php
											if(file_exists(ROOT_DIR  . DS . 'uploads' . DS . 'document' . DS . 'calendar' . DS . $row['file'])&&($row['file']!='')) echo '<a target="_blank" href="' . HOME_URL_LANG . '/uploads/document/calendar/' . $row['file'] . '" data-toggle="tooltip" data-placement="top" title="Tải tệp xuống"><i class="fa fa-paperclip fa-lg"></i> (Tải xuống)</a>';
											else echo '&nbsp;';
											?>
										</p>
										<p>- Lý do gia hạn: <?php echo str_replace(PHP_EOL, '<br>', stripslashes($row['note']));?></p>
										<p>- Trạng thái: <span class="text-extend" data-toggle="tooltip" data-placement="top" title="Trạng thái gia hạn"><?php echo $calendar_extend[$row['status']];?></span></p>
										<?php if($count==$total && $row['status'] == 0) { ?>
										<input type="hidden" name="extend_id" value="<?php echo $row['calendar_extend_id'];?>">		
										<p>- Kết thúc: <label style="max-width: 140px; margin-left: 5px; font-weight: normal;"><input class="form-control input-sm" id="time_extend" type="text" name="extend_time" maxlength="16" required="required" autocomplete="off"></label></p>
										<p>- Yêu cầu: <label style="width: 100%; margin-top: 5px; font-weight: normal;"><textarea class="form-control" name="request" rows="3"></textarea></label></p>
										<?php
											if($cal_type==0) {
												$list_matches = '';
												$db->table = "matches";
												$db->condition = "`is_active` = 1";
												$db->order = "`sort` ASC";
												$db->limit = "";
												$rows = $db->select();
												if($db->RowCount > 0) {
													foreach($rows as $row) {
														$list_matches .= '<option value="' . $row['number'] . '">' . $row['number'] . '</option>';
													}
												}
												echo '<p>- Thưởng/Phạt người nhận: <label style="max-width: 100px; margin-left: 3px; font-weight: normal;"><select name="matches" class="selectpicker" data-live-search="true" data-live-search-placeholder="Tìm..." title="Điểm...">' . $list_matches . '</select></label></p>';
												echo '<p>- Thưởng/Phạt giám sát: <label style="max-width: 100px; margin-left: 20px; font-weight: normal;"><select name="supervisor_matches" class="selectpicker" data-live-search="true" data-live-search-placeholder="Tìm..." title="Điểm...">' . $list_matches . '</select></label></p>';
											}
											echo '<p class="text-right"><button type="button" class="btn btn-success btn-sm" onclick="return extend_calendar(\'_form_extend\', \'agree\');" name="agree" data-toggle="tooltip" data-placement="top" title="Chấp nhận gia hạn"><i class="fa fa-save"></i></button> <button type="button" class="btn btn-danger btn-sm" onclick="return extend_calendar(\'_form_extend\', \'disagree\');" name="disagree" data-toggle="tooltip" data-placement="top" title="Không chấp nhận gia hạn"><i class="fa fa-remove"></i></button></p>';
										} elseif($row['status'] == 1) { ?>
										<p>- Kết thúc (chấp thuận): <label><?php echo $date->vnFull($row['extend_time']);?></label></p>
										<p>- Yêu cầu: <?php echo str_replace(PHP_EOL, '<br>', stripslashes($row['request']));?></p>
										<?php
											if($cal_type==0) {
												echo '<p>- Thưởng/Phạt người nhận: <label style="margin-left: 5px;">' . $row['matches'] . '</label> (điểm)</p>';
												echo '<p>- Thưởng/Phạt giám sát: <label style="margin-left: 24px;">' . $row['supervisor_matches'] . '</label> (điểm)</p>';
											}
										} ?>
									</td>
								</tr>
								<?php } ?>
							</table>
						</div>
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-primary btn-sm" onclick="return open_calendar('manage', <?php echo $id;?>);" value="Quay lại">
						<input type="button" class="btn btn-danger btn-sm" data-dismiss="modal" value="Đóng">
					</div>
				</div>
			</form>
			<script>
				jQuery(function(){
					$('.selectpicker').selectpicker();
					$('#time_extend').datetimepicker({
						format:'d/m/Y H:i',
						lang:'vi',
						onShow:function( ct ){
							this.setOptions({
								minDate:'+01/01/1970',
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
	} else {
		$type_calendar = '';
		if($type=='view_manage') $type_calendar = 'manage';
		else $type_calendar = 'personal';

		$cal_title = $cal_start_time = $cal_end_time = '';
		$cal_type = $supervisor = 0;
		$db->table = "calendar";
		$db->condition = "`calendar_id` = $id";
		$db->order = "";
		$db->limit = 1;
		$rows = $db->select();
		foreach($rows as $row) {
			$cal_title = stripslashes($row['title']);
			$cal_start_time = $date->vnFull($row['start_time']);
			$cal_end_time = $date->vnFull($row['end_time']);
			$cal_type = $row['type'];
			$supervisor = $row['supervisor'];
		}

		if($db->RowCount>0) {
		?>
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel"><i class="fa fa-calendar"></i> &nbsp;Xem gia hạn công việc</h4>
				</div>
				<div class="modal-body">
					<div class="form-responsive">
						<input type="hidden" name="id" value="<?php echo $id;?>">
						<table class="table table-no-border table-ol-3w table-hover" style="max-width: 600px;">
							<tr>
								<td width="110px"><label class="form-lb-tp">Tên công việc:</label></td>
								<td><label><?php echo $cal_title;?></label></td>
							</tr>
							<tr>
								<td><label class="form-lb-tp">Bắt đầu:</label></td>
								<td><label><?php echo $cal_start_time;?></label></td>
							</tr>
							<tr>
								<td><label class="form-lb-tp">Kết thúc:</label></td>
								<td><label><?php echo $cal_end_time;?></label></td>
							</tr>
							<tr>
								<td colspan="2" style="background-color: #f7f4c9; padding: 10px; text-align: center; text-transform: uppercase;">Gia hạn</td>
							</tr>
							<?php
							$db->table = "calendar_extend";
							$db->condition = "`calendar` = $id";
							$db->order = "`created_time` ASC";
							$db->limit = "";
							$rows = $db->select();
							$total = $db->RowCount;
							$count = 0;
							foreach($rows as $row) {
								$count++;
							?>
							<tr>
								<input type="hidden" name="extend_id" value="<?php echo $row['calendar_extend_id'];?>">
								<td style="background-color: #f7f4c9; border-bottom: 1px solid #ffffff; text-align: right; vertical-align: top;"><label class="form-lb-tp" style="text-decoration: underline;">Lần <?php echo $count;?>:</label></td>
								<td style="border-bottom: 1px solid #f7f4c9;">
									<p>- Kết thúc (đề nghị): <label><?php echo $date->vnFull($row['propose_time']);?></label></p>
									<p>- Têp đính kèm:
										<?php
										if(file_exists(ROOT_DIR  . DS . 'uploads' . DS . 'document' . DS . 'calendar' . DS . $row['file'])&&($row['file']!='')) echo '<a target="_blank" href="' . HOME_URL_LANG . '/uploads/document/calendar/' . $row['file'] . '" data-toggle="tooltip" data-placement="top" title="Tải tệp xuống"><i class="fa fa-paperclip fa-lg"></i> (Tải xuống)</a>';
										else echo '&nbsp;';
										?>
									</p>
									<p>- Lý do gia hạn: <?php echo str_replace(PHP_EOL, '<br>', stripslashes($row['note']));?></p>
									<p>- Trạng thái: <span class="text-extend" data-toggle="tooltip" data-placement="top" title="Trạng thái gia hạn"><?php echo $calendar_extend[$row['status']];?></span></p>
									<?php if($row['status'] == 1) { ?>
									<p>- Kết thúc (chấp thuận): <label><?php echo $date->vnFull($row['extend_time']);?></label></p>
									<p>- Yêu cầu: <?php echo str_replace(PHP_EOL, '<br>', stripslashes($row['request']));?></p>
									<?php
										if($cal_type==0) {
											echo '<p>- Thưởng/Phạt người nhận: <label style="margin-left: 5px;">' . $row['matches'] . '</label> (điểm)</p>';
											if($type=='view_manage' || $personnel==$supervisor) echo '<p>- Thưởng/Phạt giám sát: <label style="margin-left: 24px;">' . $row['supervisor_matches'] . '</label> (điểm)</p>';
										}
									} ?>
								</td>
							</tr>
							<?php } ?>
						</table>
					</div>
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-primary btn-sm" onclick="return open_calendar('<?php echo $type_calendar;?>', <?php echo $id;?>);" value="Quay lại">
					<input type="button" class="btn btn-danger btn-sm" data-dismiss="modal" value="Đóng">
				</div>
			</div>
		</div>
		<?php
		}
	}
} else echo 'Error--';